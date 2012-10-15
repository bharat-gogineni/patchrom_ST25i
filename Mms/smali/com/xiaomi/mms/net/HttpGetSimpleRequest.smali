.class Lcom/xiaomi/mms/net/HttpGetSimpleRequest;
.super Lcom/xiaomi/mms/net/HttpSimpleRequest;
.source "HttpGetSimpleRequest.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/mms/net/HttpSimpleRequest;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "GET"

    return-object v0
.end method

.method protected setupConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0}, Lcom/xiaomi/mms/net/HttpSimpleRequest;->setupConnection()V

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    return-void
.end method
