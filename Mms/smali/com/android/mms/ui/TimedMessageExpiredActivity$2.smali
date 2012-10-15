.class Lcom/android/mms/ui/TimedMessageExpiredActivity$2;
.super Ljava/lang/Object;
.source "TimedMessageExpiredActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TimedMessageExpiredActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 83
    iput-object p1, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$2;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$2;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    #calls: Lcom/android/mms/ui/TimedMessageExpiredActivity;->markExpiredMsgAsFailed()V
    invoke-static {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->access$200(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$2;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->finish()V

    .line 88
    return-void
.end method
