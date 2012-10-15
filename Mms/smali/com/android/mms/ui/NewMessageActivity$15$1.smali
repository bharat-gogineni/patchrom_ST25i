.class Lcom/android/mms/ui/NewMessageActivity$15$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$15;

.field final synthetic val$list:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$15;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1100
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$2100(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1101
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1102
    .local v0, c:Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/ui/NewMessageActivity;->addRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/NewMessageActivity;->access$2500(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$2000(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 1105
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 1106
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v3, v3, Lcom/android/mms/ui/NewMessageActivity$15;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1107
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$2600(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1108
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$1300(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 1110
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$15$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$15;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$15;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1111
    return-void
.end method
