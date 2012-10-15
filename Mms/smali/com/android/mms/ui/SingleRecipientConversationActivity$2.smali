.class Lcom/android/mms/ui/SingleRecipientConversationActivity$2;
.super Ljava/lang/Object;
.source "SingleRecipientConversationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SingleRecipientConversationActivity;->initMessageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SingleRecipientConversationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SingleRecipientConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;->this$0:Lcom/android/mms/ui/SingleRecipientConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;->this$0:Lcom/android/mms/ui/SingleRecipientConversationActivity;

    iget-object v3, v3, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, p3, v3

    .line 233
    .local v1, childIndex:I
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;->this$0:Lcom/android/mms/ui/SingleRecipientConversationActivity;

    iget-object v3, v3, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;->this$0:Lcom/android/mms/ui/SingleRecipientConversationActivity;

    iget-object v3, v3, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/android/mms/ui/MessageListItem;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/mms/ui/SingleRecipientConversationActivity$2;->this$0:Lcom/android/mms/ui/SingleRecipientConversationActivity;

    iget-object v3, v3, Lcom/android/mms/ui/SingleRecipientConversationActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 237
    .local v2, item:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 240
    .end local v0           #child:Landroid/view/View;
    .end local v2           #item:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    return-void
.end method
