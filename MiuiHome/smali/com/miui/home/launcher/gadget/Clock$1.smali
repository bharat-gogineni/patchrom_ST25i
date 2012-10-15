.class Lcom/miui/home/launcher/gadget/Clock$1;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Clock;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Clock;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 43
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    #getter for: Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Clock;->access$000(Lcom/miui/home/launcher/gadget/Clock;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    #calls: Lcom/miui/home/launcher/gadget/Clock;->updateCurTime()V
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Clock;->access$100(Lcom/miui/home/launcher/gadget/Clock;)V

    .line 46
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->getUpdateInterval()I

    move-result v0

    .line 47
    .local v0, interval:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    #getter for: Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Clock;->access$300(Lcom/miui/home/launcher/gadget/Clock;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    #getter for: Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Clock;->access$200(Lcom/miui/home/launcher/gadget/Clock;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, v0

    rem-long/2addr v7, v9

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
