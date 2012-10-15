.class public Lentagged/audioformats/wav/WavFileReader;
.super Lentagged/audioformats/generic/AudioFileReader;
.source "WavFileReader.java"


# instance fields
.field private ir:Lentagged/audioformats/wav/util/WavInfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    .line 31
    new-instance v0, Lentagged/audioformats/wav/util/WavInfoReader;

    invoke-direct {v0}, Lentagged/audioformats/wav/util/WavInfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/wav/WavFileReader;->ir:Lentagged/audioformats/wav/util/WavInfoReader;

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 1
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lentagged/audioformats/wav/WavFileReader;->ir:Lentagged/audioformats/wav/util/WavInfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/wav/util/WavInfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 1
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    return-object v0
.end method
