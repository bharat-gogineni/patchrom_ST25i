.class public Lentagged/audioformats/wav/util/WavFormatHeader;
.super Ljava/lang/Object;
.source "WavFormatHeader.java"


# instance fields
.field private bitrate:I

.field private bytesPerSecond:I

.field private channels:I

.field private isValid:Z

.field private sampleRate:I


# direct methods
.method public constructor <init>([B)V
    .locals 6
    .parameter "b"

    .prologue
    const/high16 v5, 0x100

    const/high16 v4, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v2, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    .line 28
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 30
    .local v0, fmt:Ljava/lang/String;
    const-string v1, "fmt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    .line 31
    const/16 v1, 0xa

    aget-byte v1, p1, v1

    iput v1, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->channels:I

    .line 33
    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    mul-int/2addr v1, v5

    const/16 v2, 0xe

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    const/16 v2, 0xd

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v1, v2

    const/16 v2, 0xc

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->sampleRate:I

    .line 35
    const/16 v1, 0x13

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    mul-int/2addr v1, v5

    const/16 v2, 0x12

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    const/16 v2, 0x11

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v1, v2

    const/16 v2, 0x10

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bytesPerSecond:I

    .line 37
    const/16 v1, 0x16

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lentagged/audioformats/wav/util/WavFormatHeader;->u(I)I

    move-result v1

    iput v1, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bitrate:I

    .line 39
    iput-boolean v3, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    .line 42
    :cond_0
    return-void
.end method

.method private u(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 65
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bitrate:I

    return v0
.end method

.method public getBytesPerSecond()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->bytesPerSecond:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->channels:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->sampleRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const-string v0, "RIFF-WAVE Header:\n"

    .line 70
    .local v0, out:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Is valid?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/wav/util/WavFormatHeader;->isValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method
