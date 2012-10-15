.class Lcom/android/mms/ui/NewMessageActivity$8;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 472
    if-eqz p2, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessageActivity;->showSoftKeyboard()Z

    .line 486
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1600(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1300(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mAllowAnimation:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$200(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$100(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$200(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$100(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
