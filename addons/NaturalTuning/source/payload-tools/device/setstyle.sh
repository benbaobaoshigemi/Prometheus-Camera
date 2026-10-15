#!/system/bin/sh
# usage: setstyle.sh <0|1>   0=VIBR 1=AUTH ; keeps a one-time backup
F=/data/data/com.android.camera/shared_prefs/camera_settings_simple_mode_local_0.xml
[ -f /data/local/tmp/cv_pref_backup.xml ] || cp -p "$F" /data/local/tmp/cv_pref_backup.xml
sed -i "s#<string name=\"pref_camera_cv_type_key163\">[01]</string>#<string name=\"pref_camera_cv_type_key163\">$1</string>#" "$F"
grep -o '<string name="pref_camera_cv_type_key163">[01]</string>' "$F"
