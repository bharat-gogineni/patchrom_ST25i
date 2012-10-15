.class Lcom/android/mms/ui/MessageEditableActivityBase$15;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->onMaxPendingMessagesReached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$15;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$15;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$802(Lcom/android/mms/ui/MessageEditableActivityBase;Z)Z

    .line 840
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$15;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #getter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$900(Lcom/android/mms/ui/MessageEditableActivityBase;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$15;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$15;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v2, 0x7f0a0111

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$902(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$15;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #getter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$900(Lcom/android/mms/ui/MessageEditableActivityBase;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 845
    return-void
.end method
