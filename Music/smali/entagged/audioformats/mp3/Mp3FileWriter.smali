.class public Lentagged/audioformats/mp3/Mp3FileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;
.source "Mp3FileWriter.java"


# instance fields
.field private idv1tw:Lentagged/audioformats/mp3/util/Id3v1TagWriter;

.field private idv2tw:Lentagged/audioformats/mp3/util/Id3v2TagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    .line 30
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v1TagWriter;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileWriter;->idv1tw:Lentagged/audioformats/mp3/util/Id3v1TagWriter;

    .line 31
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagWriter;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileWriter;->idv2tw:Lentagged/audioformats/mp3/util/Id3v2TagWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "raf"
    .parameter "rafTemp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v1, p0, Lentagged/audioformats/mp3/Mp3FileWriter;->idv2tw:Lentagged/audioformats/mp3/util/Id3v2TagWriter;

    invoke-virtual {v1, p1, p2}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 40
    .local v0, used:Ljava/io/RandomAccessFile;
    iget-object v1, p0, Lentagged/audioformats/mp3/Mp3FileWriter;->idv1tw:Lentagged/audioformats/mp3/util/Id3v1TagWriter;

    invoke-virtual {v1, v0}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->delete(Ljava/io/RandomAccessFile;)V

    .line 41
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
    iget-object v0, p0, Lentagged/audioformats/mp3/Mp3FileWriter;->idv1tw:Lentagged/audioformats/mp3/util/Id3v1TagWriter;

    invoke-virtual {v0, p1, p2}, Lentagged/audioformats/mp3/util/Id3v1TagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;)V

    .line 35
    iget-object v0, p0, Lentagged/audioformats/mp3/Mp3FileWriter;->idv2tw:Lentagged/audioformats/mp3/util/Id3v2TagWriter;

    invoke-virtual {v0, p1, p2, p3}, Lentagged/audioformats/mp3/util/Id3v2TagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 36
    return-void
.end method
