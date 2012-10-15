.class public Lcom/miui/home/launcher/gadget/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Clock$ClockStyle;,
        Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;
    }
.end annotation


# instance fields
.field protected mCalendar:Ljava/util/Calendar;

.field protected mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/Clock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->updateCurTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/Clock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/Clock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateCurTime()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->updateAppearance(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "com.miui.home.launcher.gadget.Clock"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Clock$1;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    .line 72
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/miui/home/launcher/gadget/Clock;Lcom/miui/home/launcher/gadget/Clock$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V
    .locals 0
    .parameter "clockStyle"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->updateCurTime()V

    .line 85
    return-void
.end method
