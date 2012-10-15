.class public Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;
.super Ljava/lang/Object;
.source "StreamBitratePropertiesReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    .locals 13
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v10, 0x0

    .line 82
    .local v10, result:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 83
    .local v3, chunkStart:J
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v6

    .line 84
    .local v6, guid:Lentagged/audioformats/asf/data/GUID;
    sget-object v11, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v11, v6}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 85
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v2

    .line 86
    .local v2, chunkLen:Ljava/math/BigInteger;
    new-instance v10, Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    .end local v10           #result:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    invoke-direct {v10, v3, v4, v2}, Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;-><init>(JLjava/math/BigInteger;)V

    .line 91
    .restart local v10       #result:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v11

    int-to-long v8, v11

    .line 92
    .local v8, recordCount:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    int-to-long v11, v7

    cmp-long v11, v11, v8

    if-gez v11, :cond_0

    .line 93
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v5

    .line 94
    .local v5, flags:I
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    .line 95
    .local v0, avgBitrate:J
    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11, v0, v1}, Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;->addBitrateRecord(IJ)V

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    .end local v0           #avgBitrate:J
    .end local v2           #chunkLen:Ljava/math/BigInteger;
    .end local v5           #flags:I
    .end local v7           #i:I
    .end local v8           #recordCount:J
    :cond_0
    return-object v10
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    .locals 2
    .parameter "raf"
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    new-instance v0, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/StreamBitratePropertiesReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
