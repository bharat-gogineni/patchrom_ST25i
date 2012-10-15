.class public Lentagged/audioformats/ogg/OggFileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;
.source "OggFileWriter.java"


# instance fields
.field private otw:Lentagged/audioformats/ogg/util/VorbisTagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    .line 30
    new-instance v0, Lentagged/audioformats/ogg/util/VorbisTagWriter;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/VorbisTagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/OggFileWriter;->otw:Lentagged/audioformats/ogg/util/VorbisTagWriter;

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
    .line 37
    iget-object v0, p0, Lentagged/audioformats/ogg/OggFileWriter;->otw:Lentagged/audioformats/ogg/util/VorbisTagWriter;

    invoke-virtual {v0, p1, p2}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 38
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
    .line 33
    iget-object v0, p0, Lentagged/audioformats/ogg/OggFileWriter;->otw:Lentagged/audioformats/ogg/util/VorbisTagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lentagged/audioformats/ogg/util/VorbisTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 34
    return-void
.end method
