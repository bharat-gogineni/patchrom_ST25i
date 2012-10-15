.class public Lcom/xiaomi/mms/net/CloudRequestExecutor;
.super Ljava/lang/Object;
.source "CloudRequestExecutor.java"


# static fields
.field private static final INT_0:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mms/net/CloudRequestExecutor;->INT_0:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkResponse([B)V
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to get response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    return-void
.end method

.method public static getServiceToken(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    .locals 4
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/mms/net/exception/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->connect()V

    .line 142
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 143
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "serviceToken"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, serviceToken:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v2, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v3, "no service token in response"

    invoke-direct {v2, v3}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #serviceToken:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    throw v2

    .restart local v0       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #serviceToken:Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    return-object v1
.end method

.method public static getUid(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    .locals 10
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/mms/net/exception/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->connect()V

    .line 70
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->getResponseBody()[B

    move-result-object v5

    .line 71
    .local v5, responseBody:[B
    invoke-static {v5}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->checkResponse([B)V

    .line 72
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Lcom/xiaomi/mms/utils/ObjectUtils;->jsonToMap([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 74
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v4, :cond_0

    .line 75
    new-instance v8, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v9, "failed to convert result to map"

    invoke-direct {v8, v9}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #responseBody:[B
    :catchall_0
    move-exception v8

    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    throw v8

    .line 78
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5       #responseBody:[B
    :cond_0
    :try_start_1
    const-string v8, "code"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, code:Ljava/lang/Object;
    sget-object v8, Lcom/xiaomi/mms/net/CloudRequestExecutor;->INT_0:Ljava/lang/Integer;

    invoke-virtual {v8, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    const-string v8, "data"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, dataObj:Ljava/lang/Object;
    instance-of v8, v3, Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 82
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 83
    .local v2, dataMap:Ljava/util/Map;
    const-string v8, "userId"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 84
    .local v7, userIdObj:Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 85
    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 86
    .local v6, userId:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_1

    .line 87
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 95
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    :goto_0
    return-object v8

    .line 90
    :cond_1
    const/4 v8, 0x0

    .line 95
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    goto :goto_0

    .end local v2           #dataMap:Ljava/util/Map;
    .end local v3           #dataObj:Ljava/lang/Object;
    .end local v6           #userId:Ljava/lang/Integer;
    .end local v7           #userIdObj:Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    .line 97
    new-instance v8, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v9, "failed to parse response"

    invoke-direct {v8, v9}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static login(Lcom/xiaomi/mms/net/SimpleRequest;)Lcom/xiaomi/mms/data/LoginInfo;
    .locals 12
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/mms/net/exception/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->connect()V

    .line 104
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 105
    .local v8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Location"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 106
    .local v5, serviceTokenLocation:Ljava/lang/String;
    const-string v0, "userId"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, userId:Ljava/lang/String;
    const-string v0, "passToken"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, passToken:Ljava/lang/String;
    const-string v0, "extension-pragma"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 109
    .local v7, extParams:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "no service token url"

    invoke-direct {v0, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v1           #userId:Ljava/lang/String;
    .end local v2           #passToken:Ljava/lang/String;
    .end local v5           #serviceTokenLocation:Ljava/lang/String;
    .end local v7           #extParams:Ljava/lang/String;
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    throw v0

    .line 112
    .restart local v1       #userId:Ljava/lang/String;
    .restart local v2       #passToken:Ljava/lang/String;
    .restart local v5       #serviceTokenLocation:Ljava/lang/String;
    .restart local v7       #extParams:Ljava/lang/String;
    .restart local v8       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "no user id"

    invoke-direct {v0, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "no passToken"

    invoke-direct {v0, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "no extension-pragma"

    invoke-direct {v0, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_3
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, jObj:Lorg/json/JSONObject;
    const-string v0, "ssecurity"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, security:Ljava/lang/String;
    const-string v0, "nonce"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 131
    .local v3, nonce:Ljava/lang/Long;
    :try_start_3
    new-instance v0, Lcom/xiaomi/mms/data/LoginInfo;

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mms/data/LoginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    return-object v0

    .line 127
    .end local v3           #nonce:Ljava/lang/Long;
    .end local v4           #security:Ljava/lang/String;
    .end local v9           #jObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 128
    .local v6, e:Lorg/json/JSONException;
    :try_start_4
    new-instance v0, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "failed to parse security or nonce"

    invoke-direct {v0, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static queryPhone(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    .locals 12
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/mms/net/exception/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->connect()V

    .line 33
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->getResponseBody()[B

    move-result-object v8

    .line 34
    .local v8, responseBody:[B
    invoke-static {v8}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->checkResponse([B)V

    .line 35
    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lcom/xiaomi/mms/utils/ObjectUtils;->jsonToMap([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 37
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v5, :cond_0

    .line 38
    new-instance v9, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "failed to convert result to map"

    invoke-direct {v9, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #responseBody:[B
    :catchall_0
    move-exception v9

    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    throw v9

    .line 41
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8       #responseBody:[B
    :cond_0
    :try_start_1
    const-string v9, "code"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, code:Ljava/lang/Object;
    sget-object v9, Lcom/xiaomi/mms/net/CloudRequestExecutor;->INT_0:Ljava/lang/Integer;

    invoke-virtual {v9, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 43
    const-string v9, "data"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    .local v3, dataObj:Ljava/lang/Object;
    instance-of v9, v3, Ljava/util/Map;

    if-eqz v9, :cond_1

    .line 45
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 46
    .local v2, dataMap:Ljava/util/Map;
    const-string v9, "phone"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 47
    .local v7, phoneObj:Ljava/lang/Object;
    const-string v9, "imsi"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    .local v4, imsiObj:Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_1

    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 51
    const-string v9, "CloudRequestExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get phone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 54
    .local v6, phone:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 61
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    return-object v6

    .end local v2           #dataMap:Ljava/util/Map;
    .end local v3           #dataObj:Ljava/lang/Object;
    .end local v4           #imsiObj:Ljava/lang/Object;
    .end local v6           #phone:Ljava/lang/String;
    .end local v7           #phoneObj:Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    .line 63
    new-instance v9, Lcom/xiaomi/mms/net/exception/InvalidResponseException;

    const-string v10, "failed to parse response"

    invoke-direct {v9, v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
