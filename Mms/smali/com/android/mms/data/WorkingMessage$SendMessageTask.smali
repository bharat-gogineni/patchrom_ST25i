.class Lcom/android/mms/data/WorkingMessage$SendMessageTask;
.super Landroid/os/AsyncTask;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mConv:Lcom/android/mms/data/Conversation;

.field private mMmsUri:Landroid/net/Uri;

.field private mMsgText:Ljava/lang/String;

.field private mNeedShow:Z

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecipientsInUI:Ljava/lang/String;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mWasSent:Z

.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "slideshow"

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1215
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    .line 1216
    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->access$000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMmsUri:Landroid/net/Uri;

    .line 1217
    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 1218
    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    .line 1220
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "conv"
    .parameter "msgText"
    .parameter "recipientsInUI"

    .prologue
    const/4 v0, 0x1

    .line 1222
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1224
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    .line 1225
    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMsgText:Ljava/lang/String;

    .line 1226
    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mRecipientsInUI:Ljava/lang/String;

    .line 1228
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    .line 1229
    return-void

    .line 1228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "conv"
    .parameter "msgText"
    .parameter "recipientsInUI"

    .prologue
    const-wide/16 v7, 0x0

    .line 1281
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1283
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1285
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 1288
    .local v1, origThreadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v4

    .line 1290
    .local v4, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, semiSepRecipients:Ljava/lang/String;
    cmp-long v6, v1, v7

    if-eqz v6, :cond_0

    cmp-long v6, v1, v4

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1295
    :cond_1
    cmp-long v6, v1, v7

    if-eqz v6, :cond_3

    cmp-long v6, v1, v4

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WorkingMessage.preSendSmsWorker threadId changed or recipients changed. origThreadId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new threadId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " also mConversation.getThreadId(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, msg:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1311
    .end local v0           #msg:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2, v3, v4, v5}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1314
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v6, v4, v5}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;J)V

    .line 1315
    return-void

    .line 1295
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recipients in window: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" differ from recipients from conv: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 23
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"

    .prologue
    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1342
    const/4 v10, 0x0

    .line 1344
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/WorkingMessage;->access$900()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1346
    if-eqz v10, :cond_2

    .line 1347
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 1349
    .local v16, maxMessageSize:J
    const-wide/16 v21, 0x0

    .line 1350
    .local v21, totalPendingSize:J
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1351
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long v21, v21, v4

    goto :goto_0

    .line 1353
    :cond_0
    cmp-long v4, v21, v16

    if-ltz v4, :cond_2

    .line 1354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    if-eqz v10, :cond_1

    .line 1361
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1443
    .end local v16           #maxMessageSize:J
    .end local v21           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 1360
    :cond_2
    if-eqz v10, :cond_3

    .line 1361
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1364
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1365
    const-wide/16 v19, 0x0

    .line 1368
    .local v19, threadId:J
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1372
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v19

    .line 1374
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v11

    .line 1380
    .local v11, dests:[Ljava/lang/String;
    array-length v4, v11

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    const/4 v7, 0x0

    aget-object v7, v11, v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/data/Conversation;->verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1386
    .local v18, newAddress:Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1387
    const/4 v4, 0x0

    aput-object v18, v11, v4

    .line 1388
    invoke-static {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    .line 1389
    .local v14, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_5

    .line 1390
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1395
    .end local v14           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #newAddress:Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_7

    .line 1397
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    #calls: Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 1404
    :goto_2
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-wide/from16 v0, v19

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v4, v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;J)V

    .line 1412
    const/4 v15, 0x0

    .line 1414
    .local v15, error:I
    :try_start_2
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->finalResize(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1420
    :goto_3
    if-eqz v15, :cond_8

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p2

    #calls: Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V
    invoke-static {v4, v0}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v4

    invoke-interface {v4, v15}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentError(I)V

    goto/16 :goto_1

    .line 1360
    .end local v11           #dests:[Ljava/lang/String;
    .end local v15           #error:I
    .end local v19           #threadId:J
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    .line 1361
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 1400
    .restart local v11       #dests:[Ljava/lang/String;
    .restart local v19       #threadId:J
    :cond_7
    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->setMmsSendTime(Landroid/content/Context;Landroid/net/Uri;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1404
    .end local v11           #dests:[Ljava/lang/String;
    :catchall_1
    move-exception v4

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v4

    .line 1415
    .restart local v11       #dests:[Ljava/lang/String;
    .restart local v15       #error:I
    :catch_0
    move-exception v13

    .line 1416
    .local v13, e1:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v15, -0x2

    .line 1419
    goto :goto_3

    .line 1417
    .end local v13           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v13

    .line 1418
    .local v13, e1:Lcom/google/android/mms/MmsException;
    const/4 v15, -0x1

    goto :goto_3

    .line 1426
    .end local v13           #e1:Lcom/google/android/mms/MmsException;
    :cond_8
    const-string v4, "sendMmsWorker sending message: threadId=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    new-instance v3, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    int-to-long v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    invoke-static {v5}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v8

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JJ)V

    .line 1430
    .local v3, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_4
    invoke-interface {v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1437
    :cond_9
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1442
    :goto_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mWasSent:Z

    goto/16 :goto_1

    .line 1438
    :catch_2
    move-exception v12

    .line 1439
    .local v12, e:Ljava/lang/Exception;
    const-string v4, "WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"

    .prologue
    .line 1318
    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1320
    .local v2, dests:[Ljava/lang/String;
    const-string v1, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsWorker sending message: recipients="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v6

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1325
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->sendMessage()Z

    .line 1328
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mWasSent:Z

    .line 1334
    return-void

    .line 1329
    :catch_0
    move-exception v8

    .line 1330
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateSendStats(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter "conv"

    .prologue
    .line 1271
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, dests:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    .local v1, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 1275
    .local v2, updater:Lcom/android/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v2, v1}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    .line 1276
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1192
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 1259
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v5

    .line 1260
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1264
    .end local v5           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    .line 1265
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1266
    const/4 v0, 0x0

    return-object v0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMsgText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mRecipientsInUI:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1192
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mWasSent:Z

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1236
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1240
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    if-eqz v0, :cond_0

    .line 1245
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1246
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1248
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1250
    :cond_0
    return-void
.end method
