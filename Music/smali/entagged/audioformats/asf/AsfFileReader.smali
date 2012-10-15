.class public Lentagged/audioformats/asf/AsfFileReader;
.super Lentagged/audioformats/generic/AudioFileReader;
.source "AsfFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 6
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 47
    new-instance v2, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v2}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 49
    .local v2, info:Lentagged/audioformats/EncodingInfo;
    :try_start_0
    invoke-static {p1}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v1

    .line 50
    .local v1, header:Lentagged/audioformats/asf/data/AsfHeader;
    if-nez v1, :cond_0

    .line 51
    new-instance v3, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v4, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {v3, v4}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #header:Lentagged/audioformats/asf/data/AsfHeader;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 65
    check-cast v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 55
    .restart local v1       #header:Lentagged/audioformats/asf/data/AsfHeader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v3

    invoke-virtual {v3}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getKbps()I

    move-result v3

    invoke-virtual {v2, v3}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 56
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v3

    invoke-virtual {v3}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASF (audio): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v4

    invoke-virtual {v4}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v3

    invoke-virtual {v3}, Lentagged/audioformats/asf/data/FileHeader;->getPreciseDuration()F

    move-result v3

    invoke-virtual {v2, v3}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 61
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/AsfHeader;->getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;

    move-result-object v3

    invoke-virtual {v3}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    return-object v2

    .line 66
    .end local v1           #header:Lentagged/audioformats/asf/data/AsfHeader;
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    instance-of v3, v0, Lentagged/audioformats/exceptions/CannotReadException;

    if-eqz v3, :cond_2

    .line 67
    check-cast v0, Lentagged/audioformats/exceptions/CannotReadException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 69
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    new-instance v3, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read. Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 6
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, tag:Lentagged/audioformats/Tag;
    :try_start_0
    invoke-static {p1}, Lentagged/audioformats/asf/io/AsfHeaderReader;->readHeader(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/AsfHeader;

    move-result-object v1

    .line 87
    .local v1, header:Lentagged/audioformats/asf/data/AsfHeader;
    if-nez v1, :cond_0

    .line 88
    new-instance v3, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v4, "Some values must have been incorrect for interpretation as asf with wma content."

    invoke-direct {v3, v4}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #header:Lentagged/audioformats/asf/data/AsfHeader;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 97
    check-cast v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 93
    .restart local v1       #header:Lentagged/audioformats/asf/data/AsfHeader;
    :cond_0
    :try_start_1
    invoke-static {v1}, Lentagged/audioformats/asf/util/TagConverter;->createTagOf(Lentagged/audioformats/asf/data/AsfHeader;)Lentagged/audioformats/Tag;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 105
    return-object v2

    .line 98
    .end local v1           #header:Lentagged/audioformats/asf/data/AsfHeader;
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    instance-of v3, v0, Lentagged/audioformats/exceptions/CannotReadException;

    if-eqz v3, :cond_2

    .line 99
    check-cast v0, Lentagged/audioformats/exceptions/CannotReadException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 101
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    new-instance v3, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read. Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
