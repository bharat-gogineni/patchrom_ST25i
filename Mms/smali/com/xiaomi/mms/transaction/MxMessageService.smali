.class public Lcom/xiaomi/mms/transaction/MxMessageService;
.super Landroid/app/IntentService;
.source "MxMessageService.java"


# static fields
.field private static final SMS_MX_STATUS:Landroid/net/Uri;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "content://sms/mx_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mms/transaction/MxMessageService;->SMS_MX_STATUS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "MxMessageService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private canNewMessagePopupActiviyShow()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    iget-object v2, p0, Lcom/xiaomi/mms/transaction/MxMessageService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v2, :cond_0

    move v2, v3

    .line 402
    :goto_0
    return v2

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mms/transaction/MxMessageService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 389
    .local v0, cn:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 391
    .local v1, telManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 393
    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.mms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.mms.ui.NewMessagePopupActivity"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 399
    goto :goto_0

    :cond_2
    move v2, v4

    .line 402
    goto :goto_0
.end method

.method private static getMessageUriFromMxId(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .locals 10
    .parameter "resolver"
    .parameter "mxId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 220
    const/4 v7, 0x0

    .line 221
    .local v7, messageUri:Landroid/net/Uri;
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mx_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 226
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 228
    .local v8, smsId:J
    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 231
    .end local v8           #smsId:J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1
    return-object v7

    .line 231
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMxCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 243
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_mx_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private increaseMxCount()V
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_mx_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, count:I
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_mx_count"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method

.method public static resetMxCount(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 247
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_mx_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method

.method private storeSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 285
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_2

    .line 287
    :cond_0
    const-string v0, "MxMessageService"

    const-string v1, "from or pdu not nullable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mx_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 297
    if-eqz v2, :cond_6

    .line 299
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v0, v7

    .line 301
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    :goto_2
    if-eqz v0, :cond_4

    .line 305
    const-string v0, "MxMessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicated message received, msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v8

    .line 299
    goto :goto_1

    .line 301
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 309
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    const-string v4, "address"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const-string v2, "date_sent"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    const-string v2, "protocol"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v2, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v2, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v2, "reply_path_present"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v2, "service_center"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v2, "error_code"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v2, "body"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {p1, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 322
    const-string v3, "thread_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    const-string v2, "mx_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v2, "mx_status"

    const v3, 0x10001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v2, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 330
    const-string v1, "MxMessageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mi message inserted, uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz v0, :cond_1

    .line 335
    invoke-static {p0, v7, v8}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 339
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 342
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_enable_new_message_popup"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAccessControlledOrPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->canNewMessagePopupActiviyShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-static {p0, p2}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->getSmsAct(Landroid/content/Context;)I

    move-result v1

    .line 356
    if-eqz v1, :cond_5

    move v8, v7

    .line 362
    :cond_5
    if-nez v8, :cond_1

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    const-string v2, "mxType"

    const-string v3, "sms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v2, "from"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 369
    const/high16 v0, 0x3400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1}, Lcom/xiaomi/mms/transaction/MxMessageService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    move v0, v8

    goto/16 :goto_2
.end method

.method private updateSmsStatus(Landroid/content/Context;JI)I
    .locals 10
    .parameter "context"
    .parameter "msgId"
    .parameter "status"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 252
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "mx_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const/16 v3, 0x10

    if-ne p4, v3, :cond_1

    .line 255
    const-string v3, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    :cond_0
    :goto_0
    sget-object v3, Lcom/xiaomi/mms/transaction/MxMessageService;->SMS_MX_STATUS:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 262
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mx_status!=0 AND mx_status!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, update:I
    const-string v3, "MxMessageService"

    const-string v4, "sms mx msg updated, msgId:%s, status:%s, affected rows:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v0

    .line 256
    .end local v0           #update:I
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    const/16 v3, 0x11

    if-ne p4, v3, :cond_0

    .line 257
    const-string v3, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v3, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 78
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxMessageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaomi/mms/transaction/MxMessageService;->mActivityManager:Landroid/app/ActivityManager;

    .line 80
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 31
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, action:Ljava/lang/String;
    const-string v2, "from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, fromId:Ljava/lang/String;
    const-string v2, "to"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 87
    .local v27, toId:Ljava/lang/String;
    const-string v2, "packetId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, packetId:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getMyFullMid()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, myMid:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "MxMessageService"

    const-string v6, "use TO address as sender"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move-object/from16 v3, v27

    .line 100
    :cond_0
    invoke-static {v4}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->getSimpleMid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 101
    .local v26, simpleMid:Ljava/lang/String;
    const-string v2, "com.xiaomi.mms.mx.ACTION_HANDLE_MX_RECEIVED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    invoke-static {v5}, Lcom/xiaomi/mms/data/RecentMessageCache;->contain(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const-string v2, "MxMessageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicated message received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    const-string v2, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, body:Ljava/lang/String;
    const-string v2, "fromType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 109
    .local v19, fromType:Ljava/lang/String;
    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, address:Ljava/lang/String;
    const/16 v21, 0x0

    .line 112
    .local v21, jObj:Lorg/json/JSONObject;
    :try_start_0
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21           #jObj:Lorg/json/JSONObject;
    .local v22, jObj:Lorg/json/JSONObject;
    move-object/from16 v21, v22

    .line 119
    .end local v22           #jObj:Lorg/json/JSONObject;
    .restart local v21       #jObj:Lorg/json/JSONObject;
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v21, :cond_5

    .line 120
    const-string v2, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 121
    .local v28, type:Ljava/lang/String;
    const-string v2, "sentTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 123
    .local v10, sentTime:Ljava/lang/Long;
    const-string v2, "MxMessageService"

    const-string v6, "get msg from :%s, type: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v30, 0x0

    aput-object v4, v7, v30

    const/16 v30, 0x1

    aput-object v28, v7, v30

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v2, "sms"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    const-string v2, "pdu"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, pdu:Ljava/lang/String;
    const-string v2, "msgId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 129
    .local v11, msgId:J
    const-string v2, "phone"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v16

    .line 134
    .local v16, contact:Lcom/android/mms/data/Contact;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v25

    .line 135
    .local v25, phone:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/xiaomi/mms/data/MxIdCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static/range {v25 .. v25}, Lcom/xiaomi/mms/data/MxIdCache;->online(Ljava/lang/String;)V

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    .line 138
    invoke-direct/range {v6 .. v12}, Lcom/xiaomi/mms/transaction/MxMessageService;->storeSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    .line 139
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    const-string v2, "MxMessageService"

    const-string v6, "DELIVERED ACK sent"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v9           #pdu:Ljava/lang/String;
    .end local v10           #sentTime:Ljava/lang/Long;
    .end local v11           #msgId:J
    .end local v16           #contact:Lcom/android/mms/data/Contact;
    .end local v25           #phone:Ljava/lang/String;
    .end local v28           #type:Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Lcom/xiaomi/mms/data/RecentMessageCache;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v17

    .line 114
    .local v17, e:Lorg/json/JSONException;
    const-string v2, "MxMessageService"

    const-string v6, "receive message with malformed body"

    move-object/from16 v0, v17

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const-string v6, "malformed-body"

    const-string v7, "json exception when process msg body"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 146
    .end local v17           #e:Lorg/json/JSONException;
    .restart local v9       #pdu:Ljava/lang/String;
    .restart local v10       #sentTime:Ljava/lang/Long;
    .restart local v11       #msgId:J
    .restart local v28       #type:Ljava/lang/String;
    :cond_3
    const-string v6, "unsupported-source"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown source type: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    const-string v2, "MxMessageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown source type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 153
    .end local v9           #pdu:Ljava/lang/String;
    .end local v11           #msgId:J
    :cond_4
    const-string v6, "unsupported-type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported msg type: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    const-string v2, "MxMessageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown msg type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 160
    .end local v10           #sentTime:Ljava/lang/Long;
    .end local v28           #type:Ljava/lang/String;
    :cond_5
    const-string v2, "MxMessageService"

    const-string v6, "receive mi message without body"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 164
    .end local v8           #address:Ljava/lang/String;
    .end local v15           #body:Ljava/lang/String;
    .end local v19           #fromType:Ljava/lang/String;
    .end local v21           #jObj:Lorg/json/JSONObject;
    :cond_6
    const-string v2, "com.xiaomi.mms.mx.ACTION_HANDLE_MX_SENT"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    const-string v2, "msgId"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 166
    .restart local v11       #msgId:J
    invoke-static {v11, v12}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->isSms(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const/16 v2, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/xiaomi/mms/transaction/MxMessageService;->updateSmsStatus(Landroid/content/Context;JI)I

    goto/16 :goto_0

    .line 169
    .end local v11           #msgId:J
    :cond_7
    const-string v2, "com.xiaomi.mms.mx.ACTION_HANDLE_MX_DELIVERED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 170
    invoke-static {v5}, Lcom/xiaomi/mms/data/RecentMessageCache;->contain(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendAckToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    const-string v2, "MxMessageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicated DELIVERED received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    :cond_8
    const-string v2, "msgId"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 177
    .restart local v11       #msgId:J
    invoke-static {v11, v12}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->isSms(J)Z

    move-result v20

    .line 178
    .local v20, isSms:Z
    const-string v2, "error"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 179
    .local v18, error:Z
    if-eqz v18, :cond_a

    .line 181
    if-eqz v20, :cond_9

    .line 182
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/android/mms/ui/MessageUtils;->handleMxSmsFailed(Landroid/content/Context;J)V

    .line 201
    :cond_9
    :goto_3
    invoke-static {v5}, Lcom/xiaomi/mms/data/RecentMessageCache;->add(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendAckToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 185
    :cond_a
    if-eqz v20, :cond_9

    .line 186
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/xiaomi/mms/transaction/MxMessageService;->updateSmsStatus(Landroid/content/Context;JI)I

    move-result v29

    .line 188
    .local v29, update:I
    if-lez v29, :cond_9

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->increaseMxCount()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v11, v12}, Lcom/xiaomi/mms/transaction/MxMessageService;->getMessageUriFromMxId(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v23

    .line 193
    .local v23, messageUri:Landroid/net/Uri;
    if-eqz v23, :cond_9

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_3

    .line 203
    .end local v11           #msgId:J
    .end local v18           #error:Z
    .end local v20           #isSms:Z
    .end local v23           #messageUri:Landroid/net/Uri;
    .end local v29           #update:I
    :cond_b
    const-string v2, "com.xiaomi.mms.mx.ACTION_HANDLE_PRESENCE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const-string v2, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 205
    .local v24, mid:Ljava/lang/String;
    const-string v2, "available"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 206
    .local v14, available:Z
    invoke-static/range {v24 .. v24}, Lcom/xiaomi/mms/data/MidPhoneMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 207
    .restart local v25       #phone:Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 208
    if-eqz v25, :cond_1

    .line 209
    invoke-static/range {v25 .. v25}, Lcom/xiaomi/mms/data/MxIdCache;->online(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_c
    if-eqz v25, :cond_1

    .line 213
    invoke-static/range {v25 .. v25}, Lcom/xiaomi/mms/data/MxIdCache;->offline(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
