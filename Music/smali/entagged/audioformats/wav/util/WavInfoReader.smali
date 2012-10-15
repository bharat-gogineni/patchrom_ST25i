.class public Lentagged/audioformats/wav/util/WavInfoReader;
.super Ljava/lang/Object;
.source "WavInfoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 8
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v1}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 32
    .local v1, info:Lentagged/audioformats/EncodingInfo;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xc

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 33
    new-instance v4, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v5, "This is not a WAV File (<12 bytes)"

    invoke-direct {v4, v5}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_0
    const/16 v4, 0xc

    new-array v0, v4, [B

    .line 36
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 38
    new-instance v3, Lentagged/audioformats/wav/util/WavRIFFHeader;

    invoke-direct {v3, v0}, Lentagged/audioformats/wav/util/WavRIFFHeader;-><init>([B)V

    .line 39
    .local v3, wh:Lentagged/audioformats/wav/util/WavRIFFHeader;
    invoke-virtual {v3}, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    const/16 v4, 0x18

    new-array v0, v4, [B

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 43
    new-instance v2, Lentagged/audioformats/wav/util/WavFormatHeader;

    invoke-direct {v2, v0}, Lentagged/audioformats/wav/util/WavFormatHeader;-><init>([B)V

    .line 44
    .local v2, wfh:Lentagged/audioformats/wav/util/WavFormatHeader;
    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x4210

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getBytesPerSecond()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 49
    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getChannelNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 50
    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getSamplingRate()I

    move-result v4

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAV-RIFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getBitrate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 52
    const-string v4, ""

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->getBytesPerSecond()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 54
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    .line 62
    return-object v1

    .line 56
    :cond_1
    new-instance v4, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v5, "Wav Format Header not valid"

    invoke-direct {v4, v5}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    .end local v2           #wfh:Lentagged/audioformats/wav/util/WavFormatHeader;
    :cond_2
    new-instance v4, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v5, "Wav RIFF Header not valid"

    invoke-direct {v4, v5}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
