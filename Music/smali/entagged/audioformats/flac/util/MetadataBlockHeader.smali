.class public Lentagged/audioformats/flac/util/MetadataBlockHeader;
.super Ljava/lang/Object;
.source "MetadataBlockHeader.java"


# instance fields
.field private blockType:I

.field private bytes:[B

.field private dataLength:I

.field private isLastBlock:Z


# direct methods
.method public constructor <init>([B)V
    .locals 8
    .parameter "b"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x7

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock:Z

    .line 31
    aget-byte v2, p1, v4

    and-int/lit8 v1, v2, 0x7f

    .line 32
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 45
    const/4 v2, 0x6

    iput v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    .line 48
    :goto_1
    aget-byte v2, p1, v3

    invoke-direct {p0, v2}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->u(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    aget-byte v3, p1, v6

    invoke-direct {p0, v3}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    aget-byte v3, p1, v7

    invoke-direct {p0, v3}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->u(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->dataLength:I

    .line 50
    new-array v2, v5, [B

    iput-object v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v5, :cond_1

    .line 52
    iget-object v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    aget-byte v3, p1, v0

    aput-byte v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #type:I
    :cond_0
    move v2, v4

    .line 29
    goto :goto_0

    .line 33
    .restart local v1       #type:I
    :pswitch_0
    iput v4, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    .line 35
    :pswitch_1
    iput v3, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    .line 37
    :pswitch_2
    iput v6, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    .line 39
    :pswitch_3
    iput v7, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    .line 41
    :pswitch_4
    iput v5, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    .line 43
    :pswitch_5
    const/4 v2, 0x5

    iput v2, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    goto :goto_1

    .line 53
    .restart local v0       #i:I
    :cond_1
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private u(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 56
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getBlockType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->blockType:I

    return v0
.end method

.method public getBytes()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    iget-object v1, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 85
    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->bytes:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->dataLength:I

    return v0
.end method

.method public isLastBlock()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock:Z

    return v0
.end method
