.class public Lentagged/audioformats/asf/AsfFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;
.source "AsfFileWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    return-void
.end method

.method private copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V
    .locals 9
    .parameter "source"
    .parameter "destination"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    const/4 v8, 0x0

    .line 66
    new-array v0, v5, [B

    .line 67
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 68
    .local v1, bytesCopied:J
    const/4 v3, -0x1

    .line 71
    .local v3, read:I
    :goto_0
    const-wide/16 v6, 0x2000

    add-long/2addr v6, v1

    cmp-long v4, v6, p3

    if-lez v4, :cond_0

    sub-long v6, p3, v1

    long-to-int v4, v6

    :goto_1
    invoke-virtual {p1, v0, v8, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-lez v3, :cond_1

    .line 72
    int-to-long v6, v3

    add-long/2addr v1, v6

    .line 73
    invoke-virtual {p2, v0, v8, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_0
    move v4, v5

    .line 71
    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method

.method private createModifiedCopy(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/AsfHeader;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;Z)V
    .locals 14
    .parameter "tag"
    .parameter "header"
    .parameter "raf"
    .parameter "rafTemp"
    .parameter "ignoreDescriptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    const-wide/16 v10, 0x1e

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v10, v11}, Lentagged/audioformats/asf/AsfFileWriter;->copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V

    .line 111
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lentagged/audioformats/asf/AsfFileWriter;->getOrderedChunks(Lentagged/audioformats/asf/data/AsfHeader;)[Lentagged/audioformats/asf/data/Chunk;

    move-result-object v4

    .line 113
    .local v4, chunks:[Lentagged/audioformats/asf/data/Chunk;
    const-wide/16 v5, 0x0

    .line 114
    .local v5, fileSizeDifference:J
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getChunkCount()J

    move-result-wide v2

    .line 116
    .local v2, chunkCount:J
    const-wide/16 v8, -0x1

    .line 121
    .local v8, newFileHeaderPos:J
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-direct {p0, p1}, Lentagged/audioformats/asf/AsfFileWriter;->isExtendedContentDescriptionMandatory(Lentagged/audioformats/Tag;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez p5, :cond_0

    .line 126
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 129
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v10, v0}, Lentagged/audioformats/asf/AsfFileWriter;->createNewExtendedContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 137
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v10

    if-nez v10, :cond_1

    invoke-direct {p0, p1}, Lentagged/audioformats/asf/AsfFileWriter;->isContentdescriptionMandatory(Lentagged/audioformats/Tag;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez p5, :cond_1

    .line 142
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 144
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v10, v0}, Lentagged/audioformats/asf/AsfFileWriter;->createNewContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 148
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v10, v4

    if-ge v7, v10, :cond_8

    .line 149
    aget-object v10, v4, v7

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v11

    if-ne v10, v11, :cond_3

    .line 150
    if-eqz p5, :cond_2

    .line 152
    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    .line 153
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/ContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    sub-long/2addr v5, v10

    .line 148
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v10, v0}, Lentagged/audioformats/asf/AsfFileWriter;->createNewContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v11

    invoke-virtual {v11}, Lentagged/audioformats/asf/data/ContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v5, v10

    goto :goto_1

    .line 167
    :cond_3
    aget-object v10, v4, v7

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v11

    if-ne v10, v11, :cond_6

    .line 168
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v10

    invoke-direct {p0, v10, p1}, Lentagged/audioformats/asf/AsfFileWriter;->deleteExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;Lentagged/audioformats/Tag;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz p5, :cond_5

    .line 176
    :cond_4
    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    .line 177
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    sub-long/2addr v5, v10

    goto :goto_1

    .line 184
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v10, v0}, Lentagged/audioformats/asf/AsfFileWriter;->createNewExtendedContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v11

    invoke-virtual {v11}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v5, v10

    goto :goto_1

    .line 193
    :cond_6
    sget-object v10, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    aget-object v11, v4, v7

    invoke-virtual {v11}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 194
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 196
    :cond_7
    aget-object v10, v4, v7

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    aget-object v10, v4, v7

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/Chunk;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v10, v11}, Lentagged/audioformats/asf/AsfFileWriter;->copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V

    goto/16 :goto_1

    .line 201
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getChunckEnd()J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v10, v11}, Lentagged/audioformats/asf/AsfFileWriter;->copy(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;J)V

    .line 207
    const-wide/16 v10, 0x18

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 208
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v3, v0}, Lentagged/audioformats/asf/AsfFileWriter;->write16UINT(JLjava/io/RandomAccessFile;)I

    .line 211
    const-wide/16 v10, 0x28

    add-long/2addr v10, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v10

    invoke-virtual {v10}, Lentagged/audioformats/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v5

    move-object/from16 v0, p4

    invoke-direct {p0, v10, v11, v0}, Lentagged/audioformats/asf/AsfFileWriter;->write32UINT(JLjava/io/RandomAccessFile;)I

    .line 215
    const-wide/16 v10, 0x10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/asf/data/AsfHeader;->getChunkLength()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v5

    move-object/from16 v0, p4

    invoke-direct {p0, v10, v11, v0}, Lentagged/audioformats/asf/AsfFileWriter;->write32UINT(JLjava/io/RandomAccessFile;)I

    .line 218
    return-void
.end method

.method private createNewContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;
    .locals 8
    .parameter "tag"
    .parameter "contentDescription"
    .parameter "rafTemp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 241
    .local v1, chunkStart:J
    invoke-static {p1}, Lentagged/audioformats/asf/util/TagConverter;->createContentDescription(Lentagged/audioformats/Tag;)Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v3

    .line 244
    .local v3, description:Lentagged/audioformats/asf/data/ContentDescription;
    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p2}, Lentagged/audioformats/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lentagged/audioformats/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    .line 248
    :cond_0
    invoke-virtual {v3}, Lentagged/audioformats/asf/data/ContentDescription;->getBytes()[B

    move-result-object v0

    .line 250
    .local v0, asfContent:[B
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 252
    new-instance v4, Lentagged/audioformats/asf/data/Chunk;

    sget-object v5, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v1, v2, v6}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object v4
.end method

.method private createNewExtendedContentDescription(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;
    .locals 7
    .parameter "tag"
    .parameter "tagChunk"
    .parameter "rafTemp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 278
    .local v1, chunkStart:J
    if-nez p2, :cond_0

    .line 279
    new-instance p2, Lentagged/audioformats/asf/data/ExtendedContentDescription;

    .end local p2
    invoke-direct {p2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>()V

    .line 281
    .restart local p2
    :cond_0
    invoke-static {p1, p2}, Lentagged/audioformats/asf/util/TagConverter;->assignCommonTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    .line 282
    invoke-static {p1, p2}, Lentagged/audioformats/asf/util/TagConverter;->assignOptionalTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V

    .line 287
    invoke-virtual {p2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getBytes()[B

    move-result-object v0

    .line 288
    .local v0, asfBytes:[B
    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 290
    new-instance v3, Lentagged/audioformats/asf/data/Chunk;

    sget-object v4, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object v3
.end method

.method private deleteExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;Lentagged/audioformats/Tag;)Z
    .locals 9
    .parameter "tagHeader"
    .parameter "tag"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 310
    new-instance v2, Ljava/util/HashSet;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "WM/Genre"

    aput-object v7, v6, v5

    const-string v7, "WM/GenreID"

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string v8, "WM/TrackNumber"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "WM/AlbumTitle"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "WM/Year"

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 314
    .local v2, ignoreDescriptors:Ljava/util/HashSet;
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptors()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 315
    .local v3, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 321
    .local v1, found:Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 322
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 323
    .local v0, current:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    .line 324
    :goto_1
    goto :goto_0

    :cond_0
    move v1, v5

    .line 323
    goto :goto_1

    .line 325
    .end local v0           #current:Lentagged/audioformats/asf/data/ContentDescriptor;
    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, p2}, Lentagged/audioformats/asf/AsfFileWriter;->isExtendedContentDescriptionMandatory(Lentagged/audioformats/Tag;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    return v4

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private getOrderedChunks(Lentagged/audioformats/asf/data/AsfHeader;)[Lentagged/audioformats/asf/data/Chunk;
    .locals 4
    .parameter "header"

    .prologue
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, result:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getUnspecifiedChunkCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 369
    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/AsfHeader;->getUnspecifiedChunk(I)Lentagged/audioformats/asf/data/Chunk;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunkCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 373
    invoke-virtual {p1, v0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 377
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_2
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 381
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_3
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 384
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_4
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 387
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lentagged/audioformats/asf/data/Chunk;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lentagged/audioformats/asf/data/Chunk;

    move-object v2, v3

    check-cast v2, [Lentagged/audioformats/asf/data/Chunk;

    .line 390
    .local v2, tmp:[Lentagged/audioformats/asf/data/Chunk;
    new-instance v3, Lentagged/audioformats/asf/util/ChunkPositionComparator;

    invoke-direct {v3}, Lentagged/audioformats/asf/util/ChunkPositionComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 391
    return-object v2
.end method

.method private isContentdescriptionMandatory(Lentagged/audioformats/Tag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 412
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtendedContentDescriptionMandatory(Lentagged/audioformats/Tag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 432
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private write16UINT(JLjava/io/RandomAccessFile;)I
    .locals 1
    .parameter "value"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 452
    const/16 v0, 0x8

    shr-long/2addr p1, v0

    .line 453
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 454
    const/4 v0, 0x2

    return v0
.end method

.method private write32UINT(JLjava/io/RandomAccessFile;)I
    .locals 2
    .parameter "value"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 470
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 471
    shr-long/2addr p1, v1

    .line 472
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 473
    shr-long/2addr p1, v1

    .line 474
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 475
    shr-long/2addr p1, v1

    .line 476
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 477
    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    invoke-static {p1}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v2

    .line 338
    .local v2, header:Lentagged/audioformats/asf/data/AsfHeader;
    if-nez v2, :cond_0

    .line 339
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header is null, so file couldn\'t be read properly. (Interpretation of data, not file access rights.)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    .end local v2           #header:Lentagged/audioformats/asf/data/AsfHeader;
    :catch_0
    move-exception v7

    .line 345
    .local v7, ioe:Ljava/io/IOException;
    throw v7

    .line 343
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v2       #header:Lentagged/audioformats/asf/data/AsfHeader;
    :cond_0
    :try_start_1
    new-instance v1, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v1}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lentagged/audioformats/asf/AsfFileWriter;->createModifiedCopy(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/AsfHeader;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    return-void

    .line 346
    .end local v2           #header:Lentagged/audioformats/asf/data/AsfHeader;
    :catch_1
    move-exception v6

    .line 347
    .local v6, cre:Ljava/lang/Exception;
    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot modify tag because exception occured:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "tag"
    .parameter "raf"
    .parameter "rafTemp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :try_start_0
    invoke-static {p2}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v2

    .line 494
    .local v2, header:Lentagged/audioformats/asf/data/AsfHeader;
    if-nez v2, :cond_0

    .line 495
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header is null, so file couldn\'t be read properly. (Interpretation of data, not file access rights.)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    .end local v2           #header:Lentagged/audioformats/asf/data/AsfHeader;
    :catch_0
    move-exception v7

    .line 501
    .local v7, ioe:Ljava/io/IOException;
    throw v7

    .line 499
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v2       #header:Lentagged/audioformats/asf/data/AsfHeader;
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lentagged/audioformats/asf/AsfFileWriter;->createModifiedCopy(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/AsfHeader;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    return-void

    .line 502
    .end local v2           #header:Lentagged/audioformats/asf/data/AsfHeader;
    :catch_1
    move-exception v6

    .line 503
    .local v6, cre:Ljava/lang/Exception;
    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot modify tag because exception occured:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
