.class public Lentagged/audioformats/mpc/util/MpcInfoReader;
.super Ljava/lang/Object;
.source "MpcInfoReader.java"


# direct methods
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
    .line 95
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private read_syncsafe_integer(Ljava/io/RandomAccessFile;)I
    .locals 2
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, value:I
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    .line 87
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    .line 88
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 89
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 91
    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 12
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    .line 29
    new-instance v1, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v1}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 32
    .local v1, info:Lentagged/audioformats/EncodingInfo;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-nez v7, :cond_0

    .line 34
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: File empty"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    new-instance v7, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v8, "File is empty"

    invoke-direct {v7, v8}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 38
    :cond_0
    invoke-virtual {p1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    new-array v0, v9, [B

    .line 43
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 44
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 45
    .local v2, mpc:Ljava/lang/String;
    const-string v7, "MP+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "ID3"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    const-wide/16 v7, 0x6

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    invoke-direct {p0, p1}, Lentagged/audioformats/mpc/util/MpcInfoReader;->read_syncsafe_integer(Ljava/io/RandomAccessFile;)I

    move-result v6

    .line 51
    .local v6, tagSize:I
    add-int/lit8 v7, v6, 0xa

    int-to-long v7, v7

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    new-array v0, v9, [B

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 56
    new-instance v2, Ljava/lang/String;

    .end local v2           #mpc:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 57
    .restart local v2       #mpc:Ljava/lang/String;
    const-string v7, "MP+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 59
    new-instance v7, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v8, "MP+ Header not found"

    invoke-direct {v7, v8}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    .end local v6           #tagSize:I
    :cond_1
    const-string v7, "MP+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 62
    new-instance v7, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v8, "MP+ Header not found"

    invoke-direct {v7, v8}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 65
    :cond_2
    const/16 v7, 0x19

    new-array v0, v7, [B

    .line 66
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 67
    new-instance v3, Lentagged/audioformats/mpc/util/MpcHeader;

    invoke-direct {v3, v0}, Lentagged/audioformats/mpc/util/MpcHeader;-><init>([B)V

    .line 71
    .local v3, mpcH:Lentagged/audioformats/mpc/util/MpcHeader;
    invoke-virtual {v3}, Lentagged/audioformats/mpc/util/MpcHeader;->getSamplesNumber()I

    move-result v7

    int-to-double v4, v7

    .line 73
    .local v4, pcm:D
    const-wide/high16 v7, 0x4092

    mul-double/2addr v7, v4

    invoke-virtual {v3}, Lentagged/audioformats/mpc/util/MpcHeader;->getSamplingRate()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 74
    invoke-virtual {v3}, Lentagged/audioformats/mpc/util/MpcHeader;->getChannelNumber()I

    move-result v7

    invoke-virtual {v1, v7}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 75
    invoke-virtual {v3}, Lentagged/audioformats/mpc/util/MpcHeader;->getSamplingRate()I

    move-result v7

    invoke-virtual {v1, v7}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 76
    invoke-virtual {v3}, Lentagged/audioformats/mpc/util/MpcHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Lentagged/audioformats/mpc/util/MpcHeader;->getEncoderInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v7

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {p0, v7, v8, v9}, Lentagged/audioformats/mpc/util/MpcInfoReader;->computeBitrate(IJ)I

    move-result v7

    invoke-virtual {v1, v7}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 80
    return-object v1
.end method
