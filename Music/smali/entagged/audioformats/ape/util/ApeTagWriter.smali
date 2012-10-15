.class public Lentagged/audioformats/ape/util/ApeTagWriter;
.super Ljava/lang/Object;
.source "ApeTagWriter.java"


# instance fields
.field private tc:Lentagged/audioformats/ape/util/ApeTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/ape/util/ApeTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagWriter;->tc:Lentagged/audioformats/ape/util/ApeTagCreator;

    return-void
.end method

.method private tagExists(Ljava/io/RandomAccessFile;)Z
    .locals 5
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 55
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 57
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v2, "APETAGEX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 7
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lentagged/audioformats/ape/util/ApeTagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x14

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 39
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 40
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 41
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v1

    .line 43
    .local v1, tagSize:J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 45
    invoke-direct {p0, p1}, Lentagged/audioformats/ape/util/ApeTagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x20

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 12
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
    .line 61
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 63
    .local v1, fc:Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Lentagged/audioformats/ape/util/ApeTagWriter;->tc:Lentagged/audioformats/ape/util/ApeTagCreator;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lentagged/audioformats/ape/util/ApeTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 65
    .local v9, tagBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, p2}, Lentagged/audioformats/ape/util/ApeTagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 67
    invoke-virtual {v1, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 105
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 72
    const/4 v2, 0x4

    new-array v6, v2, [B

    .line 73
    .local v6, b:[B
    invoke-virtual {p2, v6}, Ljava/io/RandomAccessFile;->read([B)I

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v6, v2, v3}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v11

    .line 75
    .local v11, version:I
    const/16 v2, 0x7d0

    if-eq v11, v2, :cond_1

    .line 76
    new-instance v2, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v3, "APE Tag other than version 2.0 are not supported"

    invoke-direct {v2, v3}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    const/4 v2, 0x4

    new-array v6, v2, [B

    .line 81
    invoke-virtual {p2, v6}, Ljava/io/RandomAccessFile;->read([B)I

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v6, v2, v3}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v2

    const-wide/16 v4, 0x20

    add-long v7, v2, v4

    .line 84
    .local v7, oldSize:J
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    .line 86
    .local v10, tagSize:I
    int-to-long v2, v10

    cmp-long v2, v7, v2

    if-gtz v2, :cond_2

    .line 88
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Overwriting old tag in mpc file"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 90
    invoke-virtual {v1, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 93
    :cond_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Shrinking mpc file"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 97
    .local v0, tempFC:Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 98
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 99
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 100
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 101
    invoke-virtual {v0, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method
