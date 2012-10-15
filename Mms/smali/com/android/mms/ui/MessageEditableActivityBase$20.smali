.class Lcom/android/mms/ui/MessageEditableActivityBase$20;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->resetMessageWithAnimation()V
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
    .line 1566
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1570
    .local v0, initialHeight:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->resetMessage()V
    invoke-static {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$1200(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    .line 1571
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1572
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/mms/ui/MessageListView;

    if-eqz v1, :cond_0

    .line 1573
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    check-cast v1, Lcom/android/mms/ui/MessageListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1575
    :cond_0
    int-to-float v3, v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x64

    :goto_0
    new-instance v5, Lcom/android/mms/ui/MessageEditableActivityBase$20$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$20$1;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase$20;)V

    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/mms/ui/LinearAnimator;->start(FFJLcom/android/mms/ui/LinearAnimator$FrameHandler;)V

    .line 1603
    return-void

    .line 1575
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1607
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1611
    return-void
.end method
