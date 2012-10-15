.class Lcom/android/mms/ui/MessageEditableActivityBase$20$1$1;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase$20$1;->onEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/MessageEditableActivityBase$20$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase$20$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1593
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$20$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$20;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$20$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$20;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$20$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$20;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onResetMessageAnimationEnd()V

    .line 1597
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$20$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$20;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$20;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1598
    return v1
.end method
