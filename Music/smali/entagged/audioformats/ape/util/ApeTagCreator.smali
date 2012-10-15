.class public Lentagged/audioformats/ape/util/ApeTagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;
.source "ApeTagCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .locals 6
    .parameter "tag"
    .parameter "buf"
    .parameter "fields"
    .parameter "tagSize"
    .parameter "paddingSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v4, "APETAGEX"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 39
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    add-int/lit8 v3, p4, -0x20

    .line 43
    .local v3, size:I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 44
    .local v0, b:[B
    const/4 v4, 0x3

    const/high16 v5, -0x100

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 45
    const/4 v4, 0x2

    const/high16 v5, 0xff

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 46
    const/4 v4, 0x1

    const v5, 0xff00

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 47
    const/4 v4, 0x0

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 48
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 52
    .local v2, listLength:I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 53
    const/4 v4, 0x3

    const/high16 v5, -0x100

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 54
    const/4 v4, 0x2

    const/high16 v5, 0xff

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 55
    const/4 v4, 0x1

    const v5, 0xff00

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 56
    const/4 v4, 0x0

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 57
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 73
    :cond_0
    const-string v4, "APETAGEX"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 76
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 79
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 80
    const/4 v4, 0x3

    const/high16 v5, -0x100

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 81
    const/4 v4, 0x2

    const/high16 v5, 0xff

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 82
    const/4 v4, 0x1

    const v5, 0xff00

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 83
    const/4 v4, 0x0

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 84
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 88
    const/4 v4, 0x3

    const/high16 v5, -0x100

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 89
    const/4 v4, 0x2

    const/high16 v5, 0xff

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 90
    const/4 v4, 0x1

    const v5, 0xff00

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 91
    const/4 v4, 0x0

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 92
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    return-void

    .line 39
    nop

    :array_0
    .array-data 0x1
        0xd0t
        0x7t
        0x0t
        0x0t
    .end array-data

    .line 60
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0xa0t
    .end array-data

    .line 64
    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 76
    :array_3
    .array-data 0x1
        0xd0t
        0x7t
        0x0t
        0x0t
    .end array-data

    .line 95
    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x80t
    .end array-data

    .line 99
    :array_5
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 2
    .parameter "tag"

    .prologue
    .line 105
    instance-of v1, p1, Lentagged/audioformats/ape/ApeTag;

    if-nez v1, :cond_0

    .line 106
    new-instance v0, Lentagged/audioformats/ape/ApeTag;

    invoke-direct {v0}, Lentagged/audioformats/ape/ApeTag;-><init>()V

    .line 107
    .local v0, apeTag:Lentagged/audioformats/ape/ApeTag;
    invoke-virtual {v0, p1}, Lentagged/audioformats/ape/ApeTag;->merge(Lentagged/audioformats/Tag;)V

    .line 110
    .end local v0           #apeTag:Lentagged/audioformats/ape/ApeTag;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 114
    const/16 v0, 0x40

    return v0
.end method
