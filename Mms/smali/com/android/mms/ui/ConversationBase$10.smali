.class Lcom/android/mms/ui/ConversationBase$10;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->showMessageAnimation()V
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
    .line 1569
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1578
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/PesudoListView;->setVisibility(I)V

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 1580
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    #setter for: Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ConversationBase;->access$1302(Lcom/android/mms/ui/ConversationBase;Z)Z

    .line 1581
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$1400(Lcom/android/mms/ui/ConversationBase;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$1400(Lcom/android/mms/ui/ConversationBase;)Landroid/database/Cursor;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$1500(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V

    .line 1583
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$10;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$1402(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1585
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1575
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1572
    return-void
.end method
