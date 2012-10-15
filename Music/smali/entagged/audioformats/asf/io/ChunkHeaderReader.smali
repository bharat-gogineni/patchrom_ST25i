.class Lentagged/audioformats/asf/io/ChunkHeaderReader;
.super Ljava/lang/Object;
.source "ChunkHeaderReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readChunckHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/Chunk;
    .locals 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 49
    .local v2, pos:J
    invoke-static {p0}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    .line 50
    .local v1, guid:Lentagged/audioformats/asf/data/GUID;
    invoke-static {p0}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v0

    .line 51
    .local v0, chunkLength:Ljava/math/BigInteger;
    new-instance v4, Lentagged/audioformats/asf/data/Chunk;

    invoke-direct {v4, v1, v2, v3, v0}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    return-object v4
.end method
