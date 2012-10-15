.class public Lcom/android/phone/MiuiCallRecordSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiCallRecordSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

.field private mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

.field private mWhiteList:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallRecordSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private createScenarios()V
    .locals 8

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallRecordSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "button_auto_record_scenario"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 84
    .local v3, scenario:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallRecordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, scenarioStrings:[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/MiuiCallRecordSetting$1;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/MiuiCallRecordSetting$1;-><init>(Lcom/android/phone/MiuiCallRecordSetting;[Ljava/lang/String;)V

    .line 99
    .local v1, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 100
    new-instance v2, Lmiui/preference/RadioButtonPreference;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    .local v2, pref:Lmiui/preference/RadioButtonPreference;
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v2, v1}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    iget-object v5, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v2           #pref:Lmiui/preference/RadioButtonPreference;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallRecordSetting;->addPreferencesFromResource(I)V

    .line 57
    const-string v0, "button_auto_record_call"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v0, "button_auto_record_scenario"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 60
    const-string v0, "button_auto_record_whitelist"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    .line 61
    invoke-direct {p0}, Lcom/android/phone/MiuiCallRecordSetting;->createScenarios()V

    .line 63
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 111
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 112
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    iget-object v3, p0, Lcom/android/phone/MiuiCallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    move-object v0, p2

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .local v0, enable:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v4}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 47
    .end local v0           #enable:Ljava/lang/Boolean;
    :cond_1
    :goto_0
    return v2

    .line 44
    .restart local v0       #enable:Ljava/lang/Boolean;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 70
    iget-object v2, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    iget-object v3, p0, Lcom/android/phone/MiuiCallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 71
    iget-object v2, p0, Lcom/android/phone/MiuiCallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v2, v0}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v3}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    invoke-static {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/phone/MiuiCallRecordSetting;->mWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method
