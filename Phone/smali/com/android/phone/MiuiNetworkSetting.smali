.class public Lcom/android/phone/MiuiNetworkSetting;
.super Lcom/android/phone/NetworkSetting;
.source "MiuiNetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;
    }
.end annotation


# instance fields
.field private mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

.field private mRegisterNetworkFailedDialog:Landroid/app/AlertDialog;

.field private mStartQueryOnServiceConnected:Z

.field private mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

.field private mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mStartQueryOnServiceConnected:Z

    .line 351
    new-instance v0, Lcom/android/phone/MiuiNetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiNetworkSetting$1;-><init>(Lcom/android/phone/MiuiNetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    return-void
.end method


# virtual methods
.method protected clearList()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 238
    return-void
.end method

.method protected createList(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v6, 0x0

    .line 291
    new-instance v4, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p0, v5}, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;-><init>(Lcom/android/phone/MiuiNetworkSetting;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 292
    iget-object v4, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    const v5, 0x7f0c008f

    invoke-virtual {v4, v5}, Lmiui/preference/RadioButtonPreferenceCategory;->setTitle(I)V

    .line 293
    iget-object v4, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 296
    .local v2, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v0, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, carrier:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiNetworkSetting;->getNetworkSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, spn:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 299
    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiNetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    :goto_1
    invoke-virtual {v0, v6}, Lmiui/preference/RadioButtonPreference;->setPersistent(Z)V

    .line 305
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v5, :cond_0

    .line 306
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 308
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v5, :cond_1

    .line 309
    invoke-virtual {v0, v6}, Lmiui/preference/RadioButtonPreference;->setEnabled(Z)V

    .line 311
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v4, v0}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v4, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiNetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 316
    .end local v0           #carrier:Lmiui/preference/RadioButtonPreference;
    .end local v2           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v3           #spn:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected displayNetworkQueryFailed(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 242
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->showDialogSafely(I)V

    .line 243
    return-void
.end method

.method protected displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "ex"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAvailableNetworkList:Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 131
    :cond_1
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->showDialogSafely(I)V

    goto :goto_0
.end method

.method protected displayNetworkSelectionSucceeded()V
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 250
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method protected getAutoSelectionSummary(Z)Ljava/lang/String;
    .locals 6
    .parameter "flag"

    .prologue
    const v5, 0x7f0c03bf

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, resource:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, operatorName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const v2, 0x7f0c009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .end local v0           #operatorName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 110
    .restart local v0       #operatorName:Ljava/lang/String;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    .end local v0           #operatorName:Ljava/lang/String;
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c03c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNetworkAutoSelectionMode()Z
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_auto_select_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiNetworkSetting;->getNetworkSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, spn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v0           #spn:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getNetworkSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "operatorNumberic"

    .prologue
    .line 90
    invoke-static {}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/MiuiSpnOverride;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 329
    const v0, 0x7f050009

    return v0
.end method

.method protected networksListLoaded(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v1, 0x1

    .line 258
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    .line 261
    .local v0, resultValid:Z
    :goto_0
    if-nez p2, :cond_0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiNetworkSetting;->dismissDialog(I)V

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v3, p0, Lcom/android/phone/MiuiNetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->clearList()V

    .line 275
    if-eqz p2, :cond_3

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/phone/MiuiNetworkSetting;->displayNetworkQueryFailed(I)V

    .line 288
    :goto_2
    return-void

    .line 258
    .end local v0           #resultValid:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    .restart local v0       #resultValid:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiNetworkSetting;->createList(Ljava/util/List;)V

    goto :goto_2

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->loadNetworksList()V

    goto :goto_2

    .line 268
    :catch_0
    move-exception v2

    goto :goto_1

    .line 266
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_1

    .line 335
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->dismissDialog(I)V

    .line 336
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->showDialog(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->loadNetworksList()V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_4

    .line 341
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->loadNetworksList()V

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->selectNetworkAutomatic()V

    goto :goto_0

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mRegisterNetworkFailedDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->selectNetworkAutomatic()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/phone/NetworkSetting;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getNetworkAutoSelectionMode()Z

    move-result v0

    .line 58
    .local v0, autoSelect:Z
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 59
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiNetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 62
    if-nez v0, :cond_0

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/MiuiNetworkSetting;->mStartQueryOnServiceConnected:Z

    .line 66
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/MiuiNetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f0c03bb

    const v6, 0x104000a

    const/high16 v5, 0x104

    const v4, 0x1010355

    .line 160
    sparse-switch p1, :sswitch_data_0

    .line 221
    invoke-super {p0, p1}, Lcom/android/phone/NetworkSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 162
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c03bc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    .line 173
    iget-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mTurnOffAutoSelectWarningDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 177
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c03bd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    .line 188
    iget-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mTurnOffAutoSelectConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 192
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c03be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    .line 202
    iget-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mNetworkQueryFailedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 206
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c03c1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03c0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mRegisterNetworkFailedDialog:Landroid/app/AlertDialog;

    .line 217
    iget-object v1, p0, Lcom/android/phone/MiuiNetworkSetting;->mRegisterNetworkFailedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/phone/NetworkSetting;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    return-void
.end method

.method protected onNetworkQueryServiceConnected()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mStartQueryOnServiceConnected:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->loadNetworksList()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mStartQueryOnServiceConnected:Z

    .line 82
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 137
    const-class v0, Lcom/android/phone/MiuiSettings;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/NetworkSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->warnTurnOffAutoSelect()V

    :goto_0
    move v0, v1

    .line 154
    :goto_1
    return v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->selectNetworkAutomatic()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method protected selectNetworkAutomatic()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 320
    invoke-super {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->clearList()V

    .line 323
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiNetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    return-void
.end method

.method protected showDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/phone/MiuiNetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiNetworkSetting;->showDialog(I)V

    .line 228
    :cond_0
    return-void
.end method

.method protected warnTurnOffAutoSelect()V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting;->showDialog(I)V

    .line 118
    return-void
.end method
