package com.android.camera.fragment.settings;

import android.content.Intent;
import androidx.preference.Preference;

public abstract class b {
    public void onActivityResult(int requestCode, int resultCode, Intent data) {}
    public abstract void addCurrentPreferences();
    public abstract void registerPreferenceListener();
    public abstract int getFragmentTitle();
    public abstract boolean onPreferenceClick(Preference preference);
}
