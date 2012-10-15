.class public Lentagged/audioformats/asf/io/AsfHeaderReader;
.super Ljava/lang/Object;
.source "AsfHeaderReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;
    .locals 22
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, result:Lentagged/audioformats/asf/data/AsfHeader;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 87
    .local v4, chunkStart:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v18

    .line 89
    .local v18, possibleGuid:Lentagged/audioformats/asf/data/GUID;
    sget-object v20, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 91
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v6

    .line 93
    .local v6, chunkLen:Ljava/math/BigInteger;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    .line 95
    .local v7, chunkCount:J
    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 100
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v11, chunks:Ljava/util/ArrayList;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-lez v20, :cond_0

    .line 102
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/io/ChunkHeaderReader;->readChunckHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v10

    .line 103
    .local v10, chunk:Lentagged/audioformats/asf/data/Chunk;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getChunckEnd()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 110
    .end local v10           #chunk:Lentagged/audioformats/asf/data/Chunk;
    :cond_0
    new-instance v3, Lentagged/audioformats/asf/data/AsfHeader;

    .end local v3           #result:Lentagged/audioformats/asf/data/AsfHeader;
    invoke-direct/range {v3 .. v8}, Lentagged/audioformats/asf/data/AsfHeader;-><init>(JLjava/math/BigInteger;J)V

    .line 116
    .restart local v3       #result:Lentagged/audioformats/asf/data/AsfHeader;
    const/16 v16, 0x0

    .line 117
    .local v16, fileHeader:Lentagged/audioformats/asf/data/FileHeader;
    const/4 v15, 0x0

    .line 118
    .local v15, extendedDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    const/4 v14, 0x0

    .line 119
    .local v14, encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;
    const/16 v19, 0x0

    .line 120
    .local v19, streamChunk:Lentagged/audioformats/asf/data/StreamChunk;
    const/4 v12, 0x0

    .line 121
    .local v12, contentDescription:Lentagged/audioformats/asf/data/ContentDescription;
    const/4 v9, 0x0

    .line 123
    .local v9, bitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 124
    .local v17, iterator:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 125
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lentagged/audioformats/asf/data/Chunk;

    .line 126
    .local v13, currentChunk:Lentagged/audioformats/asf/data/Chunk;
    if-nez v16, :cond_2

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lentagged/audioformats/asf/io/FileHeaderReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v16

    if-nez v16, :cond_1

    .line 131
    :cond_2
    if-nez v15, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lentagged/audioformats/asf/io/ExtContentDescReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v15

    if-nez v15, :cond_1

    .line 136
    :cond_3
    if-nez v14, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lentagged/audioformats/asf/io/EncodingChunkReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v14

    if-nez v14, :cond_1

    .line 141
    :cond_4
    if-nez v19, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lentagged/audioformats/asf/io/StreamChunkReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 144
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lentagged/audioformats/asf/data/AsfHeader;->addStreamChunk(Lentagged/audioformats/asf/data/StreamChunk;)V

    .line 145
    const/16 v19, 0x0

    .line 146
    goto :goto_1

    .line 148
    :cond_5
    if-nez v12, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v12

    if-nez v12, :cond_1

    .line 153
    :cond_6
    if-nez v9, :cond_7

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;->read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v9

    if-nez v9, :cond_1

    .line 163
    :cond_7
    invoke-virtual {v3, v13}, Lentagged/audioformats/asf/data/AsfHeader;->addUnspecifiedChunk(Lentagged/audioformats/asf/data/Chunk;)V

    goto :goto_1

    .line 169
    .end local v13           #currentChunk:Lentagged/audioformats/asf/data/Chunk;
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lentagged/audioformats/asf/data/AsfHeader;->setFileHeader(Lentagged/audioformats/asf/data/FileHeader;)V

    .line 170
    invoke-virtual {v3, v14}, Lentagged/audioformats/asf/data/AsfHeader;->setEncodingChunk(Lentagged/audioformats/asf/data/EncodingChunk;)V

    .line 175
    invoke-virtual {v3, v15}, Lentagged/audioformats/asf/data/AsfHeader;->setExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    .line 176
    invoke-virtual {v3, v12}, Lentagged/audioformats/asf/data/AsfHeader;->setContentDescription(Lentagged/audioformats/asf/data/ContentDescription;)V

    .line 177
    invoke-virtual {v3, v9}, Lentagged/audioformats/asf/data/AsfHeader;->setStreamBitratePropertiesChunk(Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;)V

    .line 179
    .end local v6           #chunkLen:Ljava/math/BigInteger;
    .end local v7           #chunkCount:J
    .end local v9           #bitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    .end local v11           #chunks:Ljava/util/ArrayList;
    .end local v12           #contentDescription:Lentagged/audioformats/asf/data/ContentDescription;
    .end local v14           #encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;
    .end local v15           #extendedDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .end local v16           #fileHeader:Lentagged/audioformats/asf/data/FileHeader;
    .end local v17           #iterator:Ljava/util/Iterator;
    .end local v19           #streamChunk:Lentagged/audioformats/asf/data/StreamChunk;
    :cond_9
    return-object v3
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lentagged/audioformats/asf/io/AsfHeaderReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/AsfHeaderReader;-><init>()V

    .line 63
    .local v0, reader:Lentagged/audioformats/asf/io/AsfHeaderReader;
    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/AsfHeaderReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v1

    return-object v1
.end method
