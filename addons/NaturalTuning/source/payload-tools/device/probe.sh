#!/system/bin/sh
dumpsys media.camera > /data/local/tmp/mc.txt 2>/dev/null
for t in 'stylizationType (81c20007)' 'tuning.mode.TuningMode (80210000)' 'colorCorrection.transform (00001)'; do
  grep -n -A5 -F "$t" /data/local/tmp/mc.txt | head -6
done
