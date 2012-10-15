.class public Lentagged/audioformats/ogg/util/VorbisTagWriter;
.super Ljava/lang/Object;
.source "VorbisTagWriter.java"


# instance fields
.field private reader:Lentagged/audioformats/ogg/util/VorbisTagReader;

.field private tc:Lentagged/audioformats/ogg/util/VorbisTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lentagged/audioformats/ogg/util/VorbisTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/VorbisTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->tc:Lentagged/audioformats/ogg/util/VorbisTagCreator;

    .line 33
    new-instance v0, Lentagged/audioformats/ogg/util/VorbisTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/VorbisTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->reader:Lentagged/audioformats/ogg/util/VorbisTagReader;

    return-void
.end method

.method private createSegmentTable(IILentagged/audioformats/ogg/util/OggPageHeader;)[B
    .locals 7
    .parameter "oldCommentLength"
    .parameter "newCommentLength"
    .parameter "secondPage"

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-virtual {p3}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v3

    .line 245
    .local v3, totalLenght:I
    sub-int v4, v3, p1

    invoke-direct {p0, v4, v6}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->createSegments(IZ)[B

    move-result-object v1

    .line 246
    .local v1, restShouldBe:[B
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->createSegments(IZ)[B

    move-result-object v0

    .line 247
    .local v0, newStart:[B
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 248
    .local v2, result:[B
    array-length v4, v0

    invoke-static {v0, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    array-length v4, v0

    array-length v5, v1

    invoke-static {v1, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    return-object v2
.end method

.method private createSegments(IZ)[B
    .locals 4
    .parameter "length"
    .parameter "quitStream"

    .prologue
    .line 266
    div-int/lit16 v3, p1, 0xff

    rem-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 268
    .local v1, result:[B
    const/4 v0, 0x0

    .line 269
    .local v0, i:I
    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 270
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v0           #i:I
    .end local v1           #result:[B
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 272
    .restart local v0       #i:I
    .restart local v1       #result:[B
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v3, v0, 0xff

    sub-int v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 273
    return-object v1
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, tag:Lentagged/audioformats/ogg/OggTag;
    :try_start_0
    iget-object v4, p0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->reader:Lentagged/audioformats/ogg/util/VorbisTagReader;

    invoke-virtual {v4, p1}, Lentagged/audioformats/ogg/util/VorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lentagged/audioformats/ogg/OggTag;

    move-object v3, v0
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    new-instance v2, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v2}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    .line 45
    .local v2, emptyTag:Lentagged/audioformats/ogg/OggTag;
    invoke-virtual {v3}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lentagged/audioformats/ogg/OggTag;->setVendor(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v2, p1, p2}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 48
    .end local v2           #emptyTag:Lentagged/audioformats/ogg/OggTag;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Lentagged/audioformats/exceptions/CannotReadException;
    new-instance v4, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v4}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {p0, v4, p1, p2}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 36
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
    .line 52
    const-wide/16 v4, 0x1a

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 53
    const/4 v4, 0x4

    new-array v10, v4, [B

    .line 54
    .local v10, b:[B
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    .line 55
    .local v22, pageSegments:I
    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    add-int/lit8 v4, v22, 0x1b

    new-array v10, v4, [B

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 60
    new-instance v14, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v14, v10}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 64
    .local v14, firstPage:Lentagged/audioformats/ogg/util/OggPageHeader;
    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v14}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v8

    add-int/lit8 v8, v8, 0x1b

    add-int v8, v8, v22

    int-to-long v8, v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 70
    invoke-virtual {v14}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v23

    .line 75
    .local v23, pos:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x1a

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    .line 77
    move-object/from16 v0, p2

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    add-int/lit8 v4, v22, 0x1b

    new-array v10, v4, [B

    .line 80
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 81
    new-instance v25, Lentagged/audioformats/ogg/util/OggPageHeader;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 83
    .local v25, secondPage:Lentagged/audioformats/ogg/util/OggPageHeader;
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v27

    .line 87
    .local v27, secondPageEndPos:J
    const/16 v21, 0x7

    .line 88
    .local v21, oldCommentLength:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 90
    const/4 v4, 0x4

    new-array v10, v4, [B

    .line 91
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 92
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v10, v4, v5}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v33

    .line 93
    .local v33, vendorStringLength:I
    add-int/lit8 v4, v33, 0x4

    add-int v21, v21, v4

    .line 95
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    move/from16 v0, v33

    int-to-long v6, v0

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    const/4 v4, 0x4

    new-array v10, v4, [B

    .line 98
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 99
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v10, v4, v5}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v32

    .line 100
    .local v32, userComments:I
    add-int/lit8 v21, v21, 0x4

    .line 102
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v32

    if-ge v15, v0, :cond_0

    .line 103
    const/4 v4, 0x4

    new-array v10, v4, [B

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 105
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v10, v4, v5}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v11

    .line 106
    .local v11, commentLength:I
    add-int/lit8 v4, v11, 0x4

    add-int v21, v21, v4

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    int-to-long v6, v11

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 102
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 111
    .end local v11           #commentLength:I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v16

    .line 112
    .local v16, isValid:B
    add-int/lit8 v21, v21, 0x1

    .line 113
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_1

    .line 114
    new-instance v4, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v5, "Unable to retreive old tag informations"

    invoke-direct {v4, v5}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lentagged/audioformats/ogg/util/VorbisTagWriter;->tc:Lentagged/audioformats/ogg/util/VorbisTagCreator;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lentagged/audioformats/ogg/util/VorbisTagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 121
    .local v17, newComment:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v18

    .line 122
    .local v18, newCommentLength:I
    invoke-virtual/range {v25 .. v25}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v4

    sub-int v4, v4, v21

    add-int v20, v4, v18

    .line 128
    .local v20, newSecondPageLength:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->createSegmentTable(IILentagged/audioformats/ogg/util/OggPageHeader;)[B

    move-result-object v29

    .line 129
    .local v29, segmentTable:[B
    move-object/from16 v0, v29

    array-length v4, v0

    add-int/lit8 v19, v4, 0x1b

    .line 131
    .local v19, newSecondPageHeaderLength:I
    add-int v4, v20, v19

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v26

    .line 142
    .local v26, secondPageBuffer:Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/lang/String;

    const-string v5, "OggS"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 143
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual/range {v25 .. v25}, Lentagged/audioformats/ogg/util/OggPageHeader;->getSerialNumber()I

    move-result v31

    .line 163
    .local v31, serialNb:I
    const/4 v4, 0x4

    new-array v10, v4, [B

    .line 164
    const/4 v4, 0x3

    const/high16 v5, -0x100

    and-int v5, v5, v31

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 165
    const/4 v4, 0x2

    const/high16 v5, 0xff

    and-int v5, v5, v31

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 166
    const/4 v4, 0x1

    const v5, 0xff00

    and-int v5, v5, v31

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 167
    const/4 v4, 0x0

    move/from16 v0, v31

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 168
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual/range {v25 .. v25}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v30

    .line 173
    .local v30, seqNb:I
    const/4 v4, 0x4

    new-array v10, v4, [B

    .line 174
    const/4 v4, 0x3

    const/high16 v5, -0x100

    and-int v5, v5, v30

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 175
    const/4 v4, 0x2

    const/high16 v5, 0xff

    and-int v5, v5, v30

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 176
    const/4 v4, 0x1

    const v5, 0xff00

    and-int v5, v5, v30

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 177
    const/4 v4, 0x0

    move/from16 v0, v30

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 178
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    const/16 v13, 0x16

    .line 185
    .local v13, crcOffset:I
    move-object/from16 v0, v29

    array-length v4, v0

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    .line 186
    new-instance v4, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v5, "In this special case we need to create a new page, since we still hadn\'t the time for that we won\'t write because it wouldn\'t create an ogg file."

    invoke-direct {v4, v5}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_2
    move-object/from16 v0, v29

    array-length v4, v0

    int-to-byte v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v29

    array-length v4, v0

    if-ge v15, v4, :cond_3

    .line 195
    aget-byte v4, v29, v15

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 199
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 203
    move-object/from16 v0, p2

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 205
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 209
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Lentagged/audioformats/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object v12

    .line 210
    .local v12, crc:[B
    const/4 v15, 0x0

    :goto_2
    array-length v4, v12

    if-ge v15, v4, :cond_4

    .line 212
    add-int v4, v13, v15

    aget-byte v5, v12, v15

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 210
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 219
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v34

    sub-long v8, v8, v34

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 231
    return-void

    .line 149
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 181
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
