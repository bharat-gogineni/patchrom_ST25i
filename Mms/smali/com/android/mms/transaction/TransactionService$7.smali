.class Lcom/android/mms/transaction/TransactionService$7;
.super Ljava/lang/Object;
.source "TransactionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService;->update(Lcom/android/mms/transaction/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;

.field final synthetic val$transaction:Lcom/android/mms/transaction/Transaction;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    iput-object p2, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    const-string v3, "Update transaction %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 666
    const-string v3, "Expecting %s to update but it is actually %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v2

    .line 670
    .local v2, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    .line 671
    .local v1, result:I
    const-string v3, "state"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v3, "uri"

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 674
    packed-switch v1, :pswitch_data_0

    .line 713
    const-string v3, "Transaction state unknown: %s. result=%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :cond_1
    :goto_0
    const-string v3, "update: broadcast transaction result %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 724
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$1002(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;

    .line 727
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 729
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)V

    .line 732
    :cond_2
    return-void

    .line 677
    :pswitch_0
    const-string v3, "Transaction complete: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 695
    :goto_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/LinkedHashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 696
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1204(Lcom/android/mms/transaction/TransactionService;)I

    goto :goto_0

    .line 686
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v3, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 688
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 692
    :pswitch_2
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/RateController;->update()V

    goto :goto_1

    .line 700
    :pswitch_3
    const-string v3, "Transaction failed: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 706
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/mms/transaction/TransactionService;->onTransactionFailure(Landroid/net/Uri;)V
    invoke-static {v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;Landroid/net/Uri;)V

    .line 707
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/LinkedHashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$7;->val$transaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 708
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$7;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1504(Lcom/android/mms/transaction/TransactionService;)I

    goto/16 :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 681
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
