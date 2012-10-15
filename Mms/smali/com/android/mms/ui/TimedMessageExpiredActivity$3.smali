.class Lcom/android/mms/ui/TimedMessageExpiredActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TimedMessageExpiredActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TimedMessageExpiredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, reason:Ljava/lang/String;
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/TimedMessageExpiredActivity$3$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity$3$1;-><init>(Lcom/android/mms/ui/TimedMessageExpiredActivity$3;)V

    const-string v3, "MarkMsgFailedThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_0
    return-void
.end method
