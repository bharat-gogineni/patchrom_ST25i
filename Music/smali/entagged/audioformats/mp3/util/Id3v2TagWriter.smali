.class public Lentagged/audioformats/mp3/util/Id3v2TagWriter;
.super Ljava/lang/Object;
.source "Id3v2TagWriter.java"


# instance fields
.field private tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    return-void
.end method

.method private canOverwrite(Ljava/io/RandomAccessFile;)Z
    .locals 3
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, versionHigh:Ljava/lang/String;
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private tagExists(Ljava/nio/channels/FileChannel;)Z
    .locals 4
    .parameter "fc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, b:Ljava/nio/ByteBuffer;
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 85
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 86
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 88
    .local v1, tagString:Ljava/lang/String;
    const-string v2, "ID3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 13
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v2, 0x0

    .line 39
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 40
    .local v1, fc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 42
    invoke-direct {p0, v1}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tagExists(Ljava/nio/channels/FileChannel;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    .end local p1
    :goto_0
    return-object p1

    .line 45
    .restart local p1
    :cond_0
    const-wide/16 v4, 0x6

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 47
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 48
    .local v6, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 49
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v8, v4, 0x15

    .line 52
    .local v8, tagSize:I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xe

    add-int/2addr v8, v4

    .line 53
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x7

    add-int/2addr v8, v4

    .line 54
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v8, v4

    .line 56
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 57
    .local v0, tempFC:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 59
    add-int/lit8 v4, v8, 0xa

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 63
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 64
    const/4 v7, 0x0

    .line 65
    .local v7, skip:I
    :goto_1
    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_2

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xe0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_2

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x6

    if-eqz v4, :cond_2

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_2

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 69
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    const-wide/16 v9, 0x4

    sub-long/2addr v4, v9

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 78
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    int-to-long v9, v8

    sub-long/2addr v4, v9

    const-wide/16 v9, 0xa

    sub-long/2addr v4, v9

    int-to-long v9, v7

    sub-long/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-object p1, p2

    .line 79
    goto/16 :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    const-wide/16 v9, 0x3

    sub-long/2addr v4, v9

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 74
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 11
    .parameter "tag"
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 115
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 117
    .local v1, fc:Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 119
    .local v8, oldTagSize:I
    invoke-direct {p0, v1}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tagExists(Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-direct {p0, p2}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->canOverwrite(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v3, "Overwritting of this kind of ID3v2 tag not supported yet"

    invoke-direct {v2, v3}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_0
    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 126
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 127
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v8, v2, 0x15

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xe

    add-int/2addr v8, v2

    .line 130
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    add-int/2addr v8, v2

    .line 131
    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v8, v2

    .line 132
    add-int/lit8 v8, v8, 0xa

    .line 135
    iget-object v2, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    invoke-virtual {v2, p1}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->getTagLength(Lentagged/audioformats/Tag;)I

    move-result v7

    .line 137
    .local v7, newTagSize:I
    if-lt v8, v7, :cond_1

    .line 140
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 142
    iget-object v2, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    sub-int v3, v8, v7

    invoke-virtual {v2, p1, v3}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 161
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v7           #newTagSize:I
    :goto_0
    return-void

    .line 152
    :cond_1
    int-to-long v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 153
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 155
    .local v0, tempFC:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 156
    iget-object v2, p0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    const/16 v3, 0xfa0

    invoke-virtual {v2, p1, v3}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 157
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    int-to-long v9, v8

    sub-long/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 159
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0
.end method
