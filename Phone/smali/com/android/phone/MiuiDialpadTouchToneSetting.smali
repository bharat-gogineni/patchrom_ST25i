.class public Lcom/android/phone/MiuiDialpadTouchToneSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiDialpadTouchToneSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialpadTouchToneEnable:Landroid/preference/CheckBoxPreference;

.field private mDialpadTouchToneSetting:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 26
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->addPreferencesFromResource(I)V

    .line 28
    const-string v0, "button_dial_pad_touch_tone_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneEnable:Landroid/preference/CheckBoxPreference;

    .line 29
    iget-object v0, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    const-string v0, "button_tone_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    .line 32
    iget-object v0, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 61
    iget-object v3, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 62
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 63
    .local v1, value:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    .end local v1           #value:I
    :goto_0
    return v2

    .line 66
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    move-object v0, p2

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, tone:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dial_pad_touch_tone"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #tone:Ljava/lang/String;
    :cond_2
    move v2, v1

    .line 77
    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, value:I
    iget-object v3, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneEnable:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/MiuiDialpadTouchToneSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dial_pad_touch_tone"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MiuiDialpadTouchToneSetting;->mDialpadTouchToneSetting:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    return-void

    :cond_0
    move v1, v2

    .line 40
    goto :goto_0
.end method
