.class Lcom/android/mms/ui/ConversationBase$9;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
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
    .line 1223
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->update()V

    .line 1232
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    .line 1233
    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$1002(Lcom/android/mms/ui/ConversationBase;Z)Z

    .line 1227
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationBase;->updateMessageCount(I)V

    .line 1228
    return-void
.end method
