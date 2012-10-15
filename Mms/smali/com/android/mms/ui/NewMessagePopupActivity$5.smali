.class Lcom/android/mms/ui/NewMessagePopupActivity$5;
.super Ljava/lang/Object;
.source "NewMessagePopupActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$5;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 177
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$5;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    #getter for: Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$400(Lcom/android/mms/ui/NewMessagePopupActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$5;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    #calls: Lcom/android/mms/ui/NewMessagePopupActivity;->sendMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$200(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    .line 186
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$5;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    const v1, 0x7f0a005a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
