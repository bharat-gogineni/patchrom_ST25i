.class public Lentagged/audioformats/flac/FlacFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;
.source "FlacFileWriter.java"


# instance fields
.field private tw:Lentagged/audioformats/flac/util/FlacTagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    .line 31
    new-instance v0, Lentagged/audioformats/flac/util/FlacTagWriter;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacTagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/FlacFileWriter;->tw:Lentagged/audioformats/flac/util/FlacTagWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lentagged/audioformats/flac/FlacFileWriter;->tw:Lentagged/audioformats/flac/util/FlacTagWriter;

    invoke-virtual {v0, p1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 39
    return-void
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
    .line 34
    iget-object v0, p0, Lentagged/audioformats/flac/FlacFileWriter;->tw:Lentagged/audioformats/flac/util/FlacTagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lentagged/audioformats/flac/util/FlacTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 35
    return-void
.end method
