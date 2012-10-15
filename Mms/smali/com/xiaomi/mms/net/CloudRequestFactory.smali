.class public Lcom/xiaomi/mms/net/CloudRequestFactory;
.super Ljava/lang/Object;
.source "CloudRequestFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
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
    .line 84
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 86
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 87
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 90
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local p0
    :cond_1
    return-object p0
.end method

.method private static getClientSign(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nonce"
    .parameter "security"

    .prologue
    const/4 v3, 0x0

    .line 96
    new-instance v0, Lcom/xiaomi/mms/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/mms/utils/EasyMap;-><init>()V

    .line 98
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "nonce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v3, v3, v0, p1}, Lmiui/net/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static newGetServiceTokenRequest(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;
    .locals 4
    .parameter "serviceTokenLocation"
    .parameter "nonce"
    .parameter "security"

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/xiaomi/mms/net/CloudRequestFactory;->getClientSign(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, clientSign:Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/mms/utils/EasyMap;

    const-string v3, "clientSign"

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mms/utils/EasyMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .local v2, params:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v2}, Lcom/xiaomi/mms/net/CloudRequestFactory;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, fullUrl:Ljava/lang/String;
    new-instance v3, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;

    invoke-direct {v3, v1}, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static newGetUserIdRequest(Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;
    .locals 5
    .parameter "phone"

    .prologue
    .line 66
    new-instance v2, Lcom/xiaomi/mms/utils/EasyMap;

    const-string v3, "type"

    const-string v4, "MXPH"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/mms/utils/EasyMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "externalId"

    invoke-virtual {v2, v3, p0}, Lcom/xiaomi/mms/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/mms/utils/EasyMap;

    move-result-object v1

    .line 69
    .local v1, params:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "http://api.account.xiaomi.com/pass/user@id"

    invoke-static {v2, v1}, Lcom/xiaomi/mms/net/CloudRequestFactory;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, fullUrl:Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;

    invoke-direct {v2, v0}, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static newLoginByTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;
    .locals 5
    .parameter "userId"
    .parameter "passToken"

    .prologue
    .line 54
    new-instance v1, Lcom/xiaomi/mms/utils/EasyMap;

    const-string v3, "sid"

    const-string v4, "mixin"

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/mms/utils/EasyMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .local v1, params:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/xiaomi/mms/utils/EasyMap;

    const-string v4, "userId"

    invoke-direct {v3, v4, p0}, Lcom/xiaomi/mms/utils/EasyMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "passToken"

    invoke-virtual {v3, v4, p1}, Lcom/xiaomi/mms/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/mms/utils/EasyMap;

    move-result-object v0

    .line 59
    .local v0, cookies:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;

    const-string v3, "https://account.xiaomi.com/pass/serviceLogin"

    invoke-static {v3, v1}, Lcom/xiaomi/mms/net/CloudRequestFactory;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, request:Lcom/xiaomi/mms/net/HttpGetSimpleRequest;
    invoke-virtual {v2, v0}, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;->addCookie(Ljava/util/Map;)V

    .line 62
    return-object v2
.end method

.method public static newLoginRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;
    .locals 5
    .parameter "userId"
    .parameter "password"

    .prologue
    .line 42
    new-instance v2, Lcom/xiaomi/mms/utils/EasyMap;

    const-string v3, "user"

    invoke-direct {v2, v3, p0}, Lcom/xiaomi/mms/utils/EasyMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "pwd"

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/mms/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/mms/utils/EasyMap;

    move-result-object v2

    const-string v3, "sid"

    const-string v4, "mixin"

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/mms/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/mms/utils/EasyMap;

    move-result-object v0

    .line 46
    .local v0, params:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;

    const-string v2, "https://account.xiaomi.com/pass/serviceLoginAuth"

    invoke-direct {v1, v2}, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, request:Lcom/xiaomi/mms/net/HttpPostSimpleRequest;
    invoke-virtual {v1, v0}, Lcom/xiaomi/mms/net/HttpPostSimpleRequest;->addRequestParams(Ljava/util/Map;)V

    .line 49
    return-object v1
.end method

.method public static newQueryPhoneRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;
    .locals 6
    .parameter "deviceId"
    .parameter "imsi"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/xiaomi/mms/net/CloudHelper;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p1}, Lcom/xiaomi/mms/net/CloudHelper;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    const-string v3, "http://api.account.xiaomi.com/pass/activate/dev/%s/activating"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, url:Ljava/lang/String;
    new-instance v1, Lcom/xiaomi/mms/utils/EasyMap;

    const-string v3, "imsi"

    invoke-direct {v1, v3, p1}, Lcom/xiaomi/mms/utils/EasyMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .local v1, params:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2, v1}, Lcom/xiaomi/mms/net/CloudRequestFactory;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, fullUrl:Ljava/lang/String;
    new-instance v3, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;

    invoke-direct {v3, v0}, Lcom/xiaomi/mms/net/HttpGetSimpleRequest;-><init>(Ljava/lang/String;)V

    return-object v3
.end method
