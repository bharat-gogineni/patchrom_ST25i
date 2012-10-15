.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

.field private static final mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/HttpUtils;->getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method protected static abortHttpConnection(J)Z
    .locals 5
    .parameter "token"

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, req:Lorg/apache/http/client/methods/HttpRequestBase;
    sget-object v3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 303
    :try_start_0
    sget-object v2, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v1, v0

    .line 304
    monitor-exit v3

    .line 305
    if-nez v1, :cond_0

    .line 306
    const/4 v2, 0x0

    .line 309
    :goto_0
    return v2

    .line 304
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 308
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 309
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/HttpUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 388
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 365
    if-nez p0, :cond_1

    .line 366
    const/4 p0, 0x0

    .line 378
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 368
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const-string p0, "he"

    goto :goto_0

    .line 371
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const-string p0, "id"

    goto :goto_0

    .line 374
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string p0, "yi"

    goto :goto_0
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 322
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 324
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 325
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 330
    .local v2, soTimeout:I
    const-string v4, "Mms:transaction"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 335
    return-object v0
.end method

.method public static getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 350
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 352
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    const-string v1, "en-US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 318
    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 38
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    if-nez p3, :cond_0

    .line 99
    new-instance v34, Ljava/lang/IllegalArgumentException;

    const-string v35, "URL must not be null."

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 102
    :cond_0
    const-string v34, "Mms:transaction"

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 103
    const-string v34, "Mms:transaction"

    const-string v35, "httpConnection: params list"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\ttoken\t\t= "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\turl\t\t= "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v35, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\tmethod\t\t= "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v34, 0x1

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    const-string v34, "POST"

    :goto_0
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\tisProxySet\t= "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\tproxyHost\t= "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "\tproxyPort\t= "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    const/4 v8, 0x0

    .line 120
    .local v8, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 121
    .local v13, hostUrl:Ljava/net/URI;
    new-instance v29, Lorg/apache/http/HttpHost;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v35

    const-string v36, "http"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    .local v29, target:Lorg/apache/http/HttpHost;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    .line 126
    const/16 v25, 0x0

    .line 127
    .local v25, req:Lorg/apache/http/client/methods/HttpRequestBase;
    packed-switch p5, :pswitch_data_0

    .line 142
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unknown HTTP method: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ". Must be one of POST["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] or GET["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 145
    const/4 v5, 0x0

    .line 288
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_2

    .line 290
    :try_start_1
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v8, :cond_3

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 297
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v25           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v29           #target:Lorg/apache/http/HttpHost;
    :cond_3
    :goto_1
    return-object v5

    .line 106
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    :cond_4
    const/16 v34, 0x2

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    const-string v34, "GET"

    goto/16 :goto_0

    :cond_5
    const-string v34, "UNKNOWN"

    goto/16 :goto_0

    .line 129
    .restart local v8       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v25       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v29       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_2
    new-instance v11, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 132
    .local v11, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v34, "application/vnd.wap.mms-message"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 134
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 135
    .local v23, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 136
    move-object/from16 v25, v23

    .line 149
    .end local v11           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v23           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_2
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    .line 150
    .local v22, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_6

    .line 151
    new-instance v34, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v34

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 154
    :cond_6
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 157
    const-string v34, "Accept"

    const-string v35, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v32

    .line 160
    .local v32, xWapProfileTagName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v33

    .line 162
    .local v33, xWapProfileUrl:Ljava/lang/String;
    if-eqz v33, :cond_8

    .line 163
    const-string v34, "Mms:transaction"

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 164
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[HttpUtils] httpConn: xWapProfUrl="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, extraHttpParams:Ljava/lang/String;
    if-eqz v12, :cond_b

    .line 179
    const-string v34, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v17

    .line 182
    .local v17, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v16

    .line 183
    .local v16, line1Key:Ljava/lang/String;
    const-string v34, "\\|"

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 185
    .local v20, paramList:[Ljava/lang/String;
    move-object/from16 v4, v20

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_3
    if-ge v14, v15, :cond_b

    aget-object v21, v4, v14

    .line 186
    .local v21, paramPair:Ljava/lang/String;
    const-string v34, ":"

    const/16 v35, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v27

    .line 188
    .local v27, splitPair:[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 189
    const/16 v34, 0x0

    aget-object v34, v27, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 190
    .local v18, name:Ljava/lang/String;
    const/16 v34, 0x1

    aget-object v34, v27, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 192
    .local v31, value:Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 193
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 195
    :cond_9
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_a

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_a

    .line 196
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v18           #name:Ljava/lang/String;
    .end local v31           #value:Ljava/lang/String;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 139
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #line1Key:Ljava/lang/String;
    .end local v17           #line1Number:Ljava/lang/String;
    .end local v20           #paramList:[Ljava/lang/String;
    .end local v21           #paramPair:Ljava/lang/String;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #splitPair:[Ljava/lang/String;
    .end local v32           #xWapProfileTagName:Ljava/lang/String;
    .end local v33           #xWapProfileUrl:Ljava/lang/String;
    :pswitch_1
    new-instance v25, Lorg/apache/http/client/methods/HttpGet;

    .end local v25           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 140
    .restart local v25       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_2

    .line 292
    :catchall_0
    move-exception v34

    :try_start_3
    monitor-exit v35
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v34

    .line 201
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v22       #params:Lorg/apache/http/params/HttpParams;
    .restart local v32       #xWapProfileTagName:Ljava/lang/String;
    .restart local v33       #xWapProfileUrl:Ljava/lang/String;
    :cond_b
    :try_start_4
    const-string v34, "Accept-Language"

    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 204
    :try_start_5
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit v35
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 206
    :try_start_6
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 207
    .local v26, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    .line 208
    .local v28, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v34

    const/16 v35, 0xc8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_f

    .line 209
    new-instance v34, Ljava/io/IOException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "HTTP error: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 276
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #status:Lorg/apache/http/StatusLine;
    .end local v29           #target:Lorg/apache/http/HttpHost;
    .end local v32           #xWapProfileTagName:Ljava/lang/String;
    .end local v33           #xWapProfileUrl:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 277
    .local v10, e:Ljava/net/URISyntaxException;
    :try_start_7
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 288
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_c

    .line 290
    :try_start_8
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_c
    monitor-exit v35
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 293
    if-eqz v8, :cond_d

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 297
    .end local v10           #e:Ljava/net/URISyntaxException;
    :cond_d
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 205
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v22       #params:Lorg/apache/http/params/HttpParams;
    .restart local v25       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v29       #target:Lorg/apache/http/HttpHost;
    .restart local v32       #xWapProfileTagName:Ljava/lang/String;
    .restart local v33       #xWapProfileUrl:Ljava/lang/String;
    :catchall_1
    move-exception v34

    :try_start_9
    monitor-exit v35
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v34
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 278
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v29           #target:Lorg/apache/http/HttpHost;
    .end local v32           #xWapProfileTagName:Ljava/lang/String;
    .end local v33           #xWapProfileUrl:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 279
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_b
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 288
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_e

    .line 290
    :try_start_c
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_e
    monitor-exit v35
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 293
    if-eqz v8, :cond_d

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_4

    .line 211
    .end local v10           #e:Ljava/lang/IllegalStateException;
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v22       #params:Lorg/apache/http/params/HttpParams;
    .restart local v25       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #status:Lorg/apache/http/StatusLine;
    .restart local v29       #target:Lorg/apache/http/HttpHost;
    .restart local v32       #xWapProfileTagName:Ljava/lang/String;
    .restart local v33       #xWapProfileUrl:Ljava/lang/String;
    :cond_f
    :try_start_d
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v11

    .line 212
    .local v11, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 213
    .local v5, body:[B
    if-eqz v11, :cond_15

    .line 215
    :try_start_e
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-lez v34, :cond_10

    .line 216
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v5, v0, [B

    .line 217
    new-instance v9, Ljava/io/DataInputStream;

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 219
    .local v9, dis:Ljava/io/DataInputStream;
    :try_start_f
    invoke-virtual {v9, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 222
    :try_start_10
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 228
    .end local v9           #dis:Ljava/io/DataInputStream;
    :cond_10
    :goto_5
    :try_start_11
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v34

    if-eqz v34, :cond_14

    .line 229
    const-string v34, "Mms:transaction"

    const-string v35, "httpConnection: transfer encoding is chunked"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v7

    .line 231
    .local v7, bytesTobeRead:I
    new-array v0, v7, [B

    move-object/from16 v30, v0

    .line 232
    .local v30, tempBody:[B
    new-instance v9, Ljava/io/DataInputStream;

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 234
    .restart local v9       #dis:Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 235
    .local v6, bytesRead:I
    const/16 v19, 0x0

    .line 236
    .local v19, offset:I
    const/16 v24, 0x0

    .line 239
    .local v24, readError:Z
    :cond_11
    :try_start_12
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    move-result v6

    .line 246
    if-lez v6, :cond_12

    .line 247
    sub-int/2addr v7, v6

    .line 248
    add-int v19, v19, v6

    .line 250
    :cond_12
    if-ltz v6, :cond_13

    if-gtz v7, :cond_11

    .line 251
    :cond_13
    :goto_6
    const/16 v34, -0x1

    move/from16 v0, v34

    if-ne v6, v0, :cond_19

    if-lez v19, :cond_19

    if-nez v24, :cond_19

    .line 254
    :try_start_13
    move/from16 v0, v19

    new-array v5, v0, [B

    .line 255
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v19

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "httpConnection: Chunked response length ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 263
    :goto_7
    :try_start_14
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    .line 270
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v9           #dis:Ljava/io/DataInputStream;
    .end local v19           #offset:I
    .end local v24           #readError:Z
    .end local v30           #tempBody:[B
    :cond_14
    :goto_8
    if-eqz v11, :cond_15

    .line 271
    :try_start_15
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    .line 288
    :cond_15
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_16

    .line 290
    :try_start_16
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_16
    monitor-exit v35
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 293
    if-eqz v8, :cond_3

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 223
    .restart local v9       #dis:Ljava/io/DataInputStream;
    :catch_2
    move-exception v10

    .line 224
    .local v10, e:Ljava/io/IOException;
    :try_start_17
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Error closing input stream: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_5

    .line 270
    .end local v9           #dis:Ljava/io/DataInputStream;
    .end local v10           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v34

    if-eqz v11, :cond_17

    .line 271
    :try_start_18
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_17
    throw v34
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/net/SocketException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    .line 280
    .end local v5           #body:[B
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #status:Lorg/apache/http/StatusLine;
    .end local v29           #target:Lorg/apache/http/HttpHost;
    .end local v32           #xWapProfileTagName:Ljava/lang/String;
    .end local v33           #xWapProfileUrl:Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 281
    .local v10, e:Ljava/lang/IllegalArgumentException;
    :try_start_19
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 288
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_18

    .line 290
    :try_start_1a
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_18
    monitor-exit v35
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 293
    if-eqz v8, :cond_d

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 221
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #body:[B
    .restart local v9       #dis:Ljava/io/DataInputStream;
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #hostUrl:Ljava/net/URI;
    .restart local v22       #params:Lorg/apache/http/params/HttpParams;
    .restart local v25       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #status:Lorg/apache/http/StatusLine;
    .restart local v29       #target:Lorg/apache/http/HttpHost;
    .restart local v32       #xWapProfileTagName:Ljava/lang/String;
    .restart local v33       #xWapProfileUrl:Ljava/lang/String;
    :catchall_3
    move-exception v34

    .line 222
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_4

    .line 225
    :goto_9
    :try_start_1c
    throw v34

    .line 223
    :catch_4
    move-exception v10

    .line 224
    .local v10, e:Ljava/io/IOException;
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Error closing input stream: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto :goto_9

    .line 240
    .end local v10           #e:Ljava/io/IOException;
    .restart local v6       #bytesRead:I
    .restart local v7       #bytesTobeRead:I
    .restart local v19       #offset:I
    .restart local v24       #readError:Z
    .restart local v30       #tempBody:[B
    :catch_5
    move-exception v10

    .line 241
    .restart local v10       #e:Ljava/io/IOException;
    const/16 v24, 0x1

    .line 242
    :try_start_1d
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "httpConnection: error reading input stream"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    goto/16 :goto_6

    .line 262
    .end local v10           #e:Ljava/io/IOException;
    :catchall_4
    move-exception v34

    .line 263
    :try_start_1e
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    .line 266
    :goto_a
    :try_start_1f
    throw v34
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 259
    :cond_19
    :try_start_20
    const-string v34, "Mms:transaction"

    const-string v35, "httpConnection: Response entity too large or empty"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto/16 :goto_7

    .line 264
    :catch_6
    move-exception v10

    .line 265
    .restart local v10       #e:Ljava/io/IOException;
    :try_start_21
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Error closing input stream: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 264
    .end local v10           #e:Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 265
    .restart local v10       #e:Ljava/io/IOException;
    const-string v35, "Mms:transaction"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Error closing input stream: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    goto :goto_a

    .line 292
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v9           #dis:Ljava/io/DataInputStream;
    .end local v10           #e:Ljava/io/IOException;
    .end local v19           #offset:I
    .end local v24           #readError:Z
    .end local v30           #tempBody:[B
    :catchall_5
    move-exception v34

    :try_start_22
    monitor-exit v35
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    throw v34

    .end local v5           #body:[B
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #extraHttpParams:Ljava/lang/String;
    .end local v13           #hostUrl:Ljava/net/URI;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #status:Lorg/apache/http/StatusLine;
    .end local v29           #target:Lorg/apache/http/HttpHost;
    .end local v32           #xWapProfileTagName:Ljava/lang/String;
    .end local v33           #xWapProfileUrl:Ljava/lang/String;
    .local v10, e:Ljava/net/URISyntaxException;
    :catchall_6
    move-exception v34

    :try_start_23
    monitor-exit v35
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    throw v34

    .local v10, e:Ljava/lang/IllegalStateException;
    :catchall_7
    move-exception v34

    :try_start_24
    monitor-exit v35
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    throw v34

    .local v10, e:Ljava/lang/IllegalArgumentException;
    :catchall_8
    move-exception v34

    :try_start_25
    monitor-exit v35
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    throw v34

    .line 282
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v10

    .line 283
    .local v10, e:Ljava/net/SocketException;
    :try_start_26
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 288
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_1a

    .line 290
    :try_start_27
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1a
    monitor-exit v35
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    .line 293
    if-eqz v8, :cond_d

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 292
    :catchall_9
    move-exception v34

    :try_start_28
    monitor-exit v35
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    throw v34

    .line 284
    .end local v10           #e:Ljava/net/SocketException;
    :catch_9
    move-exception v10

    .line 285
    .local v10, e:Ljava/lang/Exception;
    :try_start_29
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    .line 288
    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v34, p1, v36

    if-lez v34, :cond_1b

    .line 290
    :try_start_2a
    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1b
    monitor-exit v35
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    .line 293
    if-eqz v8, :cond_d

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 292
    :catchall_a
    move-exception v34

    :try_start_2b
    monitor-exit v35
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    throw v34

    .line 288
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_b
    move-exception v34

    sget-object v35, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v35

    .line 289
    const-wide/16 v36, 0x0

    cmp-long v36, p1, v36

    if-lez v36, :cond_1c

    .line 290
    :try_start_2c
    sget-object v36, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1c
    monitor-exit v35
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 293
    if-eqz v8, :cond_1d

    .line 294
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1d
    throw v34

    .line 292
    :catchall_c
    move-exception v34

    :try_start_2d
    monitor-exit v35
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    throw v34

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
