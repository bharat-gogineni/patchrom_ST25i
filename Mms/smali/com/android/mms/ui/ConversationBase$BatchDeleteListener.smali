.class Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchDeleteListener"
.end annotation


# instance fields
.field private mDeleteLockedMessage:Z

.field private mSelectedMsgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, selectedMsgs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->mSelectedMsgs:Ljava/util/List;

    .line 367
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 375
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 376
    .local v11, smsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v8, mmsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->mSelectedMsgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 379
    .local v9, msg:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    .end local v9           #msg:Lcom/android/mms/ui/MessageItem;
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->mDeleteLockedMessage:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    const-string v7, ""

    .line 392
    .local v7, lockSelection:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationBase;->access$202(Lcom/android/mms/ui/ConversationBase;I)I

    .line 393
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 395
    const-string v10, ""

    .line 396
    .local v10, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v12

    .line 398
    .local v12, threadId:J
    const-string v0, "(%s=%s AND (%s IN (%s)))"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "thread_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ","

    invoke-static {v3, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 407
    .end local v12           #threadId:J
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$208(Lcom/android/mms/ui/ConversationBase;)I

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v10}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 412
    .end local v10           #selection:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 415
    .restart local v10       #selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$208(Lcom/android/mms/ui/ConversationBase;)I

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v10}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 420
    .end local v10           #selection:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$200(Lcom/android/mms/ui/ConversationBase;)I

    move-result v0

    if-lez v0, :cond_7

    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a0187

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 425
    :cond_7
    return-void

    .line 390
    .end local v7           #lockSelection:Ljava/lang/String;
    :cond_8
    const-string v7, "locked = 0"

    goto/16 :goto_1

    .line 404
    .restart local v7       #lockSelection:Ljava/lang/String;
    .restart local v10       #selection:Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessage"

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->mDeleteLockedMessage:Z

    .line 371
    return-void
.end method
