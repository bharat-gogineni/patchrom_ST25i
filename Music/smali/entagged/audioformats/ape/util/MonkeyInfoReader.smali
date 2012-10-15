.class public Lentagged/audioformats/ape/util/MonkeyInfoReader;
.super Ljava/lang/Object;
.source "MonkeyInfoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 4
    .parameter "length"
    .parameter "size"

    .prologue
    .line 91
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 14
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x18

    const/4 v10, 0x4

    .line 32
    new-instance v1, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v1}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 35
    .local v1, info:Lentagged/audioformats/EncodingInfo;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-nez v8, :cond_0

    .line 37
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: File empty"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    new-instance v8, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v9, "File is empty"

    invoke-direct {v8, v9}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 41
    :cond_0
    invoke-virtual {p1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    new-array v0, v10, [B

    .line 45
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 46
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v4, mpc:Ljava/lang/String;
    const-string v8, "MAC "

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 48
    new-instance v8, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v9, "\'MAC \' Header not found"

    invoke-direct {v8, v9}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 51
    :cond_1
    new-array v0, v10, [B

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 53
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v0, v8, v9}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v5

    .line 54
    .local v5, version:I
    const/16 v8, 0xf82

    if-ge v5, v8, :cond_2

    .line 55
    new-instance v8, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v9, "Monkey Audio version <= 3.97 is not supported"

    invoke-direct {v8, v9}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 57
    :cond_2
    const/16 v8, 0x2c

    new-array v0, v8, [B

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 59
    new-instance v2, Lentagged/audioformats/ape/util/MonkeyDescriptor;

    invoke-direct {v2, v0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;-><init>([B)V

    .line 61
    .local v2, md:Lentagged/audioformats/ape/util/MonkeyDescriptor;
    new-array v0, v11, [B

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 63
    new-instance v3, Lentagged/audioformats/ape/util/MonkeyHeader;

    invoke-direct {v3, v0}, Lentagged/audioformats/ape/util/MonkeyHeader;-><init>([B)V

    .line 65
    .local v3, mh:Lentagged/audioformats/ape/util/MonkeyHeader;
    invoke-virtual {v2}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getRiffWavOffset()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    const/16 v8, 0xc

    new-array v0, v8, [B

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 68
    new-instance v7, Lentagged/audioformats/wav/util/WavRIFFHeader;

    invoke-direct {v7, v0}, Lentagged/audioformats/wav/util/WavRIFFHeader;-><init>([B)V

    .line 69
    .local v7, wrh:Lentagged/audioformats/wav/util/WavRIFFHeader;
    invoke-virtual {v7}, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid()Z

    move-result v8

    if-nez v8, :cond_3

    .line 70
    new-instance v8, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v9, "No valid RIFF Header found"

    invoke-direct {v8, v9}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    :cond_3
    new-array v0, v11, [B

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 74
    new-instance v6, Lentagged/audioformats/wav/util/WavFormatHeader;

    invoke-direct {v6, v0}, Lentagged/audioformats/wav/util/WavFormatHeader;-><init>([B)V

    .line 75
    .local v6, wfh:Lentagged/audioformats/wav/util/WavFormatHeader;
    invoke-virtual {v6}, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid()Z

    move-result v8

    if-nez v8, :cond_4

    .line 76
    new-instance v8, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v9, "No valid WAV Header found"

    invoke-direct {v8, v9}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 79
    :cond_4
    invoke-virtual {v3}, Lentagged/audioformats/ape/util/MonkeyHeader;->getPreciseLength()F

    move-result v8

    invoke-virtual {v1, v8}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 80
    invoke-virtual {v6}, Lentagged/audioformats/wav/util/WavFormatHeader;->getChannelNumber()I

    move-result v8

    invoke-virtual {v1, v8}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 81
    invoke-virtual {v6}, Lentagged/audioformats/wav/util/WavFormatHeader;->getSamplingRate()I

    move-result v8

    invoke-virtual {v1, v8}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 82
    invoke-virtual {v1}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v8

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-direct {p0, v8, v9, v10}, Lentagged/audioformats/ape/util/MonkeyInfoReader;->computeBitrate(IJ)I

    move-result v8

    invoke-virtual {v1, v8}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Monkey Audio v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v9, v5

    const-wide v11, 0x408f400000000000L

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", compression level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lentagged/audioformats/ape/util/MonkeyHeader;->getCompressionLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 85
    const-string v8, ""

    invoke-virtual {v1, v8}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 87
    return-object v1
.end method
