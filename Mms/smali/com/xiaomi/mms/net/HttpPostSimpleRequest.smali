.class Lcom/xiaomi/mms/net/HttpPostSimpleRequest;
.super Lcom/xiaomi/mms/net/HttpSimpleRequest;
.source "HttpPostSimpleRequest.java"


# instance fields
.field private final mReqParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xiaomi/mms/net/HttpSimpleRequest;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;->mReqParams:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public addRequestParams(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;->mReqParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    :cond_0
    return-void
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lcom/xiaomi/mms/net/HttpSimpleRequest;->connect()V

    .line 30
    invoke-virtual {p0}, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 31
    .local v1, conn:Ljava/net/HttpURLConnection;
    iget-object v4, p0, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;->mReqParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;->mReqParams:Ljava/util/Map;

    invoke-static {v4}, Lcom/xiaomi/mms/utils/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, content:Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 41
    invoke-static {v0}, Lcom/xiaomi/mms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 44
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    return-void

    .line 40
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v3       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 41
    invoke-static {v0}, Lcom/xiaomi/mms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "POST"

    return-object v0
.end method
