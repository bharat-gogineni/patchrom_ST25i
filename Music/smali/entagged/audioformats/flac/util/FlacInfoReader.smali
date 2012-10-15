.class public Lentagged/audioformats/flac/util/FlacInfoReader;
.super Ljava/lang/Object;
.source "FlacInfoReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lentagged/audioformats/flac/util/FlacInfoReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lentagged/audioformats/flac/util/FlacInfoReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 4
    .parameter "length"
    .parameter "size"

    .prologue
    .line 80
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 11
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 29
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 31
    new-instance v6, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v7, "Error: File empty"

    invoke-direct {v6, v7}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 33
    :cond_0
    invoke-virtual {p1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    new-array v0, v10, [B

    .line 37
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 38
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 39
    .local v1, flac:Ljava/lang/String;
    const-string v6, "fLaC"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 40
    new-instance v6, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v7, "fLaC Header not found"

    invoke-direct {v6, v7}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_1
    const/4 v4, 0x0

    .line 44
    .local v4, mbdsi:Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;
    const/4 v3, 0x0

    .line 45
    .local v3, isLastBlock:Z
    :goto_0
    if-nez v3, :cond_3

    .line 46
    new-array v0, v10, [B

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 48
    new-instance v5, Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-direct {v5, v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;-><init>([B)V

    .line 50
    .local v5, mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;
    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBlockType()I

    move-result v6

    if-nez v6, :cond_2

    .line 51
    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v6

    new-array v0, v6, [B

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 54
    new-instance v4, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;

    .end local v4           #mbdsi:Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;
    invoke-direct {v4, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;-><init>([B)V

    .line 55
    .restart local v4       #mbdsi:Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;
    invoke-virtual {v4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_3

    .line 56
    new-instance v6, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v7, "FLAC StreamInfo not valid"

    invoke-direct {v6, v7}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 60
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock()Z

    move-result v3

    .line 64
    goto :goto_0

    .line 65
    .end local v5           #mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;
    :cond_3
    sget-boolean v6, Lentagged/audioformats/flac/util/FlacInfoReader;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 67
    :cond_4
    new-instance v2, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v2}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 69
    .local v2, info:Lentagged/audioformats/EncodingInfo;
    invoke-virtual {v4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v6

    invoke-virtual {v2, v6}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 70
    invoke-virtual {v4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getChannelNumber()I

    move-result v6

    invoke-virtual {v2, v6}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 71
    invoke-virtual {v4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getSamplingRate()I

    move-result v6

    invoke-virtual {v2, v6}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 72
    invoke-virtual {v4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 73
    const-string v6, ""

    invoke-virtual {v2, v6}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Lentagged/audioformats/flac/util/MetadataBlockDataStreamInfo;->getLength()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lentagged/audioformats/flac/util/FlacInfoReader;->computeBitrate(IJ)I

    move-result v6

    invoke-virtual {v2, v6}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 76
    return-object v2
.end method
