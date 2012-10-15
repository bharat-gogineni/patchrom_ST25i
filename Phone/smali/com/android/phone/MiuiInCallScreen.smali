.class public Lcom/android/phone/MiuiInCallScreen;
.super Lcom/android/phone/InCallScreen;
.source "MiuiInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallScreen$Handler;
    }
.end annotation


# static fields
.field private static final mDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mCallRecorder:Landroid/media/MediaRecorder;

.field private mCurrentRecordDisplayFileName:Ljava/lang/String;

.field private mCurrentRecordFileName:Ljava/lang/String;

.field private mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/MiuiInCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 81
    new-instance v0, Lcom/android/phone/MiuiInCallScreen$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallScreen$Handler;-><init>(Lcom/android/phone/MiuiInCallScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    .line 82
    sget-object v0, Lcom/android/phone/MiuiInCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V

    return-void
.end method

.method private canRecordCallNow()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCallEndedDisplayDelay(Lcom/android/internal/telephony/Connection$DisconnectCause;)I
    .locals 3
    .parameter "cause"

    .prologue
    .line 176
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 177
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p0, v1, :cond_1

    const/16 v0, 0x14

    .line 186
    .local v0, delay:I
    :cond_0
    :goto_0
    return v0

    .line 177
    .end local v0           #delay:I
    :cond_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 180
    :cond_2
    const/16 v0, 0xc8

    .line 181
    .restart local v0       #delay:I
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p0, v1, :cond_0

    .line 182
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0xfa0

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v0, 0x7d0

    goto :goto_1
.end method

.method private getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, name:Ljava/lang/String;
    const-string v2, "\\\\|\\/|:|\\*|\\?|\"|<|>|\\||;|&|!|\\[|\\]|\'|`|\\(|\\)|\\{|\\}"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private onContactClick()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method private onNoteClick()V
    .locals 8

    .prologue
    .line 296
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 297
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v7, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, number:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 309
    const-string v6, "number is null when record through note"

    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 312
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 314
    .local v1, date:J
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v5, sendIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    const-string v6, "vnd.android.cursor.item/call_note"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    if-nez v4, :cond_2

    const-string v4, ""

    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v6, "com.miui.notes.call_date"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 320
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v6, Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v6, v5}, Lcom/android/phone/MiuiPhoneApp;->setIntentAfterCall(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v5           #sendIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 322
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "MiuiInCallScreen"

    const-string v7, "Note activity not found "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startCallRecord()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 340
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->canRecordCallNow()Z

    move-result v9

    if-nez v9, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    if-nez v9, :cond_2

    .line 345
    new-instance v9, Lcom/android/phone/MiuiStorageMonitor;

    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/phone/MiuiStorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    .line 348
    :cond_2
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    new-instance v10, Lcom/android/phone/MiuiInCallScreen$1;

    invoke-direct {v10, p0}, Lcom/android/phone/MiuiInCallScreen$1;-><init>(Lcom/android/phone/MiuiInCallScreen;)V

    invoke-virtual {v9, v10}, Lcom/android/phone/MiuiStorageMonitor;->startMonitor(Lcom/android/phone/MiuiStorageMonitor$Listener;)I

    move-result v3

    .line 355
    .local v3, error:I
    if-eqz v3, :cond_6

    .line 356
    if-ne v3, v12, :cond_3

    .line 357
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v9}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 358
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c02c2

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 365
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v9, :cond_4

    .line 366
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v9, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v9}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 368
    :cond_4
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v9}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    goto :goto_0

    .line 360
    :cond_5
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x60c003a

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 372
    :cond_6
    const-string v7, "/MIUI/sound_recorder/call_rec"

    .line 373
    .local v7, recordPathOfMIUI:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v9}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v8, sampleDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    .line 378
    const/16 v9, 0x1ff

    invoke-static {v8, v9, v11, v11}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v9

    if-nez v9, :cond_9

    .line 379
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c02c1

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 381
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v9, :cond_7

    .line 382
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v9, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v9}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 384
    :cond_7
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v9}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    goto/16 :goto_0

    .line 373
    .end local v8           #sampleDir:Ljava/io/File;
    :cond_8
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 389
    .restart local v8       #sampleDir:Ljava/io/File;
    :cond_9
    const-string v9, "start CallRecord!"

    invoke-virtual {p0, v9}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 390
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-nez v9, :cond_a

    .line 391
    new-instance v9, Landroid/media/MediaRecorder;

    invoke-direct {v9}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 393
    :cond_a
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->reset()V

    .line 394
    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallStreamRecording(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 395
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 399
    :goto_3
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 400
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v12}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 402
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v4, fileNameBuilder:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c02c0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const/16 v1, 0x40

    .line 405
    .local v1, delimiter:C
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 406
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    const/16 v1, 0x5f

    .line 408
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 431
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #delimiter:C
    .end local v4           #fileNameBuilder:Ljava/lang/StringBuilder;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 432
    .local v2, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->reset()V

    .line 433
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->release()V

    .line 434
    iput-object v13, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 435
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v9, :cond_b

    .line 436
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v9, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v9}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 438
    :cond_b
    iput-object v13, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 439
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v9}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 442
    .end local v2           #e:Ljava/lang/Exception;
    :goto_5
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v9}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v9

    if-nez v9, :cond_0

    .line 443
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x60c0039

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 397
    :cond_c
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v12}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto/16 :goto_3

    .line 410
    .restart local v1       #delimiter:C
    .restart local v4       #fileNameBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_d
    :try_start_1
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 411
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    const/16 v1, 0x5f

    .line 413
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 415
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_e
    const/16 v9, 0x5f

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/MiuiInCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v9, ".amr"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0x70

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    const-string v10, "+"

    const-string v11, "00"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2a

    const/16 v11, 0x73

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .local v6, recordFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v11, 0x7f0c02c3

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordDisplayFileName:Ljava/lang/String;

    .line 423
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    iget-object v10, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 424
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->prepare()V

    .line 425
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->start()V

    .line 426
    const-string v9, "CallRecord is started!"

    invoke-virtual {p0, v9}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 427
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v9, :cond_f

    .line 428
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v9, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v9}, Lcom/android/phone/MiuiInCallTouchUi;->onStartCallRecord()V

    .line 430
    :cond_f
    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v9, Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v9}, Lcom/android/phone/MiuiNotificationMgr;->notifyCallRecord()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private stopCallRecord()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V

    .line 458
    return-void
.end method

.method private stopCallRecord(I)V
    .locals 10
    .parameter "errorCode"

    .prologue
    const/16 v9, 0x1ff

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 461
    const-string v0, "stop CallRecord!"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 464
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 465
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 466
    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 467
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MiuiNotificationMgr;->cancelCallRecord()V

    .line 471
    if-nez p1, :cond_3

    .line 472
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "button_call_recording_notification"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02bc

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordDisplayFileName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v0, v9, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 489
    :cond_2
    :goto_0
    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 493
    :goto_1
    return-void

    .line 479
    :cond_3
    if-ne p1, v5, :cond_4

    .line 480
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02bb

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v0, v9, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 484
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_5
    const-string v0, "CallRecord is stopped already!"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected createDialer()Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    return-object v0
.end method

.method protected createInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/android/phone/MiuiInCallControlState;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method protected createManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/android/phone/MiuiManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method protected createRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/phone/MiuiRespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/phone/MiuiRespondViaSmsManager;-><init>()V

    return-object v0
.end method

.method protected endInCallScreenSession(Z)V
    .locals 1
    .parameter "forceFinish"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->dismissAllDialogs()V

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f040023

    return v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 282
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 284
    :goto_0
    return-void

    .line 258
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->onNoteClick()V

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V

    goto :goto_0

    .line 264
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    goto :goto_0

    .line 267
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->onContactClick()V

    goto :goto_0

    .line 270
    :pswitch_5
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 273
    :pswitch_6
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 276
    :pswitch_7
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 279
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->toggleSpeaker()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700b2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 2
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 191
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 192
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v1, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v1, v0}, Lcom/android/phone/MiuiCallCard;->updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V

    .line 195
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    .line 196
    return-void
.end method

.method protected hideDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method isCallRecording()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRespondViaSmsDialogShowing()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    check-cast v0, Lcom/android/phone/MiuiRespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/MiuiRespondViaSmsManager;->isShowingPopupDialog()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onBackPressed()V

    goto :goto_0
.end method

.method onBluetoothAvailabilityChanged()V
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup()V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->updateInCallTouchUi()V

    .line 502
    :cond_1
    return-void
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    .line 225
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->resetPanelState()V

    .line 230
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 231
    return-void
.end method

.method onHeadsetAvailabilityChanged()V
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup()V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->updateInCallTouchUi()V

    .line 511
    :cond_1
    return-void
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "r"

    .prologue
    const/16 v6, 0x191

    const/4 v5, 0x0

    .line 200
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->canRecordCallNow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "button_auto_record_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v3, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v3}, Lcom/android/phone/MiuiInCallTouchUi;->isStartCallRecordingRequestPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "button_auto_record_scenario"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, autoRecordScenarioIndex:I
    if-nez v0, :cond_2

    .line 206
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    .end local v0           #autoRecordScenarioIndex:I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 219
    return-void

    .line 207
    .restart local v0       #autoRecordScenarioIndex:I
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 209
    .local v1, latestConnection:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v2}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v0, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallCard;->updateLockScreenWallpaper()V

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MiuiInCallScreen;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onStop()V

    .line 133
    return-void
.end method

.method protected setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 142
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method protected showDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method protected updateDialpadVisibility()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->hideDialpadInternal(Z)V

    .line 252
    :cond_0
    return-void
.end method
