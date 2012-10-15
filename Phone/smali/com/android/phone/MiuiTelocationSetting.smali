.class public Lcom/android/phone/MiuiTelocationSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiTelocationSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAutoCountryCode:Landroid/preference/CheckBoxPreference;

.field private mCountryCode:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mShowLocationEnable:Landroid/preference/CheckBoxPreference;

.field private mTextCountryCode:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiTelocationSetting;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiTelocationSetting;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiTelocationSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiTelocationSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiTelocationSetting;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    .line 167
    const-string v0, "persist.radio.countrycode"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0c02fb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiTelocationSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/phone/MiuiTelocationSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 184
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 185
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/MiuiTelocationSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MiuiTelocationSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 191
    :cond_0
    return-void

    .line 184
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiTelocationSetting;->addPreferencesFromResource(I)V

    .line 121
    const-string v0, "button_enable_telocation"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiTelocationSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v0, "button_auto_country_code"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiTelocationSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v0, "button_text_default_contacts_countrycode"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiTelocationSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    .line 125
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 152
    :pswitch_0
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const v5, 0x7f0c02f0

    const v6, 0x104000a

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 51
    iget-object v4, p0, Lcom/android/phone/MiuiTelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 52
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 53
    .local v1, enable:I
    :cond_0
    iget-object v4, p0, Lcom/android/phone/MiuiTelocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_telocation"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    .end local v1           #enable:I
    :cond_1
    :goto_0
    return v3

    .line 57
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiTelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_4

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 59
    .restart local v1       #enable:I
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiTelocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_country_code"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 63
    .end local v1           #enable:I
    .restart local p2
    :cond_4
    iget-object v4, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    if-ne p1, v4, :cond_1

    move-object v2, p2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, inCountryCode:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 66
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_5
    :goto_1
    move-object v0, v2

    .line 73
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 74
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 75
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c02ee

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/MiuiTelocationSetting$2;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/MiuiTelocationSetting$2;-><init>(Lcom/android/phone/MiuiTelocationSetting;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/phone/MiuiTelocationSetting$1;

    invoke-direct {v6, p0}, Lcom/android/phone/MiuiTelocationSetting$1;-><init>(Lcom/android/phone/MiuiTelocationSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 68
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_6
    const-string v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 91
    .restart local v0       #countryCode:Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiTelocationSetting;->setCountryCode(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c02ef

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/MiuiTelocationSetting$3;

    invoke-direct {v5, p0}, Lcom/android/phone/MiuiTelocationSetting$3;-><init>(Lcom/android/phone/MiuiTelocationSetting;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 105
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/MiuiTelocationSetting;->setCountryCode(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v3, p0, Lcom/android/phone/MiuiTelocationSetting;->mShowLocationEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiTelocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_telocation"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/phone/MiuiTelocationSetting;->mAutoCountryCode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiTelocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_country_code"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    const-string v0, "persist.radio.countrycode"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;

    const v3, 0x7f0c02fb

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiTelocationSetting;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/MiuiTelocationSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    return-void

    :cond_1
    move v0, v2

    .line 132
    goto :goto_0

    :cond_2
    move v0, v2

    .line 136
    goto :goto_1
.end method
