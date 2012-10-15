.class public Lcom/android/phone/MiuiSettings;
.super Lcom/android/phone/Settings;
.source "MiuiSettings.java"


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkType:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/phone/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCdmaOptions(Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CdmaOptions;
    .locals 1
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 50
    new-instance v0, Lcom/android/phone/MiuiCdmaOptions;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/MiuiCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method protected createGsmUmtsOptions(Landroid/preference/PreferenceScreen;)Lcom/android/phone/GsmUmtsOptions;
    .locals 1
    .parameter "prefScreen"

    .prologue
    .line 45
    new-instance v0, Lcom/android/phone/MiuiGsmUmtsOptions;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MiuiGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    return-object v0
.end method

.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f05001c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/phone/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/MiuiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 59
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 60
    const-string v1, "button_mms_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 66
    :cond_0
    const-string v1, "button_preferred_network_type_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    .line 67
    iget-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    const v2, 0x7f0c03ba

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 23
    iget-object v2, p0, Lcom/android/phone/MiuiSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 24
    iget-object v2, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    iget-object v2, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/MiuiSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/android/phone/MiuiSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_enable_mms"

    iget-object v4, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    :cond_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-super {p0}, Lcom/android/phone/Settings;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "always_enable_mms"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/MiuiSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 79
    goto :goto_0

    :cond_3
    move v1, v2

    .line 86
    goto :goto_1
.end method
