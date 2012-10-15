.class public Lentagged/audioformats/ogg/util/OggTagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;
.source "OggTagCreator.java"


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
    .locals 8
    .parameter "tag"
    .parameter "buf"
    .parameter "fields"
    .parameter "tagSize"
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lentagged/audioformats/ogg/OggTag;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, vendorString:Ljava/lang/String;
    invoke-static {v4}, Lentagged/audioformats/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v3, v5

    .line 36
    .local v3, vendorLength:I
    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x2

    const/high16 v7, 0xff

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    const/4 v6, 0x3

    const/high16 v7, -0x100

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-static {v4}, Lentagged/audioformats/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 41
    .local v2, listLength:I
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 42
    .local v0, b:[B
    const/4 v5, 0x3

    const/high16 v6, -0x100

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 43
    const/4 v5, 0x2

    const/high16 v6, 0xff

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 44
    const/4 v5, 0x1

    const v6, 0xff00

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 45
    const/4 v5, 0x0

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 46
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 2
    .parameter "tag"

    .prologue
    .line 55
    instance-of v1, p1, Lentagged/audioformats/ogg/OggTag;

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v0}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    .line 57
    .local v0, oggTag:Lentagged/audioformats/ogg/OggTag;
    invoke-virtual {v0, p1}, Lentagged/audioformats/ogg/OggTag;->merge(Lentagged/audioformats/Tag;)V

    .line 60
    .end local v0           #oggTag:Lentagged/audioformats/ogg/OggTag;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 64
    check-cast p1, Lentagged/audioformats/ogg/OggTag;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
