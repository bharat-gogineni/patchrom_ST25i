.class public Lentagged/audioformats/mp3/Mp3FileReader;
.super Lentagged/audioformats/generic/AudioFileReader;
.source "Mp3FileReader.java"


# instance fields
.field private idv1tr:Lentagged/audioformats/mp3/util/Id3v1TagReader;

.field private idv2tr:Lentagged/audioformats/mp3/util/Id3v2TagReader;

.field private ir:Lentagged/audioformats/mp3/util/Mp3InfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    .line 35
    new-instance v0, Lentagged/audioformats/mp3/util/Mp3InfoReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Mp3InfoReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->ir:Lentagged/audioformats/mp3/util/Mp3InfoReader;

    .line 36
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v2TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v2TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv2tr:Lentagged/audioformats/mp3/util/Id3v2TagReader;

    .line 37
    new-instance v0, Lentagged/audioformats/mp3/util/Id3v1TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp3/util/Id3v1TagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv1tr:Lentagged/audioformats/mp3/util/Id3v1TagReader;

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
    .line 40
    iget-object v0, p0, Lentagged/audioformats/mp3/Mp3FileReader;->ir:Lentagged/audioformats/mp3/util/Mp3InfoReader;

    invoke-virtual {v0, p1}, Lentagged/audioformats/mp3/util/Mp3InfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 6
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-string v1, ""

    .line 45
    .local v1, error:Ljava/lang/String;
    const/4 v3, 0x0

    .line 46
    .local v3, v2:Lentagged/audioformats/mp3/Id3v2Tag;
    const/4 v2, 0x0

    .line 49
    .local v2, v1:Lentagged/audioformats/mp3/Id3v1Tag;
    :try_start_0
    iget-object v4, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv2tr:Lentagged/audioformats/mp3/util/Id3v2TagReader;

    invoke-virtual {v4, p1}, Lentagged/audioformats/mp3/util/Id3v2TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v2Tag;
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    :goto_0
    :try_start_1
    iget-object v4, p0, Lentagged/audioformats/mp3/Mp3FileReader;->idv1tr:Lentagged/audioformats/mp3/util/Id3v1TagReader;

    invoke-virtual {v4, p1}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v1Tag;
    :try_end_1
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 62
    :goto_1
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 63
    new-instance v2, Lentagged/audioformats/generic/GenericTag;

    .end local v2           #v1:Lentagged/audioformats/mp3/Id3v1Tag;
    invoke-direct {v2}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    .line 74
    :cond_0
    :goto_2
    return-object v2

    .line 50
    .restart local v2       #v1:Lentagged/audioformats/mp3/Id3v1Tag;
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Lentagged/audioformats/exceptions/CannotReadException;
    const/4 v3, 0x0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lentagged/audioformats/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 57
    .end local v0           #e:Lentagged/audioformats/exceptions/CannotReadException;
    :catch_1
    move-exception v0

    .line 58
    .restart local v0       #e:Lentagged/audioformats/exceptions/CannotReadException;
    const/4 v2, 0x0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lentagged/audioformats/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 66
    .end local v0           #e:Lentagged/audioformats/exceptions/CannotReadException;
    :cond_1
    if-eqz v3, :cond_0

    .line 69
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v3, v2}, Lentagged/audioformats/mp3/Id3v2Tag;->merge(Lentagged/audioformats/Tag;)V

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lentagged/audioformats/mp3/Id3v2Tag;->hasId3v1(Z)V

    :cond_2
    move-object v2, v3

    .line 74
    goto :goto_2
.end method
