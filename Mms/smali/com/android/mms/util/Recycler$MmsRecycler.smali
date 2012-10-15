.class public Lcom/android/mms/util/Recycler$MmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsRecycler"
.end annotation


# static fields
.field private static final ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "count(*) as msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 291
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date_full"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 304
    const-string v0, "MaxMmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$MmsRecycler;->MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    return-void
.end method

.method private deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "latestDate"

    .prologue
    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND locked=0 AND date*1000+date_ms_part<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 442
    .local v0, cntDeleted:J
    return-void
.end method


# virtual methods
.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 13
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 390
    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v10, 0x0

    .line 394
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 396
    .local v7, latestDate:J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 397
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v5, "thread_id=? AND (m_type=? OR m_type=? OR m_type=?) AND locked=0"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v1

    const/4 v1, 0x1

    const/16 v12, 0x80

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v1

    const/4 v1, 0x2

    const/16 v12, 0x84

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v1

    const/4 v1, 0x3

    const/16 v12, 0x82

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v1

    const-string v7, "date_full DESC"

    .end local v7           #latestDate:J
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 407
    if-nez v10, :cond_2

    .line 408
    const-string v1, "Recycler"

    const-string v3, "MMS: deleteMessagesForThread got back null cursor"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v10, :cond_0

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 412
    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 413
    .local v9, count:I
    sub-int v11, v9, p4

    .line 419
    .local v11, numberToDelete:I
    if-gtz v11, :cond_3

    .line 426
    if-eqz v10, :cond_0

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 423
    :cond_3
    :try_start_2
    move/from16 v0, p4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->move(I)Z

    .line 424
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v7

    .line 426
    .restart local v7       #latestDate:J
    if-eqz v10, :cond_4

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    .line 430
    invoke-direct/range {v3 .. v8}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 426
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v7           #latestDate:J
    .end local v9           #count:I
    .end local v11           #numberToDelete:I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 16
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 336
    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v9, 0x0

    .line 340
    .local v9, cursor:Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 341
    .local v11, latestDate:J
    const-wide/16 v4, 0x0

    .line 343
    .local v4, threadId:J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, msgId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 345
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "thread_id in (select thread_id from pdu where _id=?) AND (m_type=? OR m_type=? OR m_type=?) AND locked=0"

    .end local v4           #threadId:J
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v5, v0

    const/4 v0, 0x1

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v0

    const/4 v0, 0x2

    const/16 v15, 0x84

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v0

    const/4 v0, 0x3

    const/16 v15, 0x82

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v0

    const-string v6, "date_full DESC"

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 356
    if-nez v9, :cond_2

    .line 357
    const-string v0, "Recycler"

    const-string v2, "MMS: deleteOldMessagesInSameThreadAsMessage got back null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    if-eqz v9, :cond_0

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 361
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 362
    .local v8, count:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 363
    .local v10, keep:I
    sub-int v14, v8, v10

    .line 369
    .local v14, numberToDelete:I
    if-gtz v14, :cond_3

    .line 377
    if-eqz v9, :cond_0

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 373
    :cond_3
    :try_start_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->move(I)Z

    .line 374
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 375
    .end local v11           #latestDate:J
    .local v6, latestDate:J
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v4

    .line 377
    .restart local v4       #threadId:J
    if-eqz v9, :cond_4

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 382
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 377
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v4           #threadId:J
    .end local v6           #latestDate:J
    .end local v8           #count:I
    .end local v10           #keep:I
    .end local v13           #msgId:Ljava/lang/String;
    .end local v14           #numberToDelete:I
    .restart local v11       #latestDate:J
    :catchall_0
    move-exception v0

    move-wide v6, v11

    .end local v11           #latestDate:J
    .restart local v6       #latestDate:J
    :goto_1
    if-eqz v9, :cond_5

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 377
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v8       #count:I
    .restart local v10       #keep:I
    .restart local v13       #msgId:Ljava/lang/String;
    .restart local v14       #numberToDelete:I
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 307
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMMSMessagesPerThread()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 313
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void
.end method
