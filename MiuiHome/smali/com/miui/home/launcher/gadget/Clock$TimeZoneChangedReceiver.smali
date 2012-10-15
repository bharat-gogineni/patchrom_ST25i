.class Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Clock;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Clock;Lcom/miui/home/launcher/gadget/Clock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    #getter for: Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Clock;->access$000(Lcom/miui/home/launcher/gadget/Clock;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    #calls: Lcom/miui/home/launcher/gadget/Clock;->updateCurTime()V
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Clock;->access$100(Lcom/miui/home/launcher/gadget/Clock;)V

    .line 108
    :cond_1
    return-void
.end method
