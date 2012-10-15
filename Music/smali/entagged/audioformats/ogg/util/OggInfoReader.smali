.class public Lentagged/audioformats/ogg/util/OggInfoReader;
.super Ljava/lang/Object;
.source "OggInfoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 4
    .parameter "length"
    .parameter "size"

    .prologue
    .line 119
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
    .locals 16
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v4, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v4}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 31
    .local v4, info:Lentagged/audioformats/EncodingInfo;
    const-wide/16 v6, 0x0

    .line 34
    .local v6, oldPos:J
    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 35
    const-wide/high16 v1, -0x4010

    .line 36
    .local v1, PCMSamplesNumber:D
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 37
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v12

    const/16 v13, 0x53

    if-ne v12, v13, :cond_1

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 40
    const/4 v12, 0x3

    new-array v5, v12, [B

    .line 41
    .local v5, ogg:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 42
    const/4 v12, 0x0

    aget-byte v12, v5, v12

    const/16 v13, 0x4f

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    const/16 v13, 0x67

    if-ne v12, v13, :cond_1

    const/4 v12, 0x2

    aget-byte v12, v5, v12

    const/16 v13, 0x67

    if-ne v12, v13, :cond_1

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x3

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    .line 46
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x1a

    add-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v12

    and-int/lit16 v9, v12, 0xff

    .line 48
    .local v9, pageSegments:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    add-int/lit8 v12, v9, 0x1b

    new-array v3, v12, [B

    .line 51
    .local v3, b:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 53
    new-instance v8, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v8, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 54
    .local v8, pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 55
    invoke-virtual {v8}, Lentagged/audioformats/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    move-result-wide v1

    .line 62
    .end local v3           #b:[B
    .end local v5           #ogg:[B
    .end local v8           #pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    .end local v9           #pageSegments:I
    :cond_0
    const-wide/high16 v12, -0x4010

    cmpl-double v12, v1, v12

    if-nez v12, :cond_2

    .line 64
    new-instance v12, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v13, "Error: Could not find the Ogg Setup block"

    invoke-direct {v12, v13}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 59
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 71
    :cond_2
    const/4 v12, 0x4

    new-array v3, v12, [B

    .line 73
    .restart local v3       #b:[B
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    .line 74
    const-wide/16 v12, 0x1a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v12

    and-int/lit16 v9, v12, 0xff

    .line 76
    .restart local v9       #pageSegments:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    add-int/lit8 v12, v9, 0x1b

    new-array v3, v12, [B

    .line 79
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 81
    new-instance v8, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v8, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 83
    .restart local v8       #pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    invoke-virtual {v8}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v12

    new-array v11, v12, [B

    .line 85
    .local v11, vorbisData:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->read([B)I

    .line 87
    new-instance v10, Lentagged/audioformats/ogg/util/VorbisCodecHeader;

    invoke-direct {v10, v11}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;-><init>([B)V

    .line 90
    .local v10, vorbisCodecHeader:Lentagged/audioformats/ogg/util/VorbisCodecHeader;
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getSamplingRate()I

    move-result v12

    int-to-double v12, v12

    div-double v12, v1, v12

    double-to-float v12, v12

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 91
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getChannelNumber()I

    move-result v12

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 92
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getSamplingRate()I

    move-result v12

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 93
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 94
    const-string v12, ""

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMaxBitrate()I

    move-result v12

    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v13

    if-ne v12, v13, :cond_3

    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMinBitrate()I

    move-result v12

    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 100
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v12

    div-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 101
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    .line 115
    :goto_1
    return-object v4

    .line 103
    :cond_3
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMaxBitrate()I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMinBitrate()I

    move-result v12

    if-nez v12, :cond_4

    .line 107
    invoke-virtual {v10}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v12

    div-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 108
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v4}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lentagged/audioformats/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    move-result v12

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 112
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    goto :goto_1
.end method
