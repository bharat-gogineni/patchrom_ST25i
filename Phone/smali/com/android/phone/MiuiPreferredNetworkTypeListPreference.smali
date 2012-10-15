.class public Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;
.super Landroid/preference/PreferenceActivity;
.source "MiuiPreferredNetworkTypeListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mCurrentNetworkType:I

.field private mHandler:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->handleClick(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private checkRadioPreference(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 112
    .local v1, pref:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 114
    .end local v1           #pref:Lmiui/preference/RadioButtonPreference;
    :cond_0
    return-void
.end method

.method private getAllRadioPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    instance-of v2, p1, Lmiui/preference/RadioButtonPreference;

    if-eqz v2, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 102
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 103
    .local v1, pg:Landroid/preference/PreferenceGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleClick(I)V
    .locals 4
    .parameter "networkType"

    .prologue
    .line 162
    iput p1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    .line 163
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    iget-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 166
    return-void
.end method

.method private isChineseIccOperator()Z
    .locals 2

    .prologue
    .line 254
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, iccOperatorNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIccOperatorCM()Z
    .locals 3

    .prologue
    .line 267
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, iccOperatorNumber:Ljava/lang/String;
    const-string v1, "46000"

    invoke-static {}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isIccOperatorEmpty()Z
    .locals 2

    .prologue
    .line 261
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, iccOperatorNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    new-instance v2, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;)V

    iput-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    .line 58
    const v2, 0x7f05001d

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 62
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "network_type_list_global"

    invoke-static {v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 67
    .local v0, phoneType:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_MIONE_PLUS_CDMA:Z

    if-nez v2, :cond_1

    .line 68
    const-string v2, "network_type_list_global"

    invoke-static {v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 69
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 70
    const-string v2, "network_type_list_gsm_umts"

    invoke-static {v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 80
    :cond_1
    :goto_0
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE_CT_CUSTOMIZATION:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->isChineseIccOperator()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->isIccOperatorEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    :cond_3
    const-string v2, "network_type_list_gsm_umts"

    invoke-static {v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 86
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->isIccOperatorCM()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    const-string v2, "2"

    invoke-static {v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 91
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 93
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 94
    return-void

    .line 71
    :cond_6
    if-ne v0, v4, :cond_7

    .line 72
    const-string v2, "network_type_list_cdma"

    invoke-static {v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 74
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 242
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 243
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 245
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, networkType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 137
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0373

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0370

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;-><init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$2;-><init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;-><init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->handleClick(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 130
    return-void
.end method
