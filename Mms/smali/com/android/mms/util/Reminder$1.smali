.class final Lcom/android/mms/util/Reminder$1;
.super Landroid/os/Handler;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/Reminder;->acquireWakeLock(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 105
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 108
    .local v0, seq:I
    #calls: Lcom/android/mms/util/Reminder;->releaseWakeLock(I)V
    invoke-static {v0}, Lcom/android/mms/util/Reminder;->access$000(I)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
