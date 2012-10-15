.class public Lcom/android/phone/MiuiBluetoothHandsfree;
.super Lcom/android/phone/BluetoothHandsfree;
.source "MiuiBluetoothHandsfree.java"


# instance fields
.field private mNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    .line 25
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MiuiNotificationMgr;

    iput-object v0, p0, Lcom/android/phone/MiuiBluetoothHandsfree;->mNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiBluetoothHandsfree;)Lcom/android/phone/MiuiNotificationMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/phone/MiuiBluetoothHandsfree;->mNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

    return-object v0
.end method

.method static init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    const-class v1, Lcom/android/phone/MiuiBluetoothHandsfree;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiBluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/phone/MiuiBluetoothHandsfree;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MiuiBluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/MiuiBluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    .line 35
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiBluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    monitor-exit v1

    return-object v0

    .line 33
    :cond_0
    const-string v0, "MiuiBluetoothHandsfree"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiBluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized disconnectHeadset()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/phone/BluetoothHandsfree;->disconnectHeadset()V

    .line 82
    iget-object v0, p0, Lcom/android/phone/MiuiBluetoothHandsfree;->mNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MiuiNotificationMgr;->cancelBluetoothBattery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initializeHandsfreeAtParser()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V

    .line 42
    iget-object v1, p0, Lcom/android/phone/MiuiBluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 45
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+XAPL"

    new-instance v2, Lcom/android/phone/MiuiBluetoothHandsfree$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiBluetoothHandsfree$1;-><init>(Lcom/android/phone/MiuiBluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 55
    const-string v1, "+IPHONEACCEV"

    new-instance v2, Lcom/android/phone/MiuiBluetoothHandsfree$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiBluetoothHandsfree$2;-><init>(Lcom/android/phone/MiuiBluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 71
    return-void
.end method

.method declared-synchronized onBluetoothDisabled()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 76
    iget-object v0, p0, Lcom/android/phone/MiuiBluetoothHandsfree;->mNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MiuiNotificationMgr;->cancelBluetoothBattery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
