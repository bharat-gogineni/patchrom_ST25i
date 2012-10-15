.class Lcom/android/mms/ui/NewMessageActivity$12;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->addRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$c:Lcom/android/mms/data/Contact;

.field final synthetic val$origNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Ljava/lang/String;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$12;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$c:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 756
    new-instance v1, Lcom/android/mms/ui/ContextMenuDialog;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$12;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 757
    .local v1, menu:Lcom/android/mms/ui/ContextMenuDialog;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    .line 758
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$c:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    const-string v2, "%s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$c:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    .line 760
    const v2, 0x7f0a0074

    new-instance v3, Lcom/android/mms/ui/NewMessageActivity$12$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessageActivity$12$1;-><init>(Lcom/android/mms/ui/NewMessageActivity$12;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 784
    :cond_0
    :goto_0
    const v2, 0x7f0a0142

    new-instance v3, Lcom/android/mms/ui/NewMessageActivity$12$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessageActivity$12$3;-><init>(Lcom/android/mms/ui/NewMessageActivity$12;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 794
    invoke-virtual {v1}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    .line 795
    return v6

    .line 769
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "phone"

    .line 772
    .local v0, insert:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 773
    const v2, 0x7f0a0145

    new-instance v3, Lcom/android/mms/ui/NewMessageActivity$12$2;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/NewMessageActivity$12$2;-><init>(Lcom/android/mms/ui/NewMessageActivity$12;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 769
    .end local v0           #insert:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "email"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
