.class public Lentagged/audioformats/mp3/util/Id3v1TagWriter;
.super Ljava/lang/Object;
.source "Id3v1TagWriter.java"


# instance fields
.field private tc:Lentagged/audioformats/mp3/util/Id3v1TagCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v1TagCreator;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v1TagCreator;

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
    const-wide/16 v3, 0x80

    .line 39
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 43
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 44
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 46
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;)V
    .locals 6
    .parameter "tag"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 52
    .local v0, fc:Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tc:Lentagged/audioformats/mp3/util/Id3v1TagCreator;

    invoke-virtual {v2, p1}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 54
    .local v1, tagBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, p2}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->tagExists(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 57
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 62
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method
