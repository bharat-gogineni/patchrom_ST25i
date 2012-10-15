.class public Lentagged/audioformats/asf/data/AudioStreamChunk;
.super Lentagged/audioformats/asf/data/StreamChunk;
.source "AudioStreamChunk.java"


# static fields
.field public static final CODEC_DESCRIPTIONS:[[Ljava/lang/String;


# instance fields
.field private averageBytesPerSec:J

.field private bitsPerSample:I

.field private blockAlignment:J

.field private channelCount:J

.field private codecData:[B

.field private compressionFormat:J

.field private errorConcealment:Lentagged/audioformats/asf/data/GUID;

.field private samplingRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "161"

    aput-object v2, v1, v4

    const-string v2, " (Windows Media Audio (ver 7,8,9))"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "162"

    aput-object v2, v1, v4

    const-string v2, " (Windows Media Audio 9 series (Professional))"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "163"

    aput-object v2, v1, v4

    const-string v2, "(Windows Media Audio 9 series (Lossless))"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7A21"

    aput-object v3, v2, v4

    const-string v3, " (GSM-AMR (CBR))"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7A22"

    aput-object v3, v2, v4

    const-string v3, " (GSM-AMR (VBR))"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 0
    .parameter "pos"
    .parameter "chunkLen"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lentagged/audioformats/asf/data/StreamChunk;-><init>(JLjava/math/BigInteger;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getAverageBytesPerSec()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->bitsPerSample:I

    return v0
.end method

.method public getChannelCount()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->channelCount:J

    return-wide v0
.end method

.method public getCodecDescription()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getCompressionFormat()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, result:Ljava/lang/StringBuffer;
    const-string v0, " (Unknown)"

    .line 141
    .local v0, furtherDesc:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 142
    sget-object v3, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    sget-object v3, Lentagged/audioformats/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 147
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 148
    const-string v3, "0x0"

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    const-string v3, "0x"

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getCompressionFormat()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->compressionFormat:J

    return-wide v0
.end method

.method public getKbps()I
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getAverageBytesPerSec()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSamplingRate()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->samplingRate:J

    return-wide v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/StreamChunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioStream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Bitrate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getKbps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Channels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Bits per Sample: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getBitsPerSample()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Formatcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setAverageBytesPerSec(J)V
    .locals 0
    .parameter "avgeBytesPerSec"

    .prologue
    .line 225
    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    .line 226
    return-void
.end method

.method public setBitsPerSample(I)V
    .locals 0
    .parameter "bps"

    .prologue
    .line 234
    iput p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->bitsPerSample:I

    .line 235
    return-void
.end method

.method public setBlockAlignment(J)V
    .locals 0
    .parameter "align"

    .prologue
    .line 243
    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->blockAlignment:J

    .line 244
    return-void
.end method

.method public setChannelCount(J)V
    .locals 0
    .parameter "channels"

    .prologue
    .line 251
    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->channelCount:J

    .line 252
    return-void
.end method

.method public setCodecData([B)V
    .locals 0
    .parameter "codecSpecificData"

    .prologue
    .line 260
    iput-object p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->codecData:[B

    .line 261
    return-void
.end method

.method public setCompressionFormat(J)V
    .locals 0
    .parameter "cFormatCode"

    .prologue
    .line 268
    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->compressionFormat:J

    .line 269
    return-void
.end method

.method public setErrorConcealment(Lentagged/audioformats/asf/data/GUID;)V
    .locals 0
    .parameter "errConc"

    .prologue
    .line 279
    iput-object p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->errorConcealment:Lentagged/audioformats/asf/data/GUID;

    .line 280
    return-void
.end method

.method public setSamplingRate(J)V
    .locals 0
    .parameter "sampRate"

    .prologue
    .line 287
    iput-wide p1, p0, Lentagged/audioformats/asf/data/AudioStreamChunk;->samplingRate:J

    .line 288
    return-void
.end method
