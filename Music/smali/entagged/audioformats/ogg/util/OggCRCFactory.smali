.class public Lentagged/audioformats/ogg/util/OggCRCFactory;
.super Ljava/lang/Object;
.source "OggCRCFactory.java"


# static fields
.field private static crc_lookup:[J

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lentagged/audioformats/ogg/util/OggCRCFactory;->crc_lookup:[J

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lentagged/audioformats/ogg/util/OggCRCFactory;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCRC([B)[B
    .locals 13
    .parameter "data"

    .prologue
    const/16 v12, 0x18

    const/16 v11, 0x8

    const-wide/16 v9, 0xff

    .line 57
    sget-boolean v5, Lentagged/audioformats/ogg/util/OggCRCFactory;->init:Z

    if-nez v5, :cond_0

    .line 58
    invoke-static {}, Lentagged/audioformats/ogg/util/OggCRCFactory;->init()V

    .line 60
    :cond_0
    const-wide/16 v0, 0x0

    .line 62
    .local v0, crc_reg:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 63
    ushr-long v5, v0, v12

    and-long/2addr v5, v9

    aget-byte v7, p0, v2

    invoke-static {v7}, Lentagged/audioformats/ogg/util/OggCRCFactory;->u(I)I

    move-result v7

    int-to-long v7, v7

    xor-long/2addr v5, v7

    long-to-int v4, v5

    .line 65
    .local v4, tmp:I
    shl-long v5, v0, v11

    sget-object v7, Lentagged/audioformats/ogg/util/OggCRCFactory;->crc_lookup:[J

    aget-wide v7, v7, v4

    xor-long v0, v5, v7

    .line 66
    const-wide/16 v5, -0x1

    and-long/2addr v0, v5

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v4           #tmp:I
    :cond_1
    const/4 v5, 0x4

    new-array v3, v5, [B

    .line 71
    .local v3, sum:[B
    const/4 v5, 0x0

    and-long v6, v0, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 72
    const/4 v5, 0x1

    ushr-long v6, v0, v11

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 73
    const/4 v5, 0x2

    const/16 v6, 0x10

    ushr-long v6, v0, v6

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 74
    const/4 v5, 0x3

    ushr-long v6, v0, v12

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 76
    return-object v3
.end method

.method public static init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x100

    if-ge v0, v4, :cond_2

    .line 36
    shl-int/lit8 v4, v0, 0x18

    int-to-long v2, v4

    .line 38
    .local v2, r:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 39
    const-wide v4, 0x80000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 40
    shl-long v4, v2, v8

    const-wide/32 v6, 0x4c11db7

    xor-long v2, v4, v6

    .line 38
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_0
    shl-long/2addr v2, v8

    goto :goto_2

    .line 44
    :cond_1
    sget-object v4, Lentagged/audioformats/ogg/util/OggCRCFactory;->crc_lookup:[J

    const-wide/16 v5, -0x1

    and-long/2addr v5, v2

    aput-wide v5, v4, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v1           #j:I
    .end local v2           #r:J
    :cond_2
    sput-boolean v8, Lentagged/audioformats/ogg/util/OggCRCFactory;->init:Z

    .line 47
    return-void
.end method

.method private static u(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 81
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
