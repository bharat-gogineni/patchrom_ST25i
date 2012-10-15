.class public Lentagged/audioformats/mpc/MpcFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;
.source "MpcFileWriter.java"


# instance fields
.field private mp3tw:Lentagged/audioformats/mp3/Mp3FileWriter;

.field private tw:Lentagged/audioformats/ape/util/ApeTagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    .line 31
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-direct {v0}, Lentagged/audioformats/ape/util/ApeTagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mpc/MpcFileWriter;->tw:Lentagged/audioformats/ape/util/ApeTagWriter;

    .line 32
    new-instance v0, Lentagged/audioformats/mp3/Mp3FileWriter;

    invoke-direct {v0}, Lentagged/audioformats/mp3/Mp3FileWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mpc/MpcFileWriter;->mp3tw:Lentagged/audioformats/mp3/Mp3FileWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lentagged/audioformats/mpc/MpcFileWriter;->mp3tw:Lentagged/audioformats/mp3/Mp3FileWriter;

    invoke-virtual {v0, p1, p2}, Lentagged/audioformats/mp3/Mp3FileWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 39
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lentagged/audioformats/mpc/MpcFileWriter;->tw:Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-virtual {v0, p2}, Lentagged/audioformats/ape/util/ApeTagWriter;->delete(Ljava/io/RandomAccessFile;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lentagged/audioformats/mpc/MpcFileWriter;->tw:Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-virtual {v0, p1}, Lentagged/audioformats/ape/util/ApeTagWriter;->delete(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
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
    .line 35
    iget-object v0, p0, Lentagged/audioformats/mpc/MpcFileWriter;->tw:Lentagged/audioformats/ape/util/ApeTagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lentagged/audioformats/ape/util/ApeTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 36
    return-void
.end method
