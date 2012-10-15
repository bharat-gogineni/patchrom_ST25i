.class public Lcom/android/phone/MiuiCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MiuiCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;
    }
.end annotation


# instance fields
.field private mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

.field private mHandonRingerEnable:Z

.field private mHandonTriggered:Z

.field private mHandonTriggeringCount:I

.field private mIsRedialCall:Z

.field private mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

.field private mRedialTimes:I

.field private mRingerSetFlags:I

.field private mRingerVolume:I

.field private mRingerVolumeControlling:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorCount:I

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRunning:Z

.field private mStartZ:F

.field private mTurnoverMuteEnable:Z

.field private mTurnoverTiggeringCount:I

.field private mTurnoverTriggered:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 2
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    .line 71
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 72
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 79
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 80
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 85
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    .line 86
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 88
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 89
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 90
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    .line 93
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$1;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 762
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$2;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 199
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    .line 200
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    .line 201
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    .line 202
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$104(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallNotifier;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/MiuiCallNotifier;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return p1
.end method

.method static synthetic access$504(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->decrescendoRingerVolume()V

    return-void
.end method

.method private static addFirewallLog(Ljava/lang/String;IJIJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 838
    const-string v1, "number"

    invoke-static {p1, p0}, Lcom/android/phone/MiuiCallNotifier;->convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 840
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v1, "reason"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string v1, "data1"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 844
    :try_start_0
    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    const-string v1, "MiuiCallNotifier"

    const-string v2, "failed to add firewall log"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "presentation"
    .parameter "logNumber"

    .prologue
    .line 853
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p0, v0, :cond_1

    .line 854
    const-string p1, "-2"

    .line 861
    :cond_0
    :goto_0
    return-object p1

    .line 855
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p0, v0, :cond_2

    .line 856
    const-string p1, "-3"

    goto :goto_0

    .line 857
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p0, v0, :cond_0

    .line 859
    :cond_3
    const-string p1, "-1"

    goto :goto_0
.end method

.method private crescendoRingerVolumeDelayed()V
    .locals 7

    .prologue
    const/16 v6, 0x191

    const/4 v5, 0x2

    .line 874
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 895
    :cond_0
    return-void

    .line 879
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v4, :cond_2

    .line 880
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 881
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 885
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 888
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 889
    .local v1, maxVolume:I
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .local v3, volume:I
    const/16 v0, 0x7530

    .line 890
    .local v0, delayTime:I
    :goto_0
    if-gt v3, v1, :cond_0

    .line 891
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 892
    .local v2, message:Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 893
    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 890
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v0, v0, 0x1388

    goto :goto_0
.end method

.method private decrescendoRingerVolume()V
    .locals 6

    .prologue
    const/16 v5, 0x191

    const/4 v4, 0x2

    .line 898
    iget-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v3, :cond_0

    .line 899
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 900
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 904
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 906
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, volume:I
    const/4 v0, 0x0

    .line 907
    .local v0, delayTime:I
    :goto_0
    if-ltz v2, :cond_1

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    add-int/lit8 v3, v3, -0x3

    if-lt v2, v3, :cond_1

    .line 908
    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 909
    .local v1, message:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 910
    int-to-long v3, v0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 907
    add-int/lit8 v2, v2, -0x1

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 912
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method static getCallWaitingToneLength(Lcom/android/phone/CallNotifier;I)I
    .locals 6
    .parameter "notifier"
    .parameter "defaultValue"

    .prologue
    .line 153
    move v1, p1

    .line 155
    .local v1, toneLengthMillis:I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "button_call_waiting_tone"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, value:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 160
    const/16 v1, 0x1388

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 162
    const/16 v1, 0x1388

    .line 163
    instance-of v3, p0, Lcom/android/phone/MiuiCallNotifier;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 164
    check-cast v0, Lcom/android/phone/MiuiCallNotifier;

    .line 165
    .local v0, miuiCallNotifier:Lcom/android/phone/MiuiCallNotifier;
    new-instance v3, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;-><init>(Lcom/android/phone/MiuiCallNotifier;Lcom/android/phone/MiuiCallNotifier$1;)V

    iput-object v3, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    .line 166
    iget-object v3, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    invoke-virtual {v3}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->start()V

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 143
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/phone/MiuiCallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiCallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 148
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 146
    :cond_0
    const-string v0, "MiuiCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isBlockedByFirewall(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 982
    if-nez p1, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v1

    .line 985
    :cond_1
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 986
    .local v0, code:I
    if-eq v0, v2, :cond_2

    const/16 v3, 0x101

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private static isSkippingCallLog(I)Z
    .locals 2
    .parameter "firewallCode"

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, skipping:Z
    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x101

    if-eq p0, v1, :cond_0

    const/16 v1, 0x102

    if-ne p0, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->isSkipInCallLogForFirewall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    :cond_1
    const/4 v0, 0x1

    .line 612
    :cond_2
    return v0
.end method

.method static logCall(Lcom/android/internal/telephony/Connection;)V
    .locals 25
    .parameter "c"

    .prologue
    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 527
    .local v20, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v23

    .line 528
    .local v23, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, number:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 530
    .local v3, date:J
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v10

    .line 531
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, logNumber:Ljava/lang/String;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 539
    .local v2, presentation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 540
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_2

    .line 541
    const/4 v13, 0x3

    .line 542
    .local v13, callLogType:I
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getRingDurationMillis(Lcom/android/internal/telephony/Connection;)J

    move-result-wide v6

    .line 548
    .local v6, duration:J
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v5

    .line 549
    .local v5, firewallCode:I
    const/4 v9, 0x2

    if-eq v5, v9, :cond_0

    const/16 v9, 0x102

    if-ne v5, v9, :cond_3

    .line 551
    :cond_0
    const/16 v18, 0x2

    .line 560
    .local v18, firewallType:I
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v19, 0x1

    .line 562
    .local v19, forwardedCall:I
    :goto_2
    if-eqz v5, :cond_7

    .line 563
    invoke-static {v5}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v24

    .line 565
    .local v24, skipCallLog:Z
    invoke-static/range {v1 .. v7}, Lcom/android/phone/MiuiCallNotifier;->addFirewallLog(Ljava/lang/String;IJIJ)V

    .line 585
    .end local v5           #firewallCode:I
    :goto_3
    invoke-static/range {v23 .. v23}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v21, 0x1

    .line 589
    .local v21, isOtaspNumber:Z
    :goto_4
    if-nez v21, :cond_b

    if-nez v24, :cond_b

    const/16 v22, 0x1

    .line 593
    .local v22, okToLogThisCall:Z
    :goto_5
    if-eqz v22, :cond_1

    .line 594
    new-instance v8, Lcom/android/phone/CallLogAsync$AddCallArgs;

    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move v12, v2

    move-wide v14, v3

    move-wide/from16 v16, v6

    invoke-direct/range {v8 .. v19}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 598
    .local v8, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v9, v8}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 600
    .end local v8           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_1
    return-void

    .line 544
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v21           #isOtaspNumber:Z
    .end local v22           #okToLogThisCall:Z
    .end local v24           #skipCallLog:Z
    :cond_2
    const/4 v13, 0x1

    .line 545
    .restart local v13       #callLogType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .restart local v6       #duration:J
    goto :goto_0

    .line 552
    .restart local v5       #firewallCode:I
    :cond_3
    const/4 v9, 0x1

    if-eq v5, v9, :cond_4

    const/16 v9, 0x101

    if-eq v5, v9, :cond_4

    const/4 v9, 0x7

    if-ne v5, v9, :cond_5

    .line 555
    :cond_4
    const/16 v18, 0x1

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 557
    .end local v18           #firewallType:I
    :cond_5
    const/16 v18, 0x0

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 560
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 567
    .restart local v19       #forwardedCall:I
    :cond_7
    const/16 v24, 0x0

    .restart local v24       #skipCallLog:Z
    goto :goto_3

    .line 570
    .end local v5           #firewallCode:I
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v24           #skipCallLog:Z
    :cond_8
    const/4 v13, 0x2

    .line 571
    .restart local v13       #callLogType:I
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v12, 0x2

    if-ne v9, v12, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v12, "button_display_precise_call_state"

    const/4 v14, 0x0

    invoke-interface {v9, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v9

    sget-object v12, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v9, v12, :cond_9

    .line 575
    const-wide/16 v6, 0x0

    .line 579
    .restart local v6       #duration:J
    :goto_6
    const/16 v18, 0x0

    .line 580
    .restart local v18       #firewallType:I
    const/16 v19, 0x0

    .line 581
    .restart local v19       #forwardedCall:I
    const/16 v24, 0x0

    .restart local v24       #skipCallLog:Z
    goto :goto_3

    .line 577
    .end local v6           #duration:J
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v24           #skipCallLog:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .restart local v6       #duration:J
    goto :goto_6

    .line 585
    .restart local v18       #firewallType:I
    .restart local v19       #forwardedCall:I
    .restart local v24       #skipCallLog:Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_4

    .line 589
    .restart local v21       #isOtaspNumber:Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_5
.end method

.method public static onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 178
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v2, 0x195

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v1, 0x192

    invoke-interface {p0, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static onPhoneUnregisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 189
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 817
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 822
    .local v1, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v1, :cond_0

    .line 823
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_2

    .line 825
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 826
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 827
    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setSuppServiceNotification(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0

    .line 831
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->setIncomingCallSuppServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0
.end method

.method private processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 9
    .parameter "ci"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 711
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 712
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    .line 713
    invoke-static {v2, v6}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 716
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v4

    .line 717
    .local v4, ret:I
    if-ne v4, v5, :cond_4

    .line 719
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v1

    .line 720
    .local v1, blacklist_act:I
    if-nez v1, :cond_2

    .line 721
    const-string v7, "Rejected incoming call for caller in blacklist"

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 722
    if-eqz v2, :cond_1

    .line 723
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 725
    :cond_1
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 759
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :goto_0
    return v5

    .line 727
    .restart local v1       #blacklist_act:I
    .restart local v4       #ret:I
    :cond_2
    if-ne v1, v5, :cond_3

    .line 728
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 729
    const-string v5, "Muted incoming call for caller in blacklist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 730
    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 731
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v5, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v5}, Lcom/android/phone/MiuiRinger;->mute()V

    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :cond_3
    :goto_1
    move v5, v6

    .line 759
    goto :goto_0

    .line 736
    .restart local v4       #ret:I
    :cond_4
    if-ne v4, v8, :cond_3

    .line 738
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v0

    .line 739
    .local v0, act:I
    if-nez v0, :cond_6

    .line 740
    const-string v7, "Rejected incoming call for caller not in whitelist"

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 741
    if-eqz v2, :cond_5

    .line 742
    const/16 v7, 0x101

    invoke-static {v2, v7}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 744
    :cond_5
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    .end local v0           #act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v3

    .line 757
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v5, "MiuiCallNotifier"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 746
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v0       #act:I
    .restart local v4       #ret:I
    :cond_6
    if-ne v0, v5, :cond_3

    .line 747
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 748
    const-string v5, "Muted incoming call for caller not in whitelist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 749
    const/16 v5, 0x102

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 750
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v5, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v5}, Lcom/android/phone/MiuiRinger;->mute()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private resetRingerVolume()V
    .locals 4

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-eqz v0, :cond_0

    .line 867
    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 868
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 871
    :cond_0
    return-void
.end method

.method private startAutoAnswer()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 916
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 917
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 920
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 953
    :cond_2
    :goto_0
    return-void

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 928
    const-string v0, "button_auto_answer"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    const-string v0, "button_auto_answer_scenario"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 931
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MiuiPhoneApp;

    .line 932
    packed-switch v5, :pswitch_data_0

    .line 946
    :cond_4
    :goto_1
    if-eqz v1, :cond_2

    .line 947
    const-string v0, "button_auto_answer_delay"

    const-string v1, "3"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 948
    const/16 v1, 0x194

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 949
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 950
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 934
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v1, v0

    .line 935
    goto :goto_1

    :cond_5
    move v0, v2

    .line 934
    goto :goto_2

    .line 937
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v1, v2

    goto :goto_1

    .line 940
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v2, v1

    :cond_8
    move v1, v2

    .line 941
    goto :goto_1

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startSensor()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 970
    const-string v1, "button_turnover_mute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    .line 971
    const-string v1, "button_handon_ringer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    .line 972
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-nez v0, :cond_1

    .line 974
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 975
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 976
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 979
    :cond_1
    return-void
.end method

.method private stopSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 956
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 959
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 960
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 961
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 962
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 963
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 964
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 966
    :cond_0
    return-void
.end method

.method private vibrateWhenConnectOrDisconnect()V
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_connect_disconnect_vibrate"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, vibrateDuration:I
    if-lez v0, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method clearStopSignalInfoToneMessage()V
    .locals 1

    .prologue
    .line 674
    const/16 v0, 0x197

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 675
    return-void
.end method

.method protected getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 698
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 699
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 703
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 700
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_1

    .line 701
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method protected getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 684
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    :cond_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, logNumber:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 689
    .end local v0           #logNumber:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #logNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method getRedialTimes()I
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "ci"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    .line 208
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 267
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->silenceRinger()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v4, v7, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v4}, Lcom/android/phone/MiuiCallNotifier;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    .line 219
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->resetAudioStateAfterDisconnect()V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 230
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 237
    .end local v3           #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 238
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 239
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    .line 240
    .local v2, record:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    iget-byte v4, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 241
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 242
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v4, v5, :cond_0

    .line 245
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v1, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    .line 247
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 248
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 259
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #record:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    :pswitch_5
    invoke-static {}, Lcom/android/phone/MiuiExtraConnectionData;->clearDisconnected()V

    goto/16 :goto_0

    .line 263
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method isRinging()Z
    .locals 2

    .prologue
    .line 648
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCdmaSingalInfoTone:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "r"

    .prologue
    const/16 v10, 0x196

    const/4 v9, 0x0

    .line 436
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 437
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 439
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 440
    .local v0, c:Lcom/android/internal/telephony/Connection;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 441
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    if-eqz v0, :cond_6

    .line 442
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call disconnected with cause "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/MiuiPhoneUtils;->usage(Ljava/lang/String;)V

    .line 446
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_2

    .line 447
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 448
    .local v1, call:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-ne v1, v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-ne v1, v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    .line 450
    :cond_1
    const-string v7, "MiuiCallNotifier"

    const-string v8, "MIONE:phone disconnect, then vibrate"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 455
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_4

    .line 457
    :cond_3
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 460
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 462
    .local v3, isEmergencyNumber:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 463
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v3, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_a

    .line 468
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 469
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v7, "button_auto_redial"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 470
    iget-boolean v7, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-nez v7, :cond_5

    .line 471
    iput v9, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 472
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 474
    :cond_5
    iget v7, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_8

    .line 475
    iget v7, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 476
    invoke-static {v5, v4, v0}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I

    .line 488
    .end local v3           #isEmergencyNumber:Z
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 490
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_7

    .line 491
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->isBlockedByFirewall(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 492
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 493
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 497
    :cond_7
    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 498
    invoke-static {v2}, Lcom/android/phone/MiuiInCallScreen;->getCallEndedDisplayDelay(Lcom/android/internal/telephony/Connection$DisconnectCause;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v10, v7, v8}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 499
    return-void

    .line 478
    .restart local v3       #isEmergencyNumber:Z
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    :cond_8
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 481
    :cond_9
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 484
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_a
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0
.end method

.method protected onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "r"

    .prologue
    const/4 v9, 0x0

    .line 274
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 276
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 277
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewRingingConnection(): state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", conn = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " }"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 278
    if-nez v0, :cond_1

    .line 279
    const-string v7, "MiuiCallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v7, "new ringing call"

    invoke-static {v7}, Lcom/android/phone/MiuiPhoneUtils;->usage(Ljava/lang/String;)V

    .line 286
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->onIncomingCall(Lcom/android/internal/telephony/Connection;)V

    .line 288
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 289
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 292
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 297
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v7

    if-nez v7, :cond_3

    .line 302
    const-string v7, "MiuiCallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lmiui/provider/ExtraTelephony;->isAntiPrivateEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 315
    .local v4, presentation:I
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v4, v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v4, v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq v4, v7, :cond_4

    const-string v7, "-1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "-2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "-3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 321
    :cond_4
    const-string v7, "Rejected incoming call for caller is private number/unknown number"

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 322
    if-eqz v0, :cond_5

    .line 323
    const/4 v7, 0x7

    invoke-static {v0, v7}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 325
    :cond_5
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 331
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #presentation:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    .line 333
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 335
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- connection is ringing!  state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 364
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 368
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 370
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->crescendoRingerVolumeDelayed()V

    .line 371
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startSensor()V

    .line 372
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startAutoAnswer()V

    goto/16 :goto_0

    .line 375
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, v0, v8, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 378
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_0

    .line 379
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v8, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v7, v9, p0, v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 398
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 399
    .local v2, foreCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 400
    .local v0, backCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_1

    .line 402
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 403
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 407
    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v4, :cond_1

    .line 408
    const/16 v3, 0xb

    .line 409
    .local v3, toneToPlay:I
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v4, p0, v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 410
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 413
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #toneToPlay:I
    :cond_1
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 414
    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 416
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 418
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 421
    :cond_2
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 422
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x64

    .line 781
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 782
    invoke-virtual {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_0

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, isQueryExecutionTimeOK:Z
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 788
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 790
    const/4 v0, 0x1

    .line 792
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 793
    if-eqz v0, :cond_6

    .line 794
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v1}, Lcom/android/phone/MiuiRinger;->unMute()V

    .line 795
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 796
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 798
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 799
    :try_start_1
    iget v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 800
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryState:I

    .line 802
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 792
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 808
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->isFirewallEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->isAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiRinger;->setAntiStranger(Z)V

    .line 812
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0
.end method

.method protected registerForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 636
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 637
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 638
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 639
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_0
    const/16 v2, 0x192

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 644
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method protected resetAudioStateAfterDisconnect()V
    .locals 2

    .prologue
    .line 503
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 7
    .parameter "c"
    .parameter "date"

    .prologue
    .line 513
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 515
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lcom/android/phone/MiuiCallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    if-nez v6, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 519
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    return-void

    .line 517
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget-object v3, v6, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method silenceRinger()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 655
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 656
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 658
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 660
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 663
    :cond_0
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCdmaSingalInfoTone:I

    const/16 v1, 0x62

    if-eq v0, v1, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->stopVibrate()V

    .line 669
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    .line 671
    :cond_2
    return-void
.end method

.method stopSignalInfoTone(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 678
    const/16 v0, 0x197

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 679
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 617
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 618
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 619
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0

    .line 624
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 625
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 626
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 627
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 629
    :cond_2
    const/16 v2, 0x192

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 632
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    return-void
.end method
