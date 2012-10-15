.class Lcom/android/mms/ui/NewMessageActivity$12$3;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$12;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$12;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$12;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$12$3;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$12$3;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity$12;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$12$3;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    iget-object v1, v1, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$12$3;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity$12;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    const v1, 0x7f0a0143

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 792
    return-void
.end method
