.class public Lcom/android/settings/MiuiWirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiWirelessSettings.java"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mBeamSettings:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcSettings:Landroid/preference/Preference;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mVpnSettings:Landroid/preference/Preference;

.field private mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

.field private mWimaxSettings:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/MiuiWirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiWirelessSettings$1;-><init>(Lcom/android/settings/MiuiWirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/settings/MiuiWirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiWirelessSettings$2;-><init>(Lcom/android/settings/MiuiWirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->refreshPreference()V

    return-void
.end method

.method private refreshPreference()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 178
    .local v0, isAirplaneModeOn:Z
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mWimaxSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->mWimaxSettings:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mVpnSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->mVpnSettings:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 185
    iget-object v4, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcSettings:Landroid/preference/Preference;

    if-nez v0, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mBeamSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mBeamSettings:Landroid/preference/Preference;

    if-nez v0, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 179
    goto :goto_0

    :cond_5
    move v1, v3

    .line 182
    goto :goto_1

    :cond_6
    move v1, v3

    .line 185
    goto :goto_2

    :cond_7
    move v2, v3

    .line 188
    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v12, 0x7f05005f

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, activity:Landroid/app/Activity;
    const-string v12, "toggle_nfc"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 100
    .local v6, nfc:Landroid/preference/CheckBoxPreference;
    const-string v12, "android_beam_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 102
    .local v1, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v12, "toggle_wifi_p2p"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 104
    .local v11, wifiP2p:Landroid/preference/CheckBoxPreference;
    new-instance v12, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v12, v0, v6, v1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_toggleable_radios"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, toggleable:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x6090008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 112
    .local v3, isWimaxEnabled:Z
    if-nez v3, :cond_7

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 114
    .local v9, root:Landroid/preference/PreferenceScreen;
    const-string v12, "wimax_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 115
    .local v8, ps:Landroid/preference/Preference;
    if-eqz v8, :cond_0

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    .end local v8           #ps:Landroid/preference/Preference;
    .end local v9           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const-string v12, "wifi"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 124
    :cond_1
    const-string v12, "vpn_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mVpnSettings:Landroid/preference/Preference;

    .line 128
    :cond_2
    if-eqz v10, :cond_3

    const-string v12, "bluetooth"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 133
    :cond_3
    if-eqz v10, :cond_4

    const-string v12, "nfc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 134
    :cond_4
    const-string v12, "toggle_nfc"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcSettings:Landroid/preference/Preference;

    .line 135
    const-string v12, "android_beam_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mBeamSettings:Landroid/preference/Preference;

    .line 139
    :cond_5
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 140
    iget-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v12, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 146
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.wifi.direct"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "wifi_p2p_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :goto_1
    const-string v12, "proxy_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 155
    .local v5, mGlobalProxy:Landroid/preference/Preference;
    const-string v12, "device_policy"

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 158
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    const-string v12, "connectivity"

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 164
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_b

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "tether_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/MiuiWirelessSettings;->refreshPreference()V

    .line 172
    new-instance v12, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v13, p0, Lcom/android/settings/MiuiWirelessSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v12, v0, v13}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 173
    iget-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 174
    return-void

    .line 117
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #mGlobalProxy:Landroid/preference/Preference;
    :cond_7
    if-eqz v10, :cond_8

    const-string v12, "wimax"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v3, :cond_0

    .line 119
    :cond_8
    const-string v12, "wimax_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mWimaxSettings:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 150
    :cond_9
    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-direct {v12, v0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/MiuiWirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    goto :goto_1

    .line 159
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #mGlobalProxy:Landroid/preference/Preference;
    :cond_a
    const/4 v12, 0x0

    goto :goto_2

    .line 167
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_b
    const-string v12, "tether_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/MiuiWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 168
    .local v7, p:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->pause()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->resume()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/MiuiWirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/MiuiWirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    return-void
.end method
