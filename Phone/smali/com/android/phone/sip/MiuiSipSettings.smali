.class public Lcom/android/phone/sip/MiuiSipSettings;
.super Lcom/android/phone/sip/SipSettings;
.source "MiuiSipSettings.java"


# instance fields
.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mListView:Landroid/widget/ListView;

.field private mfooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/sip/MiuiSipSettings;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/phone/sip/MiuiSipSettings;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;

    return-object v0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 88
    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method private registerForSipCallOptionPreference()V
    .locals 3

    .prologue
    .line 60
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_sip_call_options"

    invoke-static {v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 62
    const-string v0, "button_sip_call_options_wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/phone/sip/MiuiSipSettings$1;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/MiuiSipSettings$1;-><init>(Lcom/android/phone/sip/MiuiSipSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 80
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_sip_call_options_wifi_only"

    invoke-static {v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 66
    const-string v0, "button_sip_call_options"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    goto :goto_0
.end method


# virtual methods
.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f050023

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/phone/sip/SipSettings;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/android/phone/sip/MiuiSipSettings;->registerForSipCallOptionPreference()V

    .line 38
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    .line 41
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 102
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/sip/SipSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0}, Lcom/android/phone/sip/SipSettings;->onResume()V

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 53
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 55
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected retrieveSipLists()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V

    .line 111
    new-instance v0, Lcom/android/phone/sip/MiuiSipSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/MiuiSipSettings$2;-><init>(Lcom/android/phone/sip/MiuiSipSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/MiuiSipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method protected startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mProfile:Landroid/net/sip/SipProfile;

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/MiuiSipEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v1, "sip_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/sip/MiuiSipSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method
