.class public Lentagged/audioformats/mp3/util/Mp3InfoReader;
.super Ljava/lang/Object;
.source "Mp3InfoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, value:I
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    .line 180
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    .line 181
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 182
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 184
    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 30
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v7, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v7}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 32
    .local v7, encodingInfo:Lentagged/audioformats/EncodingInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_0

    .line 34
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v25, "Error: File empty"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    new-instance v24, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v25, "File is empty"

    invoke-direct/range {v24 .. v25}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 39
    :cond_0
    const/4 v12, 0x0

    .line 40
    .local v12, id3TagSize:I
    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 43
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 44
    .local v5, bbb:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 45
    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v3, ID3:Ljava/lang/String;
    const-string v24, "ID3"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 48
    const-wide/16 v24, 0x6

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 49
    invoke-direct/range {p0 .. p1}, Lentagged/audioformats/mp3/util/Mp3InfoReader;->read_syncsafe_integer(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 50
    add-int/lit8 v24, v12, 0xa

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    :cond_1
    const/4 v8, 0x0

    .line 56
    .local v8, firstFrame:Lentagged/audioformats/mp3/util/MPEGFrame;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v4, v0, [B

    .line 57
    .local v4, b:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 61
    :goto_0
    const/16 v24, 0x0

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/16 v24, 0x1

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xe0

    move/from16 v24, v0

    const/16 v25, 0xe0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/16 v24, 0x1

    aget-byte v24, v4, v24

    and-int/lit8 v24, v24, 0x6

    if-eqz v24, :cond_2

    const/16 v24, 0x2

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    const/16 v25, 0xf0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v24, 0x2

    aget-byte v24, v4, v24

    and-int/lit8 v24, v24, 0xc

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x4

    sub-long v26, v26, v28

    cmp-long v24, v24, v26

    if-gez v24, :cond_3

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x3

    sub-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_0

    .line 71
    :cond_3
    new-instance v8, Lentagged/audioformats/mp3/util/MPEGFrame;

    .end local v8           #firstFrame:Lentagged/audioformats/mp3/util/MPEGFrame;
    invoke-direct {v8, v4}, Lentagged/audioformats/mp3/util/MPEGFrame;-><init>([B)V

    .line 75
    .restart local v8       #firstFrame:Lentagged/audioformats/mp3/util/MPEGFrame;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v24

    if-nez v24, :cond_5

    .line 79
    :cond_4
    new-instance v24, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v25, "Error: could not synchronize to first mp3 frame"

    invoke-direct/range {v24 .. v25}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 82
    :cond_5
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getFrameLength()I

    move-result v9

    .line 84
    .local v9, firstFrameLength:I
    const/16 v17, 0x0

    .line 86
    .local v17, skippedLength:I
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getChannelMode()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x11

    add-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    add-int/lit8 v17, v17, 0x11

    .line 102
    :cond_6
    :goto_1
    const/16 v16, 0x0

    .line 105
    .local v16, optionalFrameLength:I
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 107
    .local v22, xingPart1:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 108
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x64

    add-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 110
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 112
    .local v23, xingPart2:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 114
    new-instance v20, Lentagged/audioformats/mp3/util/XingMPEGFrame;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/mp3/util/XingMPEGFrame;-><init>([B[B)V

    .line 115
    .local v20, vbrInfoFrame:Lentagged/audioformats/mp3/util/VbrInfoFrame;
    invoke-interface/range {v20 .. v20}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->isValid()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 116
    add-int/lit8 v16, v16, 0x78

    .line 117
    const/16 v24, 0x24

    move/from16 v0, v24

    new-array v13, v0, [B

    .line 118
    .local v13, lameHeader:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->read([B)I

    .line 120
    new-instance v6, Lentagged/audioformats/mp3/util/LameMPEGFrame;

    invoke-direct {v6, v13}, Lentagged/audioformats/mp3/util/LameMPEGFrame;-><init>([B)V

    .line 121
    .local v6, currentLameFrame:Lentagged/audioformats/mp3/util/LameMPEGFrame;
    invoke-virtual {v6}, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValid()Z

    move-result v24

    if-nez v24, :cond_a

    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x24

    sub-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 126
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    int-to-long v0, v9

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    add-int v26, v17, v16

    add-int/lit8 v26, v26, 0x4

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    .end local v6           #currentLameFrame:Lentagged/audioformats/mp3/util/LameMPEGFrame;
    .end local v13           #lameHeader:[B
    :goto_3
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSampleNumber()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v18, v24, v26

    .line 145
    .local v18, timePerFrame:D
    invoke-interface/range {v20 .. v20}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->isValid()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 147
    invoke-interface/range {v20 .. v20}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->getFrameCount()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v14, v18, v24

    .line 148
    .local v14, lengthInSeconds:D
    invoke-interface/range {v20 .. v20}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->isVbr()Z

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    .line 149
    invoke-interface/range {v20 .. v20}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->getFileSize()I

    move-result v11

    .line 151
    .local v11, fs:I
    if-nez v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    int-to-long v0, v12

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    :goto_4
    const-wide/16 v26, 0x8

    mul-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-interface/range {v20 .. v20}, Lentagged/audioformats/mp3/util/VbrInfoFrame;->getFrameCount()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v18

    const-wide v28, 0x408f400000000000L

    mul-double v26, v26, v28

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 166
    .end local v11           #fs:I
    :goto_5
    double-to-float v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 167
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getChannelNumber()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 168
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 169
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionToString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " || "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getLayerVersion()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lentagged/audioformats/mp3/util/MPEGFrame;->layerToString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 170
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 172
    return-object v7

    .line 90
    .end local v14           #lengthInSeconds:D
    .end local v16           #optionalFrameLength:I
    .end local v18           #timePerFrame:D
    .end local v20           #vbrInfoFrame:Lentagged/audioformats/mp3/util/VbrInfoFrame;
    .end local v22           #xingPart1:[B
    .end local v23           #xingPart2:[B
    :cond_7
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 91
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x20

    add-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 92
    add-int/lit8 v17, v17, 0x20

    goto/16 :goto_1

    .line 94
    :cond_8
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getChannelMode()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 95
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x9

    add-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 96
    add-int/lit8 v17, v17, 0x9

    goto/16 :goto_1

    .line 98
    :cond_9
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getMPEGVersion()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 99
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x11

    add-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 100
    add-int/lit8 v17, v17, 0x11

    goto/16 :goto_1

    .line 124
    .restart local v6       #currentLameFrame:Lentagged/audioformats/mp3/util/LameMPEGFrame;
    .restart local v13       #lameHeader:[B
    .restart local v16       #optionalFrameLength:I
    .restart local v20       #vbrInfoFrame:Lentagged/audioformats/mp3/util/VbrInfoFrame;
    .restart local v22       #xingPart1:[B
    .restart local v23       #xingPart2:[B
    :cond_a
    add-int/lit8 v16, v16, 0x24

    goto/16 :goto_2

    .line 129
    .end local v6           #currentLameFrame:Lentagged/audioformats/mp3/util/LameMPEGFrame;
    .end local v13           #lameHeader:[B
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x78

    sub-long v24, v24, v26

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    const-wide/16 v26, 0x20

    add-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 132
    const/16 v24, 0x12

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 133
    .local v21, vbriHeader:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 135
    new-instance v20, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;

    .end local v20           #vbrInfoFrame:Lentagged/audioformats/mp3/util/VbrInfoFrame;
    invoke-direct/range {v20 .. v21}, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;-><init>([B)V

    .line 137
    .restart local v20       #vbrInfoFrame:Lentagged/audioformats/mp3/util/VbrInfoFrame;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x12

    sub-long v24, v24, v26

    const-wide/16 v26, 0x4

    sub-long v24, v24, v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_3

    .line 151
    .end local v21           #vbriHeader:[B
    .restart local v11       #fs:I
    .restart local v14       #lengthInSeconds:D
    .restart local v18       #timePerFrame:D
    :cond_c
    int-to-long v0, v11

    move-wide/from16 v24, v0

    goto/16 :goto_4

    .line 155
    .end local v11           #fs:I
    .end local v14           #lengthInSeconds:D
    :cond_d
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getFrameLength()I

    move-result v10

    .line 156
    .local v10, frameLength:I
    if-nez v10, :cond_e

    .line 157
    new-instance v24, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v25, "Error while reading header(maybe file is corrupted, or missing first mpeg frame before xing header)"

    invoke-direct/range {v24 .. v25}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 159
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    int-to-long v0, v12

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    int-to-long v0, v10

    move-wide/from16 v26, v0

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v14, v18, v24

    .line 161
    .restart local v14       #lengthInSeconds:D
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    .line 162
    invoke-virtual {v8}, Lentagged/audioformats/mp3/util/MPEGFrame;->getBitrate()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    goto/16 :goto_5
.end method
