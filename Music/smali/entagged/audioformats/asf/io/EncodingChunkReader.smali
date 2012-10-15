.class public Lentagged/audioformats/asf/io/EncodingChunkReader;
.super Ljava/lang/Object;
.source "EncodingChunkReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/EncodingChunk;
    .locals 8
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, result:Lentagged/audioformats/asf/data/EncodingChunk;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 86
    .local v1, chunkStart:J
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v3

    .line 87
    .local v3, guid:Lentagged/audioformats/asf/data/GUID;
    sget-object v7, Lentagged/audioformats/asf/data/GUID;->GUID_ENCODING:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v7, v3}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v0

    .line 89
    .local v0, chunkLen:Ljava/math/BigInteger;
    new-instance v5, Lentagged/audioformats/asf/data/EncodingChunk;

    .end local v5           #result:Lentagged/audioformats/asf/data/EncodingChunk;
    invoke-direct {v5, v1, v2, v0}, Lentagged/audioformats/asf/data/EncodingChunk;-><init>(JLjava/math/BigInteger;)V

    .line 98
    .restart local v5       #result:Lentagged/audioformats/asf/data/EncodingChunk;
    const/16 v7, 0x14

    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 103
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v6

    .line 108
    .local v6, stringCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 109
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readCharacterSizedString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lentagged/audioformats/asf/data/EncodingChunk;->addString(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v0           #chunkLen:Ljava/math/BigInteger;
    .end local v4           #i:I
    .end local v6           #stringCount:I
    :cond_0
    return-object v5
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/EncodingChunk;
    .locals 2
    .parameter "raf"
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_ENCODING:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    new-instance v0, Lentagged/audioformats/asf/io/EncodingChunkReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/EncodingChunkReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/EncodingChunkReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
