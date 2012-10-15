.class public Lentagged/audioformats/ogg/util/VorbisTagCreator;
.super Ljava/lang/Object;
.source "VorbisTagCreator.java"


# instance fields
.field private creator:Lentagged/audioformats/ogg/util/OggTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    return-void
.end method


# virtual methods
.method public convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v3, p0, Lentagged/audioformats/ogg/util/VorbisTagCreator;->creator:Lentagged/audioformats/ogg/util/OggTagCreator;

    invoke-virtual {v3, p1}, Lentagged/audioformats/ogg/util/OggTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 32
    .local v1, ogg:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/lit8 v2, v3, 0x8

    .line 34
    .local v2, tagLength:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 43
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 46
    return-object v0

    .line 37
    :array_0
    .array-data 0x1
        0x3t
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x73t
    .end array-data
.end method
