package com.prometheus.camera.rev;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

/** Read-only prerequisites checked before registering any Addon hooks. */
final class AddonReadiness {
    static String check(File dataDir) throws Exception {
        File folder = new File(dataDir, "files/phoenix-vignette");
        File ready = new File(folder, "addon-ready");
        if (!ready.isFile()) return "root Addon is not ready";
        String boot = new String(Files.readAllBytes(new File("/proc/sys/kernel/random/boot_id").toPath()),
                StandardCharsets.UTF_8).trim();
        String state = new String(Files.readAllBytes(ready.toPath()), StandardCharsets.UTF_8).trim();
        File formula = new File(folder, "colorDark.glsl");
        if (!formula.isFile() || formula.length() == 0 || formula.length() > 16384)
            return "preview formula is missing or invalid";
        return validate(boot, state, Files.readAllBytes(formula.toPath()));
    }

    static String validate(String boot, String state, byte[] formula) {
        // Root verifies init's mount namespace; the camera namespace may hide root mounts.
        if (!("V1.1.0 " + boot + " photo-mounted").equals(state))
            return "root Addon version, boot or photo mount proof does not match";
        if (formula.length == 0 || formula.length > 16384)
            return "preview formula is missing or invalid";
        for (byte value : formula) {
            if (value == 0) return "preview formula contains NUL";
        }
        return null;
    }
}
