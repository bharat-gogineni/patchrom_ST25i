.class Lcom/android/mms/ui/ConversationBase$3;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->initMessageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ConversationBase;->mIsShowAllMsgList:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$402(Lcom/android/mms/ui/ConversationBase;Z)Z

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$500(Lcom/android/mms/ui/ConversationBase;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$500(Lcom/android/mms/ui/ConversationBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    .line 455
    return-void
.end method
