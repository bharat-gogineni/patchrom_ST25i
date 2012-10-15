.class Lcom/android/phone/MiuiDelayedProximitySensorLock$1;
.super Ljava/lang/Object;
.source "MiuiDelayedProximitySensorLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiDelayedProximitySensorLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiDelayedProximitySensorLock;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 54
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 37
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v0

    .line 40
    .local v1, distance:F
    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v3, 0x40a0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    #getter for: Lcom/android/phone/MiuiDelayedProximitySensorLock;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->access$000(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    move v0, v2

    .line 43
    .local v0, active:Z
    :cond_0
    if-eqz v0, :cond_2

    .line 44
    iget-object v3, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    #getter for: Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->access$100(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    #getter for: Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->access$100(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$1;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    #getter for: Lcom/android/phone/MiuiDelayedProximitySensorLock;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->access$100(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
