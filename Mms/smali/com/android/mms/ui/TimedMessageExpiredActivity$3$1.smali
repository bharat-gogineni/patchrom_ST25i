.class Lcom/android/mms/ui/TimedMessageExpiredActivity$3$1;
.super Ljava/lang/Object;
.source "TimedMessageExpiredActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TimedMessageExpiredActivity$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/TimedMessageExpiredActivity$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TimedMessageExpiredActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3$1;->this$1:Lcom/android/mms/ui/TimedMessageExpiredActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3$1;->this$1:Lcom/android/mms/ui/TimedMessageExpiredActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    #calls: Lcom/android/mms/ui/TimedMessageExpiredActivity;->markExpiredMsgAsFailed()V
    invoke-static {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->access$200(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3$1;->this$1:Lcom/android/mms/ui/TimedMessageExpiredActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->finish()V

    .line 112
    return-void
.end method
