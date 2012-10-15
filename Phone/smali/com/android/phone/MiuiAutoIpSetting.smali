.class public Lcom/android/phone/MiuiAutoIpSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiAutoIpSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

.field private mAutoIpEnable:Landroid/preference/CheckBoxPreference;

.field private mAutoIpExceptions:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

.field private mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

.field private mTextIpPrefix:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiAutoIpSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiAutoIpSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiAutoIpSetting;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiAutoIpSetting;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiAutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    return-void
.end method

.method private alertToInputCurrentAreaCode()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0279

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c027a

    new-instance v2, Lcom/android/phone/MiuiAutoIpSetting$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiAutoIpSetting$2;-><init>(Lcom/android/phone/MiuiAutoIpSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 203
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 204
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 210
    :cond_0
    return-void

    .line 203
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 129
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->addPreferencesFromResource(I)V

    .line 131
    const-string v3, "button_autoip"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "button_autoip"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v4

    .line 134
    .local v1, isAutoIpEnabled:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const-string v3, "button_text_ip_prefix"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    .line 138
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v3, "button_text_current_areacode"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    .line 141
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    const-string v3, "button_add_zero_prefix"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    .line 144
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "button_add_zero_prefix"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v4

    .line 146
    .local v0, isAddZeroPrefixEnabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string v3, "button_auto_ip_support_local_numbers"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "button_auto_ip_support_local_numbers"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 152
    .local v2, isSupportLocalNumbers:Z
    :goto_2
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v3, "button_autoip_exceptions"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpExceptions:Landroid/preference/Preference;

    .line 156
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 157
    return-void

    .end local v0           #isAddZeroPrefixEnabled:Z
    .end local v1           #isAutoIpEnabled:Z
    .end local v2           #isSupportLocalNumbers:Z
    :cond_0
    move v1, v5

    .line 132
    goto :goto_0

    .restart local v1       #isAutoIpEnabled:Z
    :cond_1
    move v0, v5

    .line 144
    goto :goto_1

    .restart local v0       #isAddZeroPrefixEnabled:Z
    :cond_2
    move v2, v5

    .line 150
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 182
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 183
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 52
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_2

    move-object v2, p2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, ipPrefix:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_0
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autoip_prefix"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v6, 0x7f0c0335

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/MiuiAutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    .end local v2           #ipPrefix:Ljava/lang/String;
    .end local p2
    :cond_1
    :goto_0
    return v4

    .line 62
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_4

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 64
    .local v1, flag:Z
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_autoip"

    if-eqz v1, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_areacode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiAutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 73
    .end local v1           #flag:Z
    .restart local p2
    :cond_4
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_6

    move-object v0, p2

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, currentAreaCode:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_areacode"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoIpSetting;->alertToInputCurrentAreaCode()V

    goto :goto_0

    .line 81
    :cond_5
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v6, 0x7f0c02f5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/MiuiAutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    .end local v0           #currentAreaCode:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_8

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 85
    .restart local v1       #flag:Z
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_add_zero_prefix"

    if-eqz v1, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 87
    .end local v1           #flag:Z
    .restart local p2
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 89
    .restart local v1       #flag:Z
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_auto_ip_support_local_numbers"

    if-eqz v1, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 98
    .local v2, preferenceClick:Z
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p2, v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 100
    .local v1, popupDialog:Landroid/app/Dialog;
    instance-of v3, v1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 101
    check-cast v0, Landroid/app/AlertDialog;

    .line 102
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/android/phone/MiuiAutoIpSetting$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/MiuiAutoIpSetting$1;-><init>(Lcom/android/phone/MiuiAutoIpSetting;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #popupDialog:Landroid/app/Dialog;
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, defaultIpPrefix:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoip_prefix"

    invoke-static {v3, v4, v1}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, ipPrefix:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v4, 0x7f0c0335

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MiuiAutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_areacode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, currentAreaCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v4, 0x7f0c02f4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpExceptions:Landroid/preference/Preference;

    invoke-static {p0}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v4, 0x7f0c02f5

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MiuiAutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
