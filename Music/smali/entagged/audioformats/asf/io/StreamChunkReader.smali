.class public Lentagged/audioformats/asf/io/StreamChunkReader;
.super Ljava/lang/Object;
.source "StreamChunkReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 40
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/16 v27, 0x0

    .line 84
    .local v27, result:Lentagged/audioformats/asf/data/StreamChunk;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    .line 85
    .local v12, chunkStart:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v21

    .line 86
    .local v21, guid:Lentagged/audioformats/asf/data/GUID;
    sget-object v39, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 87
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v11

    .line 90
    .local v11, chunkLength:Ljava/math/BigInteger;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v33

    .line 91
    .local v33, streamTypeGUID:Lentagged/audioformats/asf/data/GUID;
    sget-object v39, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    sget-object v39, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 96
    :cond_0
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v19

    .line 100
    .local v19, errorConcealment:Lentagged/audioformats/asf/data/GUID;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT64(Ljava/io/RandomAccessFile;)J

    move-result-wide v34

    .line 102
    .local v34, timeOffset:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v36

    .line 103
    .local v36, typeSpecificDataSize:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v31

    .line 109
    .local v31, streamSpecificDataSize:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v22

    .line 110
    .local v22, mask:I
    and-int/lit8 v30, v22, 0x7f

    .line 111
    .local v30, streamNumber:I
    const v39, 0x8000

    and-int v39, v39, v22

    if-eqz v39, :cond_3

    const/16 v18, 0x1

    .line 116
    .local v18, contentEncrypted:Z
    :goto_0
    const/16 v39, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 118
    sget-object v39, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 122
    new-instance v3, Lentagged/audioformats/asf/data/AudioStreamChunk;

    invoke-direct {v3, v12, v13, v11}, Lentagged/audioformats/asf/data/AudioStreamChunk;-><init>(JLjava/math/BigInteger;)V

    .line 124
    .local v3, audioStreamChunk:Lentagged/audioformats/asf/data/AudioStreamChunk;
    move-object/from16 v27, v3

    .line 129
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 130
    .local v16, compressionFormat:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v39

    move/from16 v0, v39

    int-to-long v9, v0

    .line 131
    .local v9, channelCount:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v28

    .line 132
    .local v28, samplingRate:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 133
    .local v4, avgBytesPerSec:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v39

    move/from16 v0, v39

    int-to-long v7, v0

    .line 134
    .local v7, blockAlignment:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v6

    .line 135
    .local v6, bitsPerSample:I
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v15

    .line 136
    .local v15, codecSpecificDataSize:I
    new-array v14, v15, [B

    .line 137
    .local v14, codecSpecificData:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 139
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    .line 140
    invoke-virtual {v3, v9, v10}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setChannelCount(J)V

    .line 141
    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    .line 142
    invoke-virtual {v3, v4, v5}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    .line 143
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setErrorConcealment(Lentagged/audioformats/asf/data/GUID;)V

    .line 144
    invoke-virtual {v3, v7, v8}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    .line 145
    invoke-virtual {v3, v6}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    .line 146
    invoke-virtual {v3, v14}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setCodecData([B)V

    .line 179
    .end local v3           #audioStreamChunk:Lentagged/audioformats/asf/data/AudioStreamChunk;
    .end local v4           #avgBytesPerSec:J
    .end local v6           #bitsPerSample:I
    .end local v7           #blockAlignment:J
    .end local v9           #channelCount:J
    .end local v14           #codecSpecificData:[B
    .end local v15           #codecSpecificDataSize:I
    .end local v16           #compressionFormat:J
    .end local v28           #samplingRate:J
    :cond_1
    :goto_1
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/StreamChunk;->setStreamNumber(I)V

    .line 180
    move-object/from16 v0, v27

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    .line 181
    move-object/from16 v0, v27

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    .line 182
    move-object/from16 v0, v27

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/StreamChunk;->setTimeOffset(J)V

    .line 183
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/StreamChunk;->setContentEncrypted(Z)V

    .line 186
    .end local v11           #chunkLength:Ljava/math/BigInteger;
    .end local v18           #contentEncrypted:Z
    .end local v19           #errorConcealment:Lentagged/audioformats/asf/data/GUID;
    .end local v22           #mask:I
    .end local v30           #streamNumber:I
    .end local v31           #streamSpecificDataSize:J
    .end local v33           #streamTypeGUID:Lentagged/audioformats/asf/data/GUID;
    .end local v34           #timeOffset:J
    .end local v36           #typeSpecificDataSize:J
    :cond_2
    return-object v27

    .line 111
    .restart local v11       #chunkLength:Ljava/math/BigInteger;
    .restart local v19       #errorConcealment:Lentagged/audioformats/asf/data/GUID;
    .restart local v22       #mask:I
    .restart local v30       #streamNumber:I
    .restart local v31       #streamSpecificDataSize:J
    .restart local v33       #streamTypeGUID:Lentagged/audioformats/asf/data/GUID;
    .restart local v34       #timeOffset:J
    .restart local v36       #typeSpecificDataSize:J
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 147
    .restart local v18       #contentEncrypted:Z
    :cond_4
    sget-object v39, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 151
    new-instance v38, Lentagged/audioformats/asf/data/VideoStreamChunk;

    move-object/from16 v0, v38

    invoke-direct {v0, v12, v13, v11}, Lentagged/audioformats/asf/data/VideoStreamChunk;-><init>(JLjava/math/BigInteger;)V

    .line 153
    .local v38, videoStreamChunk:Lentagged/audioformats/asf/data/VideoStreamChunk;
    move-object/from16 v27, v38

    .line 155
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v25

    .line 156
    .local v25, pictureWidth:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v23

    .line 159
    .local v23, pictureHeight:J
    const/16 v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 165
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    .line 167
    const/16 v39, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 168
    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 169
    .local v20, fourCC:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 171
    move-object/from16 v0, v38

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    .line 172
    move-object/from16 v0, v38

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    .line 173
    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setCodecId([B)V

    goto :goto_1
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 2
    .parameter "raf"
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    new-instance v0, Lentagged/audioformats/asf/io/StreamChunkReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/StreamChunkReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/StreamChunkReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
