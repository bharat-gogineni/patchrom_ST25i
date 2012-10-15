.class public Lcom/android/phone/MiuiDelayedProximitySensorLock;
.super Ljava/lang/Object;
.source "MiuiDelayedProximitySensorLock.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeld:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;-><init>(Lcom/android/phone/MiuiDelayedProximitySensorLock;)V

    iput-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 58
    iput-object p1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mPowerManager:Landroid/os/PowerManager;

    .line 61
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensor:Landroid/hardware/Sensor;

    .line 63
    new-instance v0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;

    iget-object v1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;-><init>(Lcom/android/phone/MiuiDelayedProximitySensorLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized aquire()V
    .locals 4

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHeld:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHeld:Z

    .line 99
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 100
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delayAquire()V
    .locals 4

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-boolean v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHeld:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHeld:Z

    .line 110
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
