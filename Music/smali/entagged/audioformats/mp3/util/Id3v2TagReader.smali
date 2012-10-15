.class public Lentagged/audioformats/mp3/util/Id3v2TagReader;
.super Ljava/lang/Object;
.source "Id3v2TagReader.java"


# instance fields
.field private ID3Flags:[Z

.field private final synchronizer:Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

.field private final tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->synchronizer:Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

    .line 53
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v24TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    return-void
.end method

.method private processID3Flags(B)[Z
    .locals 7
    .parameter "b"

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    if-eqz p1, :cond_4

    .line 68
    new-array v1, v2, [Z

    .line 70
    .local v1, flags:[Z
    and-int/lit16 v0, p1, 0x80

    .line 72
    .local v0, flag:I
    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    .line 73
    aput-boolean v4, v1, v3

    .line 76
    :goto_0
    and-int/lit8 v0, p1, 0x40

    .line 77
    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    .line 78
    aput-boolean v4, v1, v4

    .line 81
    :goto_1
    and-int/lit8 v0, p1, 0x20

    .line 82
    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    .line 83
    aput-boolean v4, v1, v5

    .line 86
    :goto_2
    and-int/lit8 v0, p1, 0x10

    .line 87
    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    .line 88
    aput-boolean v4, v1, v6

    .line 100
    .end local v0           #flag:I
    :goto_3
    return-object v1

    .line 75
    .restart local v0       #flag:I
    :cond_0
    aput-boolean v3, v1, v3

    goto :goto_0

    .line 80
    :cond_1
    aput-boolean v3, v1, v4

    goto :goto_1

    .line 85
    :cond_2
    aput-boolean v3, v1, v5

    goto :goto_2

    .line 90
    :cond_3
    aput-boolean v3, v1, v6

    goto :goto_3

    .line 92
    .end local v0           #flag:I
    .end local v1           #flags:[Z
    :cond_4
    new-array v1, v2, [Z

    .line 93
    .restart local v1       #flags:[Z
    aput-boolean v3, v1, v3

    .line 94
    aput-boolean v3, v1, v4

    .line 95
    aput-boolean v3, v1, v5

    .line 96
    aput-boolean v3, v1, v6

    goto :goto_3
.end method

.method private readSyncsafeInteger(Ljava/io/RandomAccessFile;)I
    .locals 2
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, value:I
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    .line 204
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    .line 205
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 206
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 208
    return v0
.end method


# virtual methods
.method public declared-synchronized read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 10
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    const/4 v3, 0x0

    .line 127
    .local v3, tag:Lentagged/audioformats/mp3/Id3v2Tag;
    const/4 v7, 0x3

    :try_start_0
    new-array v1, v7, [B

    .line 128
    .local v1, b:[B
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 131
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 135
    .local v0, ID3:Ljava/lang/String;
    const-string v7, "ID3"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 136
    new-instance v7, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v8, "Not an ID3 tag"

    invoke-direct {v7, v8}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0           #ID3:Ljava/lang/String;
    .end local v1           #b:[B
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 142
    .restart local v0       #ID3:Ljava/lang/String;
    .restart local v1       #b:[B
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, versionHigh:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, versionID3:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    invoke-direct {p0, v7}, Lentagged/audioformats/mp3/util/Id3v2TagReader;->processID3Flags(B)[Z

    move-result-object v7

    iput-object v7, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    .line 149
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v2TagReader;->readSyncsafeInteger(Ljava/io/RandomAccessFile;)I

    move-result v4

    .line 153
    .local v4, tagSize:I
    add-int/lit8 v7, v4, 0x2

    new-array v1, v7, [B

    .line 155
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 167
    .local v2, bb:Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 169
    iget-object v7, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->synchronizer:Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;

    invoke-virtual {v7, v2}, Lentagged/audioformats/mp3/util/Id3v2TagSynchronizer;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 173
    :cond_1
    const-string v7, "2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 174
    iget-object v7, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    iget-object v8, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    sget-byte v9, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    invoke-virtual {v7, v2, v8, v9}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 187
    :goto_0
    monitor-exit p0

    return-object v3

    .line 175
    :cond_2
    :try_start_2
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    iget-object v7, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    iget-object v8, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    sget-byte v9, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    invoke-virtual {v7, v2, v8, v9}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;

    move-result-object v3

    goto :goto_0

    .line 177
    :cond_3
    const-string v7, "4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    iget-object v7, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->tagReader:Lentagged/audioformats/mp3/util/Id3v24TagReader;

    iget-object v8, p0, Lentagged/audioformats/mp3/util/Id3v2TagReader;->ID3Flags:[Z

    sget-byte v9, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    invoke-virtual {v7, v2, v8, v9}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;

    move-result-object v3

    goto :goto_0

    .line 184
    :cond_4
    new-instance v7, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ID3v2 tag version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
