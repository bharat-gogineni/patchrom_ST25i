.class Lcom/miui/home/launcher/gadget/WeatherBase$1;
.super Ljava/lang/Object;
.source "WeatherBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/WeatherBase;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/WeatherBase;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/WeatherBase;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/WeatherBase$1;->this$0:Lcom/miui/home/launcher/gadget/WeatherBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/32 v7, 0xea60

    .line 179
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase$1;->this$0:Lcom/miui/home/launcher/gadget/WeatherBase;

    #getter for: Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/WeatherBase;->access$000(Lcom/miui/home/launcher/gadget/WeatherBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase$1;->this$0:Lcom/miui/home/launcher/gadget/WeatherBase;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/WeatherBase;->updateCurTime()V

    .line 181
    const v0, 0xea60

    .line 182
    .local v0, interval:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase$1;->this$0:Lcom/miui/home/launcher/gadget/WeatherBase;

    #getter for: Lcom/miui/home/launcher/gadget/WeatherBase;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/WeatherBase;->access$200(Lcom/miui/home/launcher/gadget/WeatherBase;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/WeatherBase$1;->this$0:Lcom/miui/home/launcher/gadget/WeatherBase;

    #getter for: Lcom/miui/home/launcher/gadget/WeatherBase;->mTicker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/WeatherBase;->access$100(Lcom/miui/home/launcher/gadget/WeatherBase;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    rem-long/2addr v5, v7

    sub-long v5, v7, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
