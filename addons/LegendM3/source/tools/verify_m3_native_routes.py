"""Capture native LTM/ASF counters across Photo and the five M3 zooms."""
import json
import subprocess
import time
import re
import xml.etree.ElementTree as ET
from datetime import datetime, timezone
from pathlib import Path

import frida

ROOT = Path(__file__).resolve().parents[1]
REMOTE = "/odm/lib64/camera/plugins/libphoenix_m3_aec-runtime.so"


def adb(*args):
    subprocess.run(["adb", *map(str, args)], check=True, stdout=subprocess.DEVNULL)


pid = int(subprocess.check_output(
    ["adb", "shell", "pidof", "vendor.qti.camera.provider-service_64"]
))
session = frida.get_usb_device(timeout=10).attach(pid)
script = session.create_script(r'''
const matches=Process.enumerateModules().filter(m=>m.path==='/odm/lib64/camera/plugins/libphoenix_m3_aec-runtime.so');
if(matches.length!==1)throw Error('runtime module count '+matches.length);
const ltm=new NativeFunction(matches[0].getExportByName('m3_ltm_statistics'),'void',['pointer']);
const asf=new NativeFunction(matches[0].getExportByName('m3_asf_statistics'),'void',['pointer']);
rpc.exports={snapshot(){const p=Memory.alloc(64);ltm(p);const a=[0,1,2,3,4,5,6,7].map(i=>p.add(i*8).readU64().toString());p.writeByteArray(new Uint8Array(64));asf(p);const b=[0,1,2,3,4,5].map(i=>p.add(i*8).readU64().toString());return {ltm:a,asf:b};}};
''')
script.load()
rows = []


def snapshot(label):
    time.sleep(2)
    rows.append({"label": label, **script.exports_sync.snapshot()})


def tap_mode(text):
    remote = "/sdcard/phoenix_route_ui.xml"
    local = ROOT / "evidence" / "phoenix_route_ui.xml"
    adb("shell", "uiautomator", "dump", remote)
    subprocess.run(["adb", "pull", remote, str(local)], check=True,
                   stdout=subprocess.DEVNULL)
    matches = [n for n in ET.parse(local).getroot().iter()
               if n.attrib.get("text") == text]
    assert len(matches) == 1, (text, len(matches))
    values = list(map(int, re.findall(r"\d+", matches[0].attrib["bounds"])))
    adb("shell", "input", "tap", (values[0] + values[2]) // 2,
        (values[1] + values[3]) // 2)


try:
    adb("shell", "am", "start", "-n", "com.android.camera/.Camera")
    snapshot("initial")
    # Mode strip: Photo and M3 centers on the verified 1440x3200 layout.
    tap_mode("拍照")
    snapshot("photo")
    snapshot("photo_settled")
    tap_mode("徕卡一瞬")
    snapshot("m3")
    for label, x in (("0.5", 400), ("1", 570), ("2", 720),
                     ("3.2", 870), ("5", 1040)):
        adb("shell", "input", "tap", x, 2258)
        snapshot("zoom_" + label)
finally:
    script.unload()
    session.detach()

assert int(rows[-1]["ltm"][0]) == 2
assert int(rows[-1]["ltm"][7]) == 0
assert int(rows[-1]["asf"][5]) == 0
assert int(rows[1]["ltm"][2]) > int(rows[0]["ltm"][2]), rows
assert int(rows[2]["asf"][0]) == int(rows[1]["asf"][0]), rows
ultra_delta = int(rows[4]["asf"][1]) - int(rows[3]["asf"][1])
assert ultra_delta > 0, rows
assert int(rows[-1]["asf"][2]) >= int(rows[3]["asf"][2]), rows
record = {"status": "passed", "pid": pid, "runtime": REMOTE,
          "ultra_apply_delta": ultra_delta, "rows": rows}
output = ROOT / "evidence" / ("native_ltm_asf_routes_" +
    datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ") + ".json")
output.write_text(json.dumps(record, indent=2) + "\n", encoding="utf-8")
print(output)
print(json.dumps({"status": "passed", "pid": pid,
                  "ultra_apply_delta": ultra_delta,
                  "final_ltm": rows[-1]["ltm"],
                  "final_asf": rows[-1]["asf"]}))
