.class final Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    .line 433
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 434
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$400(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/EditableListView;->exitEditMode()V

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #calls: Lcom/android/mms/ui/ConversationFragment;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$100(Lcom/android/mms/ui/ConversationFragment;)V

    .line 518
    invoke-static {}, Lcom/android/mms/ui/ConversationFragment;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/android/mms/ui/ConversationFragment;->access$800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 520
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 438
    sparse-switch p1, :sswitch_data_0

    .line 491
    const-string v4, "ConversationFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete called with unknown token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 440
    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1500(Lcom/android/mms/ui/ConversationFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$300(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 443
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1600(Lcom/android/mms/ui/ConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #setter for: Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z
    invoke-static {v4, v6}, Lcom/android/mms/ui/ConversationFragment;->access$1602(Lcom/android/mms/ui/ConversationFragment;Z)Z

    .line 445
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 450
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1400(Lcom/android/mms/ui/ConversationFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationFragment;->access$1300(Lcom/android/mms/ui/ConversationFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 455
    :sswitch_1
    const/4 v0, 0x0

    .line 456
    .local v0, has:Z
    if-eqz p3, :cond_2

    .line 458
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_1

    .line 459
    const/4 v0, 0x1

    .line 462
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, p2

    .line 466
    check-cast v3, Ljava/util/Collection;

    .line 467
    .local v3, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v4, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationFragment;->access$700(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;-><init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v3, v0, v5}, Lcom/android/mms/ui/ConversationFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    goto :goto_0

    .line 462
    .end local v3           #threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 474
    .end local v0           #has:Z
    :sswitch_2
    if-eqz p3, :cond_0

    .line 476
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {p3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 477
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 478
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 479
    .local v1, thread:J
    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation$TimedThreads;->setHasTimedMessage(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 485
    .end local v1           #thread:J
    :catchall_1
    move-exception v4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 481
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1704(Lcom/android/mms/ui/ConversationFragment;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 482
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$300(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_2
        0x6a7 -> :sswitch_2
        0x70a -> :sswitch_1
    .end sparse-switch
.end method
