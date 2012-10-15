.class public Lcom/android/phone/MiuiAutoAnswerSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiAutoAnswerSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createScenarios()V
    .locals 9

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoAnswerSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_auto_answer_scenario"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 58
    .local v3, scenario:I
    const-string v6, "button_auto_answer_scenario"

    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiAutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreferenceCategory;

    .line 59
    .local v5, scenarios:Lmiui/preference/RadioButtonPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoAnswerSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, scenarioStrings:[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/MiuiAutoAnswerSetting$2;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/MiuiAutoAnswerSetting$2;-><init>(Lcom/android/phone/MiuiAutoAnswerSetting;[Ljava/lang/String;)V

    .line 73
    .local v1, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 74
    new-instance v2, Lmiui/preference/RadioButtonPreference;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    .local v2, pref:Lmiui/preference/RadioButtonPreference;
    aget-object v6, v4, v0

    invoke-virtual {v2, v6}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v2, v1}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    invoke-virtual {v5, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v2           #pref:Lmiui/preference/RadioButtonPreference;
    :cond_0
    invoke-virtual {v5, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAutoAnswerSetting;->addPreferencesFromResource(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoAnswerSetting;->createScenarios()V

    .line 39
    new-instance v0, Lcom/android/phone/MiuiAutoAnswerSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiAutoAnswerSetting$1;-><init>(Lcom/android/phone/MiuiAutoAnswerSetting;)V

    .line 48
    .local v0, listener:Landroid/preference/Preference$OnPreferenceChangeListener;
    const-string v2, "button_auto_answer"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 49
    .local v1, switcher:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 52
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
