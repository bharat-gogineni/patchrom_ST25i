.class public Lcom/xiaomi/common/util/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/Network$DownloadTask;,
        Lcom/xiaomi/common/util/Network$PostDownloadHandler;,
        Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field private static final CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final CMWAP_PORT:I = 0x50

.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern; = null

.field private static final LogTag:Ljava/lang/String; = "com.xiaomi.common.Network"

.field public static final UserAgent_PC_Chrome:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

.field public static final UserAgent_PC_Chrome_6_0_464_0:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 303
    const-string v0, "([^\\s;]+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    .line 305
    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    .line 308
    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    return-void
.end method

.method public static beginDownloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/util/Network$PostDownloadHandler;)V
    .locals 2
    .parameter "url"
    .parameter "output"
    .parameter "handler"

    .prologue
    .line 591
    new-instance v0, Lcom/xiaomi/common/util/Network$DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/common/util/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/util/Network$PostDownloadHandler;)V

    .line 592
    .local v0, task:Lcom/xiaomi/common/util/Network$DownloadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/util/Network$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 593
    return-void
.end method

.method public static concatAsUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, nameValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 547
    .restart local p0
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 549
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 551
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/common/util/Network;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 557
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 558
    .local v2, len:I
    if-lez v2, :cond_3

    .line 559
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 562
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static doHttpGet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "strUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    const/16 v0, 0x1f40

    const/16 v1, 0x3a98

    invoke-static {p0, v0, v1}, Lcom/xiaomi/common/util/Network;->doHttpGet(Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpGet(Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 11
    .parameter "strUrl"
    .parameter "connTimeOut"
    .parameter "soTimeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 512
    const/4 v5, 0x0

    .line 539
    :cond_0
    :goto_0
    return-object v5

    .line 515
    :cond_1
    const/4 v5, 0x0

    .line 517
    .local v5, instream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 518
    .local v3, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 519
    .local v6, lrcUrl:Ljava/net/URL;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 520
    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    const-string v9, "User-agent"

    const-string v10, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

    invoke-virtual {v3, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 523
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    if-lez p1, :cond_2

    .line 524
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 526
    :cond_2
    if-lez p2, :cond_3

    .line 527
    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 529
    :cond_3
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 531
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 532
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 533
    .local v8, statusCode:I
    const/16 v9, 0xc8

    if-lt v8, v9, :cond_0

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_0

    .line 534
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 535
    .local v1, entity:Lorg/apache/http/HttpEntity;
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 536
    .local v0, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/common/util/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "url"
    .parameter
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 444
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "url"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 446
    :cond_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 447
    .local v6, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x1388

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 448
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 449
    const-string v13, "User-agent"

    move-object/from16 v0, p4

    invoke-virtual {v6, v13, v0}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 452
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 453
    const-string v13, "Cookie"

    move-object/from16 v0, p5

    invoke-virtual {v6, v13, v0}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 455
    :cond_2
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 457
    .local v7, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/common/util/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 458
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 459
    .local v2, _url:Ljava/net/URL;
    invoke-static {v2}, Lcom/xiaomi/common/util/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, cmwapUrl:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, host:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 462
    .local v8, httppost:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "X-Online-Host"

    invoke-virtual {v8, v13, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v2           #_url:Ljava/net/URL;
    .end local v4           #cmwapUrl:Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_3

    .line 468
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 470
    :cond_3
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 471
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 472
    .local v12, statusCode:I
    const-string v13, "com.xiaomi.common.Network"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Http POST Response Code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v13, 0xc8

    if-lt v12, v13, :cond_7

    const/16 v13, 0x12c

    if-ge v12, v13, :cond_7

    .line 476
    if-eqz p3, :cond_5

    .line 477
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 478
    .local v1, _headers:[Lorg/apache/http/Header;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v13, v1

    if-ge v9, v13, :cond_5

    .line 479
    aget-object v13, v1, v9

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v1, v9

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 464
    .end local v1           #_headers:[Lorg/apache/http/Header;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #i:I
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #statusCode:I
    :cond_4
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 482
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #statusCode:I
    :cond_5
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 483
    .local v3, body:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_6

    .line 484
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    .line 486
    .local v11, result:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 493
    .end local v3           #body:Lorg/apache/http/HttpEntity;
    .end local v11           #result:Ljava/lang/String;
    :goto_2
    return-object v11

    .line 490
    .restart local v3       #body:Lorg/apache/http/HttpEntity;
    :cond_6
    const-string v11, ""

    goto :goto_2

    .line 493
    .end local v3           #body:Lorg/apache/http/HttpEntity;
    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 8
    .parameter "urlStr"
    .parameter "output"

    .prologue
    const/4 v6, 0x0

    .line 604
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 605
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 606
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 607
    const/16 v7, 0x3a98

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 608
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 609
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 611
    .local v4, input:Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 614
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_0

    .line 615
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    .end local v0           #buffer:[B
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #count:I
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 622
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 625
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 618
    .restart local v0       #buffer:[B
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #count:I
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v5       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 619
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/common/util/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "encoding"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 170
    .local v3, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/xiaomi/common/util/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v5, sbReponse:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 175
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v5           #sbReponse:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_0

    .line 182
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :cond_0
    :goto_1
    throw v6

    .line 180
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v5       #sbReponse:Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v3, :cond_2

    .line 182
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, responseXml:Ljava/lang/String;
    return-object v4

    .line 183
    .end local v4           #responseXml:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    const-string v6, "com.xiaomi.common.Network"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close responseStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 183
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v5           #sbReponse:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "com.xiaomi.common.Network"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close responseStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/common/util/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/util/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/common/util/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/util/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/util/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 11
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "cookie"
    .parameter
    .parameter "responseHdrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/common/util/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    .local p5, requestHdrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 94
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "url"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 96
    :cond_0
    move-object v6, p1

    .line 97
    .local v6, newUrl:Ljava/net/URL;
    if-nez p2, :cond_1

    .line 98
    new-instance v6, Ljava/net/URL;

    .end local v6           #newUrl:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/common/util/Network;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v6       #newUrl:Ljava/net/URL;
    :cond_1
    const/4 v7, 0x0

    .line 101
    .local v7, responseStream:Ljava/io/InputStream;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 102
    invoke-static {p0, v6}, Lcom/xiaomi/common/util/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 103
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v9, 0x1388

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    const v9, 0x1d4c0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 106
    const-string v9, "User-agent"

    invoke-virtual {v1, v9, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    if-eqz p4, :cond_3

    .line 109
    const-string v9, "Cookie"

    invoke-virtual {v1, v9, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    if-eqz p5, :cond_4

    .line 112
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v4, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_4
    if-eqz p6, :cond_7

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 119
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    move-object/from16 v0, p6

    iput v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->ResponseCode:I

    .line 120
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez v9, :cond_6

    .line 121
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p6

    iput-object v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 122
    :cond_6
    const/4 v2, 0x0

    .line 123
    .local v2, i:I
    :goto_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, value:Ljava/lang/String;
    if-nez v5, :cond_8

    if-nez v8, :cond_8

    .line 136
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 137
    return-object v7

    .line 128
    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 122
    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_a
    if-eqz v5, :cond_9

    .line 131
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static downloadXmlAsStreamWithoutRedirect(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, responseStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 144
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 145
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 146
    const v3, 0x1d4c0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    const-string v3, "User-agent"

    invoke-virtual {v0, v3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    if-eqz p2, :cond_1

    .line 151
    const-string v3, "Cookie"

    invoke-virtual {v0, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 155
    .local v1, resCode:I
    const/16 v3, 0x12c

    if-lt v1, v3, :cond_2

    const/16 v3, 0x190

    if-lt v1, v3, :cond_3

    .line 156
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 158
    :cond_3
    return-object v2
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 813
    if-eqz p0, :cond_0

    .line 815
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 820
    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v0

    .line 820
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strUrl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 572
    const-string v1, "%sbe988a6134bc8254465424e5a70ef037"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, strTemp:Ljava/lang/String;
    const-string v1, "%s&key=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0}, Lcom/xiaomi/common/util/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .end local v0           #strTemp:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getActiveNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 754
    const-string v1, "null"

    .line 755
    .local v1, defaultValue:Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 757
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 764
    .end local v1           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 759
    .restart local v1       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 760
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 763
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 764
    :cond_2
    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 738
    const/4 v1, -0x1

    .line 739
    .local v1, defaultValue:I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 741
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 746
    .end local v1           #defaultValue:I
    :cond_0
    :goto_0
    return v1

    .line 743
    .restart local v1       #defaultValue:I
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 744
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method

.method private static getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter "oriUrl"

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .local v0, gatewayBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHttpHeaderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    .locals 12
    .parameter "urlString"
    .parameter "userAgent"
    .parameter "cookie"

    .prologue
    const/4 v9, 0x0

    .line 357
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 358
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v5, v9

    .line 412
    .end local v7           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v5

    .line 362
    .restart local v7       #url:Ljava/net/URL;
    :cond_1
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 363
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 364
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v10, "wap"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 365
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 366
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 373
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 374
    const-string v10, "User-agent"

    invoke-virtual {v1, v10, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_2
    if-eqz p2, :cond_3

    .line 378
    const-string v10, "Cookie"

    invoke-virtual {v1, v10, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_3
    new-instance v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;

    invoke-direct {v5}, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;-><init>()V

    .line 382
    .local v5, ret:Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->ResponseCode:I

    .line 384
    iput-object p1, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->UserAgent:Ljava/lang/String;

    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, i:I
    :goto_2
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, value:Ljava/lang/String;
    if-nez v4, :cond_4

    if-eqz v8, :cond_0

    .line 391
    :cond_4
    if-eqz v4, :cond_5

    const-string v10, "content-type"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 392
    iput-object v8, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 395
    :cond_5
    if-eqz v4, :cond_7

    const-string v10, "location"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 396
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 397
    .local v6, uri:Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-nez v10, :cond_6

    .line 398
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, baseUri:Ljava/net/URI;
    invoke-virtual {v0, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    .line 401
    .end local v0           #baseUri:Ljava/net/URI;
    :cond_6
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->realUrl:Ljava/lang/String;

    .line 385
    .end local v6           #uri:Ljava/net/URI;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 370
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ret:Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    .end local v8           #value:Ljava/lang/String;
    :cond_8
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 371
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 405
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 406
    .local v2, e:Ljava/net/MalformedURLException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to transform URL"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/net/MalformedURLException;
    :goto_3
    move-object v5, v9

    .line 412
    goto/16 :goto_0

    .line 407
    :catch_1
    move-exception v2

    .line 408
    .local v2, e:Ljava/io/IOException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to get mime type"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 409
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 410
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to parse URI"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static getHttpPostAsStream(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .parameter "url"
    .parameter "data"
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 314
    if-nez p0, :cond_0

    .line 315
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "url"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 317
    :cond_0
    move-object v3, p0

    .line 319
    .local v3, newUrl:Ljava/net/URL;
    const/4 v5, 0x0

    .line 320
    .local v5, responseStream:Ljava/io/InputStream;
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 321
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 322
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 323
    const/16 v7, 0x3a98

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 324
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 327
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 328
    const-string v7, "User-agent"

    invoke-virtual {v0, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 332
    const-string v7, "Cookie"

    invoke-virtual {v0, v7, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 336
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 337
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, responseCode:Ljava/lang/String;
    const-string v7, "ResponseCode"

    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, i:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, value:Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 351
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 352
    return-object v5

    .line 348
    :cond_3
    invoke-interface {p2, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 790
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 797
    :goto_0
    return-object v4

    .line 792
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, host:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/common/util/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, cmwapUrl:Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 795
    .local v2, gatewayUrl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 796
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v4, "X-Online-Host"

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 797
    goto :goto_0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 750
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmwap(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 772
    if-nez p0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v4

    .line 775
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 777
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_0

    .line 779
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 780
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_0

    .line 782
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, extraInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 785
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 768
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryDetectCharsetEncoding(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 233
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "url"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 235
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 236
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 237
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/16 v9, 0x1388

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 238
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 240
    const-string v9, "User-agent"

    invoke-virtual {v2, v9, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    const/4 v8, 0x0

    .line 247
    .local v8, ret:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, contentType:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 249
    sget-object v9, Lcom/xiaomi/common/util/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 250
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2

    .line 251
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, charset:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 253
    move-object v8, v1

    .line 254
    const-string v9, "com.xiaomi.common.Network"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP charset detected is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v1           #charset:Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 261
    sget-object v9, Lcom/xiaomi/common/util/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    .line 263
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, mimetype:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 266
    const-string v9, "application/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "application/xml"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "+xml"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 269
    :cond_3
    const/4 v7, 0x0

    .line 271
    .local v7, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 272
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 275
    .local v6, reader:Ljava/io/BufferedReader;
    :cond_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, aLine:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 280
    sget-object v9, Lcom/xiaomi/common/util/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_5

    .line 282
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1       #charset:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 284
    move-object v8, v1

    .line 285
    const-string v9, "com.xiaomi.common.Network"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XML charset detected is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v1           #charset:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 292
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 300
    .end local v0           #aLine:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #responseStream:Ljava/io/InputStream;
    :cond_6
    return-object v8

    .line 291
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #mimetype:Ljava/lang/String;
    .restart local v7       #responseStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_7

    .line 292
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v9
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "url"
    .parameter "file"
    .parameter "fileKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 631
    const/16 v22, 0x0

    .line 709
    :cond_0
    :goto_0
    return-object v22

    .line 633
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 635
    .local v14, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 637
    .local v8, conn:Ljava/net/HttpURLConnection;
    const-string v17, "\r\n"

    .line 638
    .local v17, lineEnd:Ljava/lang/String;
    const-string v21, "--"

    .line 639
    .local v21, twoHyphens:Ljava/lang/String;
    const-string v5, "*****"

    .line 641
    .local v5, boundary:Ljava/lang/String;
    const/4 v12, 0x0

    .line 642
    .local v12, fileInputStream:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 643
    .local v9, dos:Ljava/io/DataOutputStream;
    const/16 v18, 0x0

    .line 646
    .local v18, rd:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 647
    .local v4, _url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 648
    const v22, 0xea60

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 649
    const/16 v22, 0x1388

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 652
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 653
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 654
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 657
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 658
    const-string v22, "Connection"

    const-string v23, "Keep-Alive"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v22, "Content-Type"

    const-string v23, "multipart/form-data;boundary=*****"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/16 v3, 0x4d

    .line 662
    .local v3, EXTRA_LEN:I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x4d

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    add-int v15, v22, v23

    .line 663
    .local v15, len:I
    invoke-virtual {v8, v15}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 665
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 666
    .end local v9           #dos:Ljava/io/DataOutputStream;
    .local v10, dos:Ljava/io/DataOutputStream;
    :try_start_1
    const-string v22, "--*****\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 667
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\";filename=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 669
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 672
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 673
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .local v13, fileInputStream:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 674
    .local v7, bytesRead:I
    const/16 v2, 0x400

    .line 675
    .local v2, BUFFER_SIZE:I
    const/16 v22, 0x400

    :try_start_2
    move/from16 v0, v22

    new-array v6, v0, [B

    .line 676
    .local v6, buffer:[B
    :goto_1
    invoke-virtual {v13, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_5

    .line 677
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 678
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 697
    .end local v6           #buffer:[B
    :catchall_0
    move-exception v22

    move-object v9, v10

    .end local v10           #dos:Ljava/io/DataOutputStream;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    move-object v12, v13

    .line 698
    .end local v2           #BUFFER_SIZE:I
    .end local v3           #EXTRA_LEN:I
    .end local v4           #_url:Ljava/net/URL;
    .end local v7           #bytesRead:I
    .end local v13           #fileInputStream:Ljava/io/FileInputStream;
    .end local v15           #len:I
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v12, :cond_2

    .line 699
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 701
    :cond_2
    if-eqz v9, :cond_3

    .line 702
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 704
    :cond_3
    if-eqz v18, :cond_4

    .line 705
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 709
    :cond_4
    :goto_3
    throw v22

    .line 681
    .end local v9           #dos:Ljava/io/DataOutputStream;
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #BUFFER_SIZE:I
    .restart local v3       #EXTRA_LEN:I
    .restart local v4       #_url:Ljava/net/URL;
    .restart local v6       #buffer:[B
    .restart local v7       #bytesRead:I
    .restart local v10       #dos:Ljava/io/DataOutputStream;
    .restart local v13       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v15       #len:I
    :cond_5
    :try_start_4
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 682
    const-string v22, "--"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 683
    const-string v22, "*****"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 684
    const-string v22, "--"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 685
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 689
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 690
    .local v20, sb:Ljava/lang/StringBuffer;
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 692
    .end local v18           #rd:Ljava/io/BufferedReader;
    .local v19, rd:Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, line:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 693
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 697
    .end local v16           #line:Ljava/lang/String;
    :catchall_1
    move-exception v22

    move-object/from16 v18, v19

    .end local v19           #rd:Ljava/io/BufferedReader;
    .restart local v18       #rd:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #dos:Ljava/io/DataOutputStream;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 695
    .end local v9           #dos:Ljava/io/DataOutputStream;
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .end local v18           #rd:Ljava/io/BufferedReader;
    .restart local v10       #dos:Ljava/io/DataOutputStream;
    .restart local v13       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #line:Ljava/lang/String;
    .restart local v19       #rd:Ljava/io/BufferedReader;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v22

    .line 698
    if-eqz v13, :cond_7

    .line 699
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 701
    :cond_7
    if-eqz v10, :cond_8

    .line 702
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 704
    :cond_8
    if-eqz v19, :cond_0

    .line 705
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 707
    :catch_0
    move-exception v11

    .line 708
    .local v11, e:Ljava/io/IOException;
    const-string v23, "com.xiaomi.common.Network"

    const-string v24, "error while closing strean"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 707
    .end local v2           #BUFFER_SIZE:I
    .end local v3           #EXTRA_LEN:I
    .end local v4           #_url:Ljava/net/URL;
    .end local v6           #buffer:[B
    .end local v7           #bytesRead:I
    .end local v10           #dos:Ljava/io/DataOutputStream;
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #fileInputStream:Ljava/io/FileInputStream;
    .end local v15           #len:I
    .end local v16           #line:Ljava/lang/String;
    .end local v19           #rd:Ljava/io/BufferedReader;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v18       #rd:Ljava/io/BufferedReader;
    :catch_1
    move-exception v11

    .line 708
    .restart local v11       #e:Ljava/io/IOException;
    const-string v23, "com.xiaomi.common.Network"

    const-string v24, "error while closing strean"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 697
    .end local v11           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v22

    goto/16 :goto_2

    .end local v9           #dos:Ljava/io/DataOutputStream;
    .restart local v3       #EXTRA_LEN:I
    .restart local v4       #_url:Ljava/net/URL;
    .restart local v10       #dos:Ljava/io/DataOutputStream;
    .restart local v15       #len:I
    :catchall_3
    move-exception v22

    move-object v9, v10

    .end local v10           #dos:Ljava/io/DataOutputStream;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method
