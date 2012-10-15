.class public Lcom/android/phone/MiuiPhoneApp;
.super Lcom/android/phone/PhoneApp;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneApp$Handler;
    }
.end annotation


# instance fields
.field private mCurrentServiceState:I

.field private mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

.field private mIntentAfterCall:Landroid/content/Intent;

.field private mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

.field private mPreferredNetworkTypeInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    .line 116
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/phone/MiuiPhoneApp$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiPhoneApp$Handler;-><init>(Lcom/android/phone/MiuiPhoneApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiPhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneApp;->isInCallScreenForeground()Z

    move-result v0

    return v0
.end method

.method private isInCallScreenForeground()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v3

    .line 151
    :cond_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiPhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 152
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 154
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 155
    .local v2, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    const-string v5, "com.android.phone.MiuiInCallScreen"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v2           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move v3, v4

    .line 159
    goto :goto_0
.end method


# virtual methods
.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;

    move-result-object v1

    .line 287
    :cond_0
    :goto_0
    return-object v1

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiPhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    iput-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    .line 237
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 242
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 244
    .local v1, state:I
    iget v2, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 248
    :cond_1
    iput v1, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    goto :goto_0

    .line 250
    .end local v1           #state:I
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    goto :goto_0
.end method

.method protected initializPreferredNetworkType(III)V
    .locals 6
    .parameter "type"
    .parameter "preferredNetworkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    .line 355
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 357
    .local v2, ci:Lcom/android/internal/telephony/CommandsInterface;
    new-instance v0, Lcom/android/phone/MiuiPhoneApp$1;

    move-object v1, p0

    move v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiPhoneApp$1;-><init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/internal/telephony/CommandsInterface;III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiPhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 394
    .end local v2           #ci:Lcom/android/internal/telephony/CommandsInterface;
    :cond_0
    return-void
.end method

.method isBluetoothAvailable()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->onCreate()V

    .line 125
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/MiuiIccCardApplicationProxy;->registerIccStatusChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method protected onIccStatusChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 298
    const-string v4, "PhoneApp"

    const-string v5, "onIccStatusChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    if-nez v4, :cond_2

    .line 300
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 302
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 303
    .local v3, type:I
    invoke-static {v1}, Lcom/android/phone/MiuiIccCardApplicationProxy;->isCdmaApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    const/4 v3, 0x2

    .line 312
    :goto_0
    const/4 v2, 0x0

    .line 313
    .local v2, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 314
    const/4 v2, 0x7

    .line 316
    :cond_0
    invoke-static {}, Lcom/android/phone/MiuiUtils;->getDefaultPreferredCdmaSubscription()I

    move-result v0

    .line 317
    .local v0, cdmaSubscription:I
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default cdma subscription set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 323
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configed network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_cdma_subscription"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 329
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configed cdma subscription set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-ne v3, v7, :cond_4

    .line 332
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v4

    if-eq v4, v7, :cond_1

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 335
    const/4 v2, 0x0

    .line 336
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrected network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/phone/MiuiPhoneApp;->initializPreferredNetworkType(III)V

    .line 349
    .end local v0           #cdmaSubscription:I
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #preferredNetworkMode:I
    .end local v3           #type:I
    :cond_2
    return-void

    .line 305
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #type:I
    :cond_3
    invoke-static {v1}, Lcom/android/phone/MiuiIccCardApplicationProxy;->isGsmApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 338
    .restart local v0       #cdmaSubscription:I
    .restart local v2       #preferredNetworkMode:I
    :cond_4
    if-ne v3, v8, :cond_1

    .line 339
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 340
    const/4 v2, 0x4

    .line 341
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrected network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setIntentAfterCall(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    .line 256
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 1
    .parameter "callOrigin"

    .prologue
    .line 260
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 265
    :cond_0
    if-nez p1, :cond_1

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 165
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    .line 175
    .local v0, acquireProximityWakeLock:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_enable_proximity"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, enableProximityWakeLock:Z
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 181
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/MiuiPhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_9

    :cond_2
    move v3, v5

    .line 183
    .local v3, screenOnImmediately:Z
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_enforce_proximity_during_ringing"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v6, :cond_a

    move v2, v5

    .line 188
    .local v2, proximityWhenIncall:Z
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    :cond_3
    sget-object p1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    .line 193
    :cond_4
    if-nez v2, :cond_5

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v4, :cond_5

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneApp;->mBeginningCall:Z

    if-eqz v4, :cond_b

    :cond_5
    if-nez v3, :cond_b

    .line 196
    const/4 v0, 0x1

    .line 204
    .end local v2           #proximityWhenIncall:Z
    .end local v3           #screenOnImmediately:Z
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    if-eqz v1, :cond_7

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneApp;->mBeginningCall:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_c

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v4, :cond_c

    .line 207
    :cond_7
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v4}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->release()V

    .line 212
    :cond_8
    :goto_4
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    .line 214
    iget-object v5, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 215
    if-eqz v0, :cond_e

    .line 216
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_d

    .line 217
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: acquiring..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 230
    :goto_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_9
    move v3, v4

    .line 181
    goto :goto_1

    .restart local v3       #screenOnImmediately:Z
    :cond_a
    move v2, v4

    .line 183
    goto :goto_2

    .line 200
    .restart local v2       #proximityWhenIncall:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 208
    .end local v2           #proximityWhenIncall:Z
    .end local v3           #screenOnImmediately:Z
    :cond_c
    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_8

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v4, :cond_8

    .line 210
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v4}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->delayAquire()V

    goto :goto_4

    .line 220
    :cond_d
    :try_start_1
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already held."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 223
    :cond_e
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 224
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: releasing..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    .line 227
    :cond_f
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already released."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method
