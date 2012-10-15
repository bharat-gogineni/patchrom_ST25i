.class public Lentagged/audioformats/generic/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "f"

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, sp:[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 69
    aget-object v2, v1, v0

    const-string v3, "tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    aget-object v2, v1, v0

    .line 74
    :goto_1
    return-object v2

    .line 68
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public static getLongNumber([BII)J
    .locals 5
    .parameter "b"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 97
    const-wide/16 v1, 0x0

    .line 98
    .local v1, number:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    .line 99
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-wide v1
.end method

.method public static getNumber([BII)I
    .locals 2
    .parameter "b"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
