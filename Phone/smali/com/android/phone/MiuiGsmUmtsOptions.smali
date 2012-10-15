.class public Lcom/android/phone/MiuiGsmUmtsOptions;
.super Lcom/android/phone/GsmUmtsOptions;
.source "MiuiGsmUmtsOptions.java"


# instance fields
.field protected mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_prefer_network_type_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MiuiGsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    .line 28
    return-void
.end method

.method public enableScreen()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/phone/GsmUmtsOptions;->enableScreen()V

    .line 41
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f050018

    return v0
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_prefer_network_type_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
