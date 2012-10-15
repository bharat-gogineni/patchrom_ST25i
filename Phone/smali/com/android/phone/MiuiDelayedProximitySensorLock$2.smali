.class Lcom/android/phone/MiuiDelayedProximitySensorLock$2;
.super Landroid/os/Handler;
.source "MiuiDelayedProximitySensorLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiDelayedProximitySensorLock;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiDelayedProximitySensorLock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    monitor-enter v1

    .line 67
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    monitor-exit v1

    .line 82
    return-void

    .line 69
    :pswitch_0
    const-string v0, "MiuiDelayedProximitySensorLock"

    const-string v2, "sensor active, go to sleep..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    #getter for: Lcom/android/phone/MiuiDelayedProximitySensorLock;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->access$200(Lcom/android/phone/MiuiDelayedProximitySensorLock;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 71
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->release()V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :pswitch_1
    :try_start_1
    const-string v0, "MiuiDelayedProximitySensorLock"

    const-string v2, "timed out, release sensor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->release()V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MiuiDelayedProximitySensorLock$2;->this$0:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->aquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
