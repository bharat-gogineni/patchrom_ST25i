.class public Lentagged/audioformats/mp3/util/LameMPEGFrame;
.super Ljava/lang/Object;
.source "LameMPEGFrame.java"


# instance fields
.field private bitrate:I

.field private containsLameFrame:Z

.field private containsLameMPEGFrame:Z

.field private fileSize:I

.field private isValidLameMPEGFrame:Z

.field private lameVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 9
    .parameter "lameHeader"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    .line 46
    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameFrame:Z

    .line 55
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v5, v7}, Ljava/lang/String;-><init>([BII)V

    .line 57
    .local v2, xing:Ljava/lang/String;
    const-string v3, "LAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    iput-boolean v4, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    .line 60
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/LameMPEGFrame;->u([B)[I

    move-result-object v0

    .line 62
    .local v0, b:[I
    const/16 v3, 0x9

    aget v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0xff

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameFrame:Z

    .line 64
    new-array v1, v8, [B

    .line 66
    .local v1, version:[B
    aget-byte v3, p1, v7

    aput-byte v3, v1, v5

    .line 67
    aget-byte v3, p1, v8

    aput-byte v3, v1, v4

    .line 68
    const/4 v3, 0x2

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 69
    const/4 v3, 0x3

    const/4 v4, 0x7

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 70
    const/16 v3, 0x8

    aget-byte v3, p1, v3

    aput-byte v3, v1, v7

    .line 71
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->lameVersion:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame()Z

    move-result v3

    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame:Z

    .line 75
    iget-boolean v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame:Z

    if-eqz v3, :cond_0

    .line 76
    const/16 v3, 0x14

    aget v3, v0, v3

    iput v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->bitrate:I

    .line 77
    const/16 v3, 0x1c

    aget v3, v0, v3

    const v4, 0xffffff

    mul-int/2addr v3, v4

    const/16 v4, 0x1d

    aget v4, v0, v4

    const v5, 0xffff

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0x1e

    aget v4, v0, v4

    mul-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    const/16 v4, 0x1f

    aget v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->fileSize:I

    .line 84
    .end local v0           #b:[I
    .end local v1           #version:[B
    :cond_0
    :goto_1
    return-void

    .restart local v0       #b:[I
    :cond_1
    move v3, v5

    .line 62
    goto :goto_0

    .line 82
    .end local v0           #b:[I
    :cond_2
    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    goto :goto_1
.end method

.method private containsLameMPEGFrame()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameFrame:Z

    return v0
.end method

.method private u([B)[I
    .locals 3
    .parameter "b"

    .prologue
    .line 87
    array-length v2, p1

    new-array v0, v2, [I

    .line 88
    .local v0, i:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 89
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    if-eqz v1, :cond_1

    .line 113
    const-string v0, "\n----LameMPEGFrame--------------------\n"

    .line 114
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Lame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->lameVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame:Z

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tMin.Bitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->fileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n--------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 120
    .end local v0           #output:Ljava/lang/String;
    :cond_1
    const-string v0, "\n!!!No Valid Lame MPEG Frame!!!\n"

    .restart local v0       #output:Ljava/lang/String;
    goto :goto_0
.end method
