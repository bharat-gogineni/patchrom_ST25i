.class public Lcom/android/phone/MiuiPhoneUtils;
.super Lcom/android/phone/PhoneUtils;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneUtils$9;,
        Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;,
        Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    }
.end annotation


# static fields
.field protected static sActivateSpeakerIfDocked:Z

.field private static sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MiuiPhoneUtils;->sActivateSpeakerIfDocked:Z

    .line 87
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$1;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiPhoneUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    .line 121
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v0, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "ringing"

    .prologue
    .line 128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 129
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 131
    .local v1, hasActiveCall:Z
    :goto_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->internalAnswerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 133
    .local v2, ret:Z
    if-nez v1, :cond_1

    sget-boolean v3, Lcom/android/phone/MiuiPhoneUtils;->sActivateSpeakerIfDocked:Z

    if-nez v3, :cond_1

    .line 135
    sget-object v3, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v3}, Lcom/android/phone/MiuiPhoneUtils;->resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 136
    sget-object v3, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v3, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 138
    :cond_1
    return v2

    .line 129
    .end local v1           #hasActiveCall:Z
    .end local v2           #ret:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cdmaCanDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 379
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 381
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    .line 382
    .local v0, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 388
    .end local v0           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkUsingMiuiActivity(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->checkUsingMiuiActivity(Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method

.method public static checkUsingMiuiActivity(Landroid/app/Activity;Z)Z
    .locals 5
    .parameter "activity"
    .parameter "forwardIntent"

    .prologue
    .line 404
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 407
    .local v0, name:Ljava/lang/String;
    const-string v2, "Miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    if-eqz p1, :cond_0

    .line 409
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Miui"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/phone/MiuiPhoneUtils;->forwardIntentToActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    const/4 v2, 0x1

    .line 416
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #parts:[Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static forwardIntentToActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 425
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 428
    return-void
.end method

.method public static getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "phone"

    .prologue
    .line 374
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .restart local p0
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 672
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/phone/MiuiPhoneUtils$3;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;I)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$3;->retry()V

    .line 678
    return-void
.end method

.method public static getCallWaiting(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "onComplete"

    .prologue
    .line 696
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/android/phone/MiuiPhoneUtils$5;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$5;->retry()V

    .line 702
    return-void
.end method

.method public static getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "call"

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 362
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v1, v2, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;
    .locals 7
    .parameter "cm"

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 311
    .local v2, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 312
    .local v4, ringCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 313
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 314
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    move-object v2, v4

    .line 335
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 336
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "current call is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 317
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    .line 321
    move-object v2, v1

    goto :goto_0

    .line 322
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    .line 326
    move-object v2, v0

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 330
    .local v3, defaultPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 331
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    goto :goto_0

    .line 338
    .end local v3           #defaultPhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    return-object v2
.end method

.method public static getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "cm"

    .prologue
    .line 354
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5
    .parameter "callerInfo"

    .prologue
    const v4, 0x7f0c0004

    .line 277
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, name:Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 281
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v2, v3, :cond_0

    const-string v2, "-1"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    :goto_0
    return-object v1

    .line 284
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v2, v3, :cond_3

    const-string v2, "-2"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq v2, v3, :cond_5

    const-string v2, "-3"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    :cond_5
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_0

    .line 294
    :cond_7
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "callerInfo"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, name:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v0, v1, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 268
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0           #name:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "onComplete"

    .prologue
    .line 714
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$7;

    invoke-direct {v0, p1, p0}, Lcom/android/phone/MiuiPhoneUtils$7;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$7;->retry()V

    .line 720
    return-void
.end method

.method public static goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 4
    .parameter "current"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 445
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v2, "PhoneUtils"

    const-string v3, "can not go back to parent "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v2
.end method

.method public static goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "current"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 453
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 463
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v2, "PhoneUtils"

    const-string v3, "can not go back to parent "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v2
.end method

.method public static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "phone"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 236
    const/4 v3, 0x1

    .line 237
    .local v3, ret:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 238
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 240
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 256
    :cond_1
    :goto_0
    return v3

    .line 243
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 244
    const-string v4, "power"

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 245
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 246
    sget-object v4, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object p1, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 247
    .local v1, msg:Landroid/os/Message;
    sget-object v4, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->setCurrentAudioMode(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 253
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 254
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v4, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0

    .line 250
    :cond_4
    sget-object v4, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public static logCall(Lcom/android/phone/Constants$CallStatusCode;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 595
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p0, v0, :cond_0

    .line 598
    const/4 v0, -0x1

    new-instance v1, Lcom/android/phone/MiuiPhoneUtils$2;

    invoke-direct {v1, p1, p2}, Lcom/android/phone/MiuiPhoneUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 610
    :cond_0
    return-void
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;ILcom/android/internal/telephony/CallerInfo;)I
    .locals 5
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"
    .parameter "callType"
    .parameter "ci"

    .prologue
    .line 221
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 222
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 224
    .local v1, isPhoneIdle:Z
    :goto_0
    invoke-static/range {p0 .. p7}, Lcom/android/phone/PhoneUtils;->internalPlaceCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;ILcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 227
    .local v2, ret:I
    if-eqz v1, :cond_0

    sget-boolean v3, Lcom/android/phone/MiuiPhoneUtils;->sActivateSpeakerIfDocked:Z

    if-nez v3, :cond_0

    .line 229
    sget-object v3, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v3}, Lcom/android/phone/MiuiPhoneUtils;->resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 230
    sget-object v3, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v3, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 232
    :cond_0
    return v2

    .line 222
    .end local v1           #isPhoneIdle:Z
    .end local v2           #ret:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 8
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"
    .parameter "ci"

    .prologue
    .line 215
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;ILcom/android/internal/telephony/CallerInfo;)I

    move-result v0

    return v0
.end method

.method public static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 8
    .parameter "phone"
    .parameter "number"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 197
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v7, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 200
    .local v7, currentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    .line 201
    .local v6, bluetooth:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    sget-object v7, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 207
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/android/phone/MiuiPhoneUtils;->setCurrentAudioMode(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 209
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v1

    return v1

    .line 203
    :cond_1
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    sget-object v7, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0
.end method

.method public static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .parameter "phone"
    .parameter "number"
    .parameter "c"

    .prologue
    .line 186
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, userData:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 188
    .local v0, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 189
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 191
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    return v2
.end method

.method public static postDial(Landroid/content/Context;Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "context"
    .parameter "pni"
    .parameter "c"

    .prologue
    .line 661
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 662
    iget-boolean v0, p1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->remberOriginal:Z

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->original:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setOrigDialAddress(Lcom/android/internal/telephony/Connection;Ljava/lang/String;Z)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setOrigDialAddress(Lcom/android/internal/telephony/Connection;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static preDial(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLandroid/net/Uri;)Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    .locals 3
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "isEmergency"
    .parameter "contactRef"

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, isKnownContact:Z
    if-eqz p4, :cond_0

    .line 615
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 618
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/phone/MiuiPhoneUtils;->preDial(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZZ)Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;

    move-result-object v1

    return-object v1
.end method

.method public static preDial(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZZ)Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    .locals 7
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "isEmergency"
    .parameter "isKnownContact"

    .prologue
    const/4 v6, 0x1

    .line 622
    new-instance v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;-><init>(Ljava/lang/String;Z)V

    .line 623
    .local v1, pni:Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    if-eqz p3, :cond_2

    .line 624
    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportDialingEmergencyNumberDirectly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "111"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportDialingEmergencyNumberWithSuffix(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "111"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 628
    iput-boolean v6, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->remberOriginal:Z

    .line 650
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 651
    iget-object v2, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 652
    .local v2, preToDial:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->replaceCdmaInternationalAccessCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 653
    iget-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 654
    iput-boolean v6, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->remberOriginal:Z

    .line 657
    .end local v2           #preToDial:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 632
    :cond_2
    if-eqz p4, :cond_3

    .line 633
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_country_code"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 636
    invoke-static {p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->addCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 637
    iput-boolean v6, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->countryCodeAdded:Z

    .line 641
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, networkOperator:Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isChineseOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 644
    iget-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-static {p0, v3}, Lmiui/telephony/PhoneNumberUtils;->formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 646
    :cond_4
    iput-boolean v6, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->ipPrefixAdded:Z

    goto :goto_0
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "group"
    .parameter "pref"

    .prologue
    .line 512
    const/4 v3, 0x0

    .line 513
    .local v3, ret:Z
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 515
    if-nez v3, :cond_1

    .line 516
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 517
    .local v2, prefCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 518
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 519
    .local v1, p:Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 520
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1           #p:Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v3

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v0           #i:I
    .end local v2           #prefCount:I
    :cond_1
    return v3
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "prefKey"

    .prologue
    .line 534
    const/4 v3, 0x0

    .line 535
    .local v3, ret:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 536
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 537
    .local v2, prefCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    if-nez v3, :cond_2

    .line 538
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 539
    .local v1, p:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 537
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .restart local v1       #p:Landroid/preference/Preference;
    :cond_1
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 542
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1           #p:Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 546
    .end local v0           #i:I
    .end local v2           #prefCount:I
    :cond_2
    return v3
.end method

.method public static resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V
    .locals 7
    .parameter "audioMode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 143
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 144
    .local v1, bluetooth:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 145
    .local v2, bluetoothAvailable:Z
    :goto_0
    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne p0, v5, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    sget-object p0, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 155
    :cond_0
    :goto_1
    sget-object v5, Lcom/android/phone/MiuiPhoneUtils$9;->$SwitchMap$com$android$phone$MiuiConstants$AudioMode:[I

    invoke-virtual {p0}, Lcom/android/phone/MiuiConstants$AudioMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 183
    :cond_1
    :goto_2
    return-void

    .end local v2           #bluetoothAvailable:Z
    :cond_2
    move v2, v4

    .line 144
    goto :goto_0

    .line 148
    .restart local v2       #bluetoothAvailable:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 149
    sget-object p0, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_1

    .line 151
    :cond_4
    sget-object p0, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_1

    .line 157
    :pswitch_0
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_5

    .line 158
    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 160
    :cond_5
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-static {v0, v4, v4}, Lcom/android/phone/MiuiPhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 166
    :pswitch_1
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 167
    invoke-static {v0, v3, v4}, Lcom/android/phone/MiuiPhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 169
    :cond_6
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_2

    .line 175
    :pswitch_2
    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 176
    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 178
    :cond_7
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    invoke-static {v0, v4, v4}, Lcom/android/phone/MiuiPhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setActionBar(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 398
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 399
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 401
    :cond_0
    return-void
.end method

.method public static setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "phone"
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 686
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$4;

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/MiuiPhoneUtils$4;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;IILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$4;->retry()V

    .line 693
    return-void
.end method

.method public static setCurrentAudioMode(Lcom/android/phone/MiuiConstants$AudioMode;)V
    .locals 0
    .parameter "audioMode"

    .prologue
    .line 124
    sput-object p0, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 125
    return-void
.end method

.method public static setOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 724
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$8;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/phone/MiuiPhoneUtils$8;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;I)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$8;->retry()V

    .line 730
    return-void
.end method

.method public static setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 11
    .parameter "v"
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 557
    sget-object v8, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 558
    .local v6, style:Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 559
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 563
    :cond_0
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 564
    .local v1, colors:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 568
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 569
    .local v7, ts:I
    if-eqz v7, :cond_2

    .line 570
    int-to-float v8, v7

    invoke-virtual {p0, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 573
    :cond_2
    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_3

    .line 575
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_4

    .line 580
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 585
    :cond_4
    const/16 v8, 0x24

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 586
    .local v2, shadowColor:I
    const/16 v8, 0x25

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 587
    .local v3, shadowDx:F
    const/16 v8, 0x26

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 588
    .local v4, shadowDy:F
    const/16 v8, 0x27

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 589
    .local v5, shadowRadius:F
    invoke-virtual {p0, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 591
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 592
    return-void
.end method

.method public static usage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 733
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0, p0}, Lmiui/util/Jlog;->usage(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    return-void
.end method
