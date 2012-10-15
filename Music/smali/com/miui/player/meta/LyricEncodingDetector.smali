.class public Lcom/miui/player/meta/LyricEncodingDetector;
.super Ljava/lang/Object;
.source "LyricEncodingDetector.java"


# static fields
.field private static final ENCODE_MAPPING:Ljava/util/Map;
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

.field private static final SUPPORTED_ENCODING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/meta/LyricEncodingDetector;->ENCODE_MAPPING:Ljava/util/Map;

    .line 17
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/player/meta/LyricEncodingDetector;->SUPPORTED_ENCODING:Ljava/util/Set;

    .line 22
    sget-object v0, Lcom/miui/player/meta/LyricEncodingDetector;->ENCODE_MAPPING:Ljava/util/Map;

    const-string v1, "GB18030"

    const-string v2, "GBK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 31
    .local v1, detector:Lorg/mozilla/universalchardet/UniversalDetector;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 32
    .local v0, buf:[B
    const/4 v3, 0x0

    .line 33
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 36
    .local v2, encoding:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, nread:I
    if-lez v5, :cond_1

    .line 41
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v5}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    .line 42
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 57
    :cond_2
    invoke-static {v2}, Lcom/miui/player/meta/LyricEncodingDetector;->postProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 52
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #nread:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    :goto_0
    if-eqz v3, :cond_3

    .line 53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v6

    .line 52
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private static postProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encode"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, ret:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 68
    sget-object v1, Lcom/miui/player/meta/LyricEncodingDetector;->SUPPORTED_ENCODING:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    move-object v0, p0

    .line 76
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .end local v0           #ret:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 72
    .restart local v0       #ret:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/miui/player/meta/LyricEncodingDetector;->ENCODE_MAPPING:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "GBK"

    goto :goto_1
.end method
