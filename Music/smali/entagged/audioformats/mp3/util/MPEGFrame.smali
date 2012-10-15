.class public Lentagged/audioformats/mp3/util/MPEGFrame;
.super Ljava/lang/Object;
.source "MPEGFrame.java"


# static fields
.field private static final MPEGVersionTable:[I

.field private static final MPEGVersionTable_String:[Ljava/lang/String;

.field private static final SAMPLE_NUMBERS:[I

.field private static final bitrateTable:[[[I

.field private static final channelModeTable_String:[Ljava/lang/String;

.field private static final emphasisTable:[Ljava/lang/String;

.field private static final layerDescriptionTable:[I

.field private static final layerDescriptionTable_String:[Ljava/lang/String;

.field private static final modeExtensionTable:[[Ljava/lang/String;

.field private static final samplingRateTable:[[I


# instance fields
.field private MPEGVersion:I

.field private bitrate:I

.field private channelMode:I

.field private emphasis:Ljava/lang/String;

.field private hasPadding:Z

.field private isCopyrighted:Z

.field private isOriginal:Z

.field private isProtected:Z

.field private isValid:Z

.field private layer:I

.field private modeExtension:Ljava/lang/String;

.field private mpegBytes:[B

.field private samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 106
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable:[I

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "MPEG Version 2.5"

    aput-object v1, v0, v4

    const-string v1, "reserved"

    aput-object v1, v0, v5

    const-string v1, "MPEG Version 2 (ISO/IEC 13818-3)"

    aput-object v1, v0, v6

    const-string v1, "MPEG Version 1 (ISO/IEC 11172-3)"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable_String:[Ljava/lang/String;

    .line 114
    new-array v0, v6, [[[I

    new-array v1, v7, [[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrateTable:[[[I

    .line 134
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Stereo"

    aput-object v1, v0, v4

    const-string v1, "Joint stereo (Stereo)"

    aput-object v1, v0, v5

    const-string v1, "Dual channel (2 mono channels)"

    aput-object v1, v0, v6

    const-string v1, "Single channel (Mono)"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelModeTable_String:[Ljava/lang/String;

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v4

    const-string v1, "50/15 ms"

    aput-object v1, v0, v5

    const-string v1, "reserved"

    aput-object v1, v0, v6

    const-string v1, "CCIT J.17"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasisTable:[Ljava/lang/String;

    .line 142
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable:[I

    .line 146
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "reserved"

    aput-object v1, v0, v4

    const-string v1, "Layer III"

    aput-object v1, v0, v5

    const-string v1, "Layer II"

    aput-object v1, v0, v6

    const-string v1, "Layer I"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable_String:[Ljava/lang/String;

    .line 150
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "4-31"

    aput-object v2, v1, v4

    const-string v2, "8-31"

    aput-object v2, v1, v5

    const-string v2, "12-31"

    aput-object v2, v1, v6

    const-string v2, "16-31"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "off-off"

    aput-object v2, v1, v4

    const-string v2, "on-off"

    aput-object v2, v1, v5

    const-string v2, "off-on"

    aput-object v2, v1, v6

    const-string v2, "on-on"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtensionTable:[[Ljava/lang/String;

    .line 157
    new-array v0, v7, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRateTable:[[I

    .line 164
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->SAMPLE_NUMBERS:[I

    return-void

    .line 106
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 142
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 157
    :array_8
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x22t 0x56t 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x11t 0x2bt 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 164
    :array_b
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "b"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    .line 174
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isMPEGFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    .line 176
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescription()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    .line 177
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isProtected()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isProtected:Z

    .line 178
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate:I

    .line 179
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate:I

    .line 180
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    .line 182
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    .line 183
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtension:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isCopyrighted()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isCopyrighted:Z

    .line 185
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isOriginal()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isOriginal:Z

    .line 186
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasis()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasis:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid:Z

    .line 193
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    .line 195
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid:Z

    goto :goto_0
.end method

.method private MPEGVersion()I
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v0, v1, 0x3

    .line 405
    .local v0, index:I
    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable:[I

    aget v1, v1, v0

    return v1
.end method

.method private bitrate()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 415
    iget-object v3, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v2, v3, 0x4

    .line 416
    .local v2, index3:I
    iget v3, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    if-ne v3, v5, :cond_0

    const/4 v0, 0x0

    .line 419
    .local v0, index1:I
    :goto_0
    iget v3, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v3, v5, :cond_1

    .line 420
    const/4 v1, 0x0

    .line 425
    .local v1, index2:I
    :goto_1
    sget-object v3, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrateTable:[[[I

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    aget v3, v3, v2

    return v3

    .line 416
    .end local v0           #index1:I
    .end local v1           #index2:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 421
    .restart local v0       #index1:I
    :cond_1
    iget v3, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v3, v4, :cond_2

    .line 422
    const/4 v1, 0x1

    .restart local v1       #index2:I
    goto :goto_1

    .line 424
    .end local v1           #index2:I
    :cond_2
    const/4 v1, 0x2

    .restart local v1       #index2:I
    goto :goto_1
.end method

.method private channelMode()I
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xc0

    ushr-int/lit8 v0, v1, 0x6

    .line 437
    .local v0, index:I
    return v0
.end method

.method private emphasis()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit8 v0, v1, 0x3

    .line 449
    .local v0, index:I
    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasisTable:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private hasPadding()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 459
    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCopyrighted()Z
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMPEGFrame()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    iget-object v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xe0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isOriginal()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProtected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 391
    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layerDescription()I
    .locals 3

    .prologue
    .line 469
    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x6

    ushr-int/lit8 v0, v1, 0x1

    .line 471
    .local v0, index:I
    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable:[I

    aget v1, v1, v0

    return v1
.end method

.method private modeExtension()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 481
    iget-object v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x30

    ushr-int/lit8 v1, v2, 0x4

    .line 482
    .local v1, index2:I
    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v2, v0, :cond_0

    .line 484
    .local v0, index1:I
    :goto_0
    sget-object v2, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtensionTable:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 482
    .end local v0           #index1:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private samplingRate()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 494
    iget-object v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0xc

    ushr-int/lit8 v1, v2, 0x2

    .line 497
    .local v1, index2:I
    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 503
    .local v0, index1:I
    :goto_0
    sget-object v2, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRateTable:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    return v2

    .line 499
    .end local v0           #index1:I
    :cond_0
    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    if-ne v2, v4, :cond_1

    .line 500
    const/4 v0, 0x1

    .restart local v0       #index1:I
    goto :goto_0

    .line 502
    .end local v0           #index1:I
    :cond_1
    const/4 v0, 0x2

    .restart local v0       #index1:I
    goto :goto_0
.end method


# virtual methods
.method public MPEGVersionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 312
    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable_String:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public channelModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 323
    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelModeTable_String:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate:I

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 214
    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    packed-switch v1, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 217
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFrameLength()I
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getBitrate()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getPaddingLength()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getBitrate()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x90

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getPaddingLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLayerVersion()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    return v0
.end method

.method public getMPEGVersion()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    return v0
.end method

.method public getPaddingLength()I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 254
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-eq v0, v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v0, v1, :cond_1

    .line 257
    const/4 v0, 0x4

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleNumber()I
    .locals 3

    .prologue
    .line 297
    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->SAMPLE_NUMBERS:[I

    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    aget v0, v1, v2

    .line 302
    .local v0, sn:I
    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid:Z

    return v0
.end method

.method public layerToString(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 334
    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable_String:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    const-string v0, "\n----MPEGFrame--------------------\n"

    .line 346
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MPEG Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    invoke-virtual {p0, v2}, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tLayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    invoke-virtual {p0, v2}, Lentagged/audioformats/mp3/util/MPEGFrame;->layerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Bitrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tSamp.Freq.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tChan.Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    invoke-virtual {p0, v2}, Lentagged/audioformats/mp3/util/MPEGFrame;->channelModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mode Extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tEmphasis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Padding? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tProtected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isProtected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tCopyright? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isCopyrighted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tOriginal? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isOriginal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--------------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    return-object v0
.end method
