.class public Lentagged/audioformats/flac/util/FlacTagReader;
.super Ljava/lang/Object;
.source "FlacTagReader.java"


# instance fields
.field private oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    return-void
.end method

.method private handleVorbisComment(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    .locals 9
    .parameter "mbh"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 77
    .local v2, oldPos:J
    iget-object v5, p0, Lentagged/audioformats/flac/util/FlacTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-virtual {v5, p2}, Lentagged/audioformats/ogg/util/OggTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v4

    .line 79
    .local v4, tag:Lentagged/audioformats/ogg/OggTag;
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 81
    .local v0, newPos:J
    sub-long v5, v0, v2

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 82
    new-instance v5, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v6, "Tag length do not match with flac comment data length"

    invoke-direct {v5, v6}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_0
    return-object v4
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    .locals 10
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    .line 34
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 36
    new-instance v5, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v6, "Error: File empty"

    invoke-direct {v5, v6}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 38
    :cond_0
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    new-array v0, v9, [B

    .line 42
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 43
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 44
    .local v1, flac:Ljava/lang/String;
    const-string v5, "fLaC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    new-instance v5, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v6, "fLaC Header not found, not a flac file"

    invoke-direct {v5, v6}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 50
    .local v4, tag:Lentagged/audioformats/ogg/OggTag;
    const/4 v2, 0x0

    .line 51
    .local v2, isLastBlock:Z
    :goto_0
    if-nez v2, :cond_2

    .line 52
    new-array v0, v9, [B

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 54
    new-instance v3, Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-direct {v3, v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;-><init>([B)V

    .line 56
    .local v3, mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;
    invoke-virtual {v3}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBlockType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 63
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v3}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    invoke-virtual {v3}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock()Z

    move-result v2

    .line 69
    goto :goto_0

    .line 58
    :pswitch_0
    invoke-direct {p0, v3, p1}, Lentagged/audioformats/flac/util/FlacTagReader;->handleVorbisComment(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v4

    .line 59
    const/4 v3, 0x0

    .line 60
    return-object v4

    .line 71
    .end local v3           #mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;
    :cond_2
    new-instance v5, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v6, "FLAC Tag could not be found or read.."

    invoke-direct {v5, v6}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
