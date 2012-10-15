.class Lcom/android/mms/ui/ConversationFragment$5;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$5;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 360
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 361
    packed-switch p2, :pswitch_data_0

    .line 371
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 363
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$5;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationFragment;->access$400(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/EditableListView;->getSelectedItemId()J

    move-result-wide v0

    .line 364
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$5;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationFragment;->access$700(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 367
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
