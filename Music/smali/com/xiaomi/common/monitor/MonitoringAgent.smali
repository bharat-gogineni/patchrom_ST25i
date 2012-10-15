.class public Lcom/xiaomi/common/monitor/MonitoringAgent;
.super Ljava/lang/Object;
.source "MonitoringAgent.java"


# static fields
.field private static final API_STAT_URL:Ljava/lang/String; = "http://stat.api.xiaomi.com/stat.php"

.field public static final LOG_TAG:Ljava/lang/String; = "com.xiaomi.common.Monitoring"

.field static agent:Lcom/xiaomi/common/monitor/MonitoringAgent; = null

.field private static customStatUploadUrl:Ljava/lang/String; = null

.field private static customUUID:Ljava/lang/String; = null

.field private static final sDefaultNumberOfRecordPerSending:I = 0x64

.field private static final sProcessLock:Ljava/lang/String; = "process-lock"

.field private static final sStatUploadProcessLock:Ljava/lang/String; = "stat-upload-process-lock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/xiaomi/common/monitor/MonitoringDbHelper;

.field private noMoreRecord:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    .line 50
    sput-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customUUID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Lcom/xiaomi/common/monitor/MonitoringDbHelper;

    invoke-direct {v0, p1}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/monitor/MonitoringDbHelper;

    .line 59
    iput-object p1, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/common/monitor/MonitoringAgent;
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    sget-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/xiaomi/common/monitor/MonitoringAgent;

    invoke-direct {v0, p0}, Lcom/xiaomi/common/monitor/MonitoringAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    return-object v0
.end method

.method public static getStatUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://stat.api.xiaomi.com/stat.php"

    goto :goto_0
.end method

.method static getStatUploadUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 346
    const-string v0, "%1$s?%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/common/monitor/MonitoringAgent;->getStatUploadUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/xiaomi/common/monitor/MonitoringAgent;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getToSendRecords(I)Ljava/util/List;
    .locals 13
    .parameter "limitCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    if-gtz p1, :cond_0

    .line 191
    const/16 p1, 0x64

    .line 193
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v11, ret:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;>;"
    const-string v12, "process-lock"

    monitor-enter v12

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/monitor/MonitoringDbHelper;

    invoke-virtual {v1}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 197
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 200
    .local v10, iterator:Landroid/database/Cursor;
    :try_start_1
    const-string v1, "record"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "schedule"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "%1$s<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "timestamp"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/xiaomi/common/util/DateTimeHelper;->getTodayStartTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 210
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :try_start_2
    new-instance v1, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    invoke-direct {v1, v10}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v9

    .line 214
    .local v9, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v2, "failed to load the report stat"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 217
    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 218
    .local v9, e:Landroid/database/SQLException;
    :try_start_4
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v2, "failed to read the report stat into database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    if-eqz v10, :cond_1

    .line 221
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 224
    .end local v9           #e:Landroid/database/SQLException;
    :goto_1
    monitor-exit v12

    .line 226
    return-object v11

    .line 220
    :cond_2
    if-eqz v10, :cond_3

    .line 221
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 224
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #iterator:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 220
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #iterator:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_4

    .line 221
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 361
    sget-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customUUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customUUID:Ljava/lang/String;

    .line 363
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setStatUploadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "statUploadUrl"

    .prologue
    .line 368
    sput-object p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public static setUUID(Ljava/lang/String;)V
    .locals 0
    .parameter "UUID"

    .prologue
    .line 374
    sput-object p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->customUUID:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method afterSend(J)V
    .locals 8
    .parameter "latestRecordRowId"

    .prologue
    .line 233
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "latestRecordRowId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_0
    const-string v3, "process-lock"

    monitor-enter v3

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/monitor/MonitoringDbHelper;

    invoke-virtual {v2}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 240
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "record"

    const-string v4, "%s<=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "com.xiaomi.common.Monitoring"

    const-string v4, "failed to write the report stat into database"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 249
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 247
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method isStatPostSuccessful(Ljava/lang/String;)Z
    .locals 7
    .parameter "responseXml"

    .prologue
    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    const/4 v4, 0x0

    .line 316
    .local v4, xmldoc:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 317
    .local v0, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 318
    .local v2, inputSource:Lorg/xml/sax/InputSource;
    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/util/Xml$Encoding;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 321
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 322
    .local v3, rootElement:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_0

    const-string v5, "code"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "code"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    const/4 v5, 0x1

    .line 337
    .end local v0           #docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #inputSource:Lorg/xml/sax/InputSource;
    .end local v3           #rootElement:Lorg/w3c/dom/Element;
    .end local v4           #xmldoc:Lorg/w3c/dom/Document;
    :goto_0
    return v5

    .line 326
    .restart local v4       #xmldoc:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4           #xmldoc:Lorg/w3c/dom/Document;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 328
    .restart local v4       #xmldoc:Lorg/w3c/dom/Document;
    :catch_1
    move-exception v1

    .line 329
    .local v1, e:Lorg/xml/sax/SAXException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 331
    .local v1, e:Ljava/io/IOException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 333
    .local v1, e:Lorg/w3c/dom/DOMException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Lorg/w3c/dom/DOMException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public prepareHttpPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .parameter "version"
    .parameter "uuid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;>;"
    if-nez p1, :cond_0

    .line 263
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "version"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 264
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 265
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "uuid"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 266
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 267
    :cond_2
    const/4 v8, 0x0

    .line 301
    :goto_0
    return-object v8

    .line 269
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/xiaomi/common/monitor/Misc;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 270
    .local v6, info:Landroid/content/pm/PackageInfo;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v8, ret:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "product"

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.xiaomi."

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "uuid"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "version"

    move-object/from16 v0, p1

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v9

    .line 276
    .local v9, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v10, Ljava/io/StringWriter;

    const/16 v11, 0x200

    invoke-direct {v10, v11}, Ljava/io/StringWriter;-><init>(I)V

    .line 277
    .local v10, writer:Ljava/io/StringWriter;
    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 278
    const-string v11, ""

    const-string v12, "root"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    .line 282
    .local v7, rec:Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    :try_start_0
    const-string v11, ""

    const-string v12, "item"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const-string v11, ""

    const-string v12, "key"

    invoke-virtual {v7}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    const-string v11, ""

    const-string v12, "timestamp"

    invoke-virtual {v7}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    invoke-virtual {v7}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    const-string v11, ""

    const-string v12, "item"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 287
    :catch_0
    move-exception v4

    .line 288
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v11, "com.xiaomi.common.Monitoring"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ignoring bad item: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v11, "com.xiaomi.common.Monitoring"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #rec:Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    :cond_4
    const-string v11, ""

    const-string v12, "root"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 294
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, data:Ljava/lang/String;
    const-string v11, "UTF-8"

    invoke-virtual {v1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 297
    .local v2, dataBytes:[B
    invoke-static {v2}, Lcom/xiaomi/common/util/Base64Coder;->encode([B)[C

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, dataEncoded:Ljava/lang/String;
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "data"

    invoke-direct {v11, v12, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "data-auth"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "564F6D5C-51DB-11DF-91BC-77CDDFD72085"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/common/util/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public report(Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;)V
    .locals 18
    .parameter "record"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "record"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    const-string v17, "process-lock"

    monitor-enter v17

    .line 79
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/monitor/MonitoringDbHelper;

    invoke-virtual {v2}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 80
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x0

    .line 83
    .local v13, iterator:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getReportSchedule()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/common/util/DateTimeHelper;->getTodayStartTimestamp(J)J

    move-result-wide v14

    .line 86
    .local v14, startRange:J
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/common/util/DateTimeHelper;->getTomorrowStartTimestamp(J)J

    move-result-wide v11

    .line 87
    .local v11, endRange:J
    const-string v2, "record"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "(%s=?) AND (%s=?) AND (%s>=?) AND (%s<?)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "key"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "value"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "timestamp"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "timestamp"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 94
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    if-eqz v13, :cond_1

    .line 109
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v11           #endRange:J
    .end local v14           #startRange:J
    :goto_0
    return-void

    .line 98
    :cond_2
    :try_start_3
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v16, values:Landroid/content/ContentValues;
    const-string v2, "key"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "value"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "timestamp"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v2, "schedule"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getReportSchedule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v2, "record"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xiaomi/common/monitor/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 108
    if-eqz v13, :cond_3

    .line 109
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 112
    .end local v16           #values:Landroid/content/ContentValues;
    :goto_1
    monitor-exit v17

    goto :goto_0

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #iterator:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 105
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #iterator:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 106
    .local v10, e:Landroid/database/SQLException;
    :try_start_5
    const-string v2, "com.xiaomi.common.Monitoring"

    const-string v3, "failed to write the report stat into database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    if-eqz v13, :cond_4

    .line 109
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 108
    .end local v10           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    if-eqz v13, :cond_5

    .line 109
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public tryUploadStatData(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "releaseChannel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, additional:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    iget-object v3, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, logTag:Ljava/lang/String;
    const-string v3, "Preparing stat data..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v3, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    invoke-direct {v3, v5}, Lcom/xiaomi/common/monitor/MonitoringAgent;->getToSendRecords(I)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, tosend:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;>;"
    if-eqz p2, :cond_1

    .line 126
    if-eqz v2, :cond_3

    .line 127
    invoke-interface {v2, v5, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 135
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/xiaomi/common/monitor/UserInfo;->isPhoneInfoSent(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    invoke-static {p1}, Lcom/xiaomi/common/monitor/UserInfo;->getPhoneInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/common/monitor/MonitoringData;->createPhoneInfoRecord(Ljava/lang/String;)Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    move-result-object v1

    .line 138
    .local v1, phoneInfo:Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    .end local v1           #phoneInfo:Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    :cond_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 142
    new-instance v3, Lcom/xiaomi/common/monitor/MonitoringAgent$1;

    invoke-direct {v3, p0, p1}, Lcom/xiaomi/common/monitor/MonitoringAgent$1;-><init>(Lcom/xiaomi/common/monitor/MonitoringAgent;Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object p3, v4, v6

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 130
    :cond_3
    move-object v2, p2

    goto :goto_1

    .line 170
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/common/monitor/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;

    goto :goto_0
.end method
