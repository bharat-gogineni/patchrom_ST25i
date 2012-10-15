.class public Lentagged/audioformats/flac/util/FlacTagCreator;
.super Ljava/lang/Object;
.source "FlacTagCreator.java"


# static fields
.field private static final creator:Lentagged/audioformats/ogg/util/OggTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagCreator;-><init>()V

    sput-object v0, Lentagged/audioformats/flac/util/FlacTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;
    .locals 10
    .parameter "tag"
    .parameter "paddingSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v7, Lentagged/audioformats/flac/util/FlacTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-virtual {v7, p1}, Lentagged/audioformats/ogg/util/OggTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 35
    .local v3, ogg:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit8 v5, v7, 0x4

    .line 37
    .local v5, tagLength:I
    add-int v7, v5, p2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, buf:Ljava/nio/ByteBuffer;
    if-lez p2, :cond_0

    const/4 v6, 0x4

    .line 43
    .local v6, type:B
    :goto_0
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 44
    add-int/lit8 v1, v5, -0x4

    .line 45
    .local v1, commentLength:I
    const/4 v7, 0x3

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/high16 v9, 0xff

    and-int/2addr v9, v1

    ushr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    const v9, 0xff00

    and-int/2addr v9, v1

    ushr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 51
    const/4 v7, 0x4

    if-lt p2, v7, :cond_1

    .line 52
    add-int/lit8 v4, p2, -0x4

    .line 53
    .local v4, paddingDataSize:I
    const/16 v7, -0x7f

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    const/4 v7, 0x3

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/high16 v9, 0xff

    and-int/2addr v9, v4

    ushr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    const v9, 0xff00

    and-int/2addr v9, v4

    ushr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    and-int/lit16 v9, v4, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 55
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 56
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    .end local v1           #commentLength:I
    .end local v2           #i:I
    .end local v4           #paddingDataSize:I
    .end local v6           #type:B
    :cond_0
    const/16 v6, -0x7c

    goto :goto_0

    .line 58
    .restart local v1       #commentLength:I
    .restart local v6       #type:B
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 60
    return-object v0
.end method

.method public getTagLength(Lentagged/audioformats/Tag;)I
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v1, Lentagged/audioformats/flac/util/FlacTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-virtual {v1, p1}, Lentagged/audioformats/ogg/util/OggTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, ogg:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    return v1
.end method
