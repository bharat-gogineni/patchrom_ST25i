.class public Lentagged/audioformats/ogg/util/VorbisCodecHeader;
.super Ljava/lang/Object;
.source "VorbisCodecHeader.java"


# instance fields
.field private audioChannels:I

.field private audioSampleRate:I

.field private bitrateMaximal:I

.field private bitrateMinimal:I

.field private bitrateNominal:I

.field private isValid:Z

.field private vorbisVersion:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "vorbisData"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->isValid:Z

    .line 36
    invoke-virtual {p0, p1}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->generateCodecHeader([B)V

    .line 37
    return-void
.end method

.method private u(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 100
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public generateCodecHeader([B)V
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    .line 72
    const/4 v3, 0x0

    aget-byte v1, p1, v3

    .line 74
    .local v1, packetType:I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v2, p1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 76
    .local v2, vorbis:Ljava/lang/String;
    if-ne v1, v5, :cond_0

    const-string v3, "vorbis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v3, 0x7

    aget-byte v3, p1, v3

    const/16 v4, 0x8

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/16 v4, 0x9

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/16 v4, 0xa

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->vorbisVersion:I

    .line 79
    const/16 v3, 0xb

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v3

    iput v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioChannels:I

    .line 81
    const/16 v3, 0xc

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v3

    const/16 v4, 0xd

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/16 v4, 0xe

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/16 v4, 0xf

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioSampleRate:I

    .line 85
    const/16 v3, 0x10

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v3

    const/16 v4, 0x11

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/16 v4, 0x12

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/16 v4, 0x13

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMinimal:I

    .line 86
    const/16 v3, 0x14

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v3

    const/16 v4, 0x15

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/16 v4, 0x16

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/16 v4, 0x17

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateNominal:I

    .line 87
    const/16 v3, 0x18

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v3

    const/16 v4, 0x19

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/16 v4, 0x1a

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/16 v4, 0x1b

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->u(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMaximal:I

    .line 91
    const/16 v3, 0x1d

    aget-byte v0, p1, v3

    .line 93
    .local v0, framingFlag:I
    if-eqz v0, :cond_0

    .line 94
    iput-boolean v5, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->isValid:Z

    .line 97
    .end local v0           #framingFlag:I
    :cond_0
    return-void
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioChannels:I

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ogg Vorbis Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->vorbisVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMaximal:I

    return v0
.end method

.method public getMinBitrate()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateMinimal:I

    return v0
.end method

.method public getNominalBitrate()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->bitrateNominal:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->audioSampleRate:I

    return v0
.end method
