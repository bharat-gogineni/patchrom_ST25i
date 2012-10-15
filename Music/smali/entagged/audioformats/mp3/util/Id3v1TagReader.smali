.class public Lentagged/audioformats/mp3/util/Id3v1TagReader;
.super Ljava/lang/Object;
.source "Id3v1TagReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 5
    .parameter "raf"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-array v0, p2, [B

    .line 81
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 82
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, ret:Ljava/lang/String;
    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, i:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 85
    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 87
    .end local v2           #ret:Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v1Tag;
    .locals 17
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v8, Lentagged/audioformats/mp3/Id3v1Tag;

    invoke-direct {v8}, Lentagged/audioformats/mp3/Id3v1Tag;-><init>()V

    .line 31
    .local v8, tag:Lentagged/audioformats/mp3/Id3v1Tag;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x80

    sub-long/2addr v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    const/4 v13, 0x3

    new-array v4, v13, [B

    .line 34
    .local v4, b:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 35
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    .line 37
    .local v9, tagS:Ljava/lang/String;
    const-string v13, "TAG"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 38
    new-instance v13, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v14, "There is no Id3v1 Tag in this file"

    invoke-direct {v13, v14}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 41
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x80

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3

    add-long/2addr v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 43
    const/16 v13, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, songName:Ljava/lang/String;
    const/16 v13, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, artist:Ljava/lang/String;
    const/16 v13, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, album:Ljava/lang/String;
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v12

    .line 51
    .local v12, year:Ljava/lang/String;
    const/16 v13, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, comment:Ljava/lang/String;
    const-string v11, ""

    .line 55
    .local v11, trackNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    const-wide/16 v15, 0x2

    sub-long/2addr v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    const/4 v13, 0x2

    new-array v4, v13, [B

    .line 57
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 59
    const/4 v13, 0x0

    aget-byte v13, v4, v13

    if-nez v13, :cond_1

    .line 60
    new-instance v10, Ljava/lang/Integer;

    const/4 v13, 0x1

    aget-byte v13, v4, v13

    invoke-direct {v10, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 61
    .local v10, track:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 64
    .end local v10           #track:Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    .line 65
    .local v6, genreByte:B
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    invoke-virtual {v8, v7}, Lentagged/audioformats/mp3/Id3v1Tag;->setTitle(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v8, v3}, Lentagged/audioformats/mp3/Id3v1Tag;->setArtist(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v8, v2}, Lentagged/audioformats/mp3/Id3v1Tag;->setAlbum(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v8, v12}, Lentagged/audioformats/mp3/Id3v1Tag;->setYear(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v8, v5}, Lentagged/audioformats/mp3/Id3v1Tag;->setComment(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8, v11}, Lentagged/audioformats/mp3/Id3v1Tag;->setTrack(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v8, v6}, Lentagged/audioformats/mp3/Id3v1Tag;->translateGenre(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lentagged/audioformats/mp3/Id3v1Tag;->setGenre(Ljava/lang/String;)V

    .line 76
    return-object v8
.end method
