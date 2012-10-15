.class Lcom/android/mms/ui/NewMessagePopupActivity$7;
.super Ljava/lang/Thread;
.source "NewMessagePopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

.field private message:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    #getter for: Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$400(Lcom/android/mms/ui/NewMessagePopupActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    #calls: Lcom/android/mms/ui/NewMessagePopupActivity;->markAsRead(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$600(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 450
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewMessagePopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 451
    .local v4, threadId:J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewMessagePopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v6, v6, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    aput-object v6, v2, v3

    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->message:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 454
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->sendMessage()Z

    .line 456
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity$7;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v8

    .line 458
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "NewMessagePopupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
