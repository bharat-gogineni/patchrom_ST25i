.class Lcom/android/mms/ui/ConversationBase$1;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->loadMessageContent()V
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
    .line 312
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$1;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$1;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationBase;->mIsSoftInputEnabled:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$1;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$1;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$1;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$002(Lcom/android/mms/ui/ConversationBase;Z)Z

    .line 320
    :cond_0
    return-void
.end method
