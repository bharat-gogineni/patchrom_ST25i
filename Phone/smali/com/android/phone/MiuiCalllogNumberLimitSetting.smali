.class public Lcom/android/phone/MiuiCalllogNumberLimitSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiCalllogNumberLimitSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

.field private mCallLogLimit:Landroid/preference/Preference;

.field private mCallLogLimitListener:Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/android/phone/MiuiCalllogNumberLimitSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting$1;-><init>(Lcom/android/phone/MiuiCalllogNumberLimitSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mCallLogLimitListener:Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCalllogNumberLimitSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->setCallLogLimitNumber(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCalllogNumberLimitSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mCallLogLimit:Landroid/preference/Preference;

    return-object v0
.end method

.method private getCallLogLimitNumber()I
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_log_limit_number"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setCallLogLimitNumber(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_log_limit_number"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->addPreferencesFromResource(I)V

    .line 29
    const-string v0, "button_call_log_number_limit"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    const-string v0, "pref_key_call_log_limit"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mCallLogLimit:Landroid/preference/Preference;

    .line 32
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 33
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 99
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 100
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 50
    iget-object v2, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 51
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 52
    .local v0, enable:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_log_number_limit"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    .end local v0           #enable:I
    :cond_0
    return v1

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mCallLogLimit:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/phone/MiuiNumberPickerDialog;

    iget-object v2, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mCallLogLimitListener:Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;

    invoke-direct {p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getCallLogLimitNumber()I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x1388

    const v6, 0x7f0c02b5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/MiuiNumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiNumberPickerDialog;->show()V

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    iget-object v5, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "call_log_number_limit"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    invoke-direct {p0}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getCallLogLimitNumber()I

    move-result v0

    .line 42
    .local v0, callLogLimitNumber:I
    const v2, 0x7f0c02b6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, callLogLimitNumberStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MiuiCalllogNumberLimitSetting;->mCallLogLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 46
    return-void

    .end local v0           #callLogLimitNumber:I
    .end local v1           #callLogLimitNumberStr:Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 37
    goto :goto_0
.end method
