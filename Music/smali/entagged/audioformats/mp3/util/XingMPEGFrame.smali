.class public Lentagged/audioformats/mp3/util/XingMPEGFrame;
.super Ljava/lang/Object;
.source "XingMPEGFrame.java"

# interfaces
.implements Lentagged/audioformats/mp3/util/VbrInfoFrame;


# instance fields
.field private fileSize:I

.field private frameCount:I

.field private isValidXingMPEGFrame:Z

.field private quality:I

.field private vbr:Z

.field private vbrFlags:[Z


# direct methods
.method public constructor <init>([B[B)V
    .locals 10
    .parameter "bytesPart1"
    .parameter "bytesPart2"

    .prologue
    const/4 v9, 0x3

    const v8, 0xffffff

    const v7, 0xffff

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v5, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    .line 35
    iput v5, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    .line 38
    iput-boolean v6, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    .line 44
    const/4 v3, 0x4

    new-array v3, v3, [Z

    iput-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    .line 46
    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbr:Z

    .line 56
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 58
    .local v2, xing:Ljava/lang/String;
    const-string v3, "Xing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    :cond_0
    const-string v3, "Xing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbr:Z

    .line 60
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/XingMPEGFrame;->u([B)[I

    move-result-object v0

    .line 61
    .local v0, b:[I
    invoke-direct {p0, p2}, Lentagged/audioformats/mp3/util/XingMPEGFrame;->u([B)[I

    move-result-object v1

    .line 63
    .local v1, q:[I
    const/4 v3, 0x7

    aget v3, v0, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/mp3/util/XingMPEGFrame;->updateVBRFlags(I)V

    .line 65
    iget-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_1

    .line 66
    const/16 v3, 0x8

    aget v3, v0, v3

    mul-int/2addr v3, v8

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-int/2addr v4, v7

    add-int/2addr v3, v4

    const/16 v4, 0xa

    aget v4, v0, v4

    mul-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    const/16 v4, 0xb

    aget v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    .line 67
    :cond_1
    iget-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_2

    .line 68
    const/16 v3, 0xc

    aget v3, v0, v3

    mul-int/2addr v3, v8

    const/16 v4, 0xd

    aget v4, v0, v4

    mul-int/2addr v4, v7

    add-int/2addr v3, v4

    const/16 v4, 0xe

    aget v4, v0, v4

    mul-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    const/16 v4, 0xf

    aget v4, v0, v4

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    .line 69
    :cond_2
    iget-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_3

    .line 70
    aget v3, v1, v5

    mul-int/2addr v3, v8

    aget v4, v1, v6

    mul-int/2addr v4, v7

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v1, v4

    mul-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aget v4, v1, v9

    add-int/2addr v3, v4

    iput v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->quality:I

    .line 76
    .end local v0           #b:[I
    .end local v1           #q:[I
    :cond_3
    :goto_0
    return-void

    .line 74
    :cond_4
    iput-boolean v5, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    goto :goto_0
.end method

.method private u([B)[I
    .locals 3
    .parameter "b"

    .prologue
    .line 79
    array-length v2, p1

    new-array v0, v2, [I

    .line 80
    .local v0, i:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 81
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object v0
.end method

.method private updateVBRFlags(I)V
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    iget-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    .line 135
    iget-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v1

    .line 136
    iget-object v3, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    and-int/lit8 v0, p1, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, v5

    .line 137
    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v3, 0x3

    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    :goto_3
    aput-boolean v1, v0, v3

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    :cond_1
    move v0, v2

    .line 135
    goto :goto_1

    :cond_2
    move v0, v2

    .line 136
    goto :goto_2

    :cond_3
    move v1, v2

    .line 137
    goto :goto_3
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    return v0
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    return v0
.end method

.method public isVbr()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbr:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->isValidXingMPEGFrame:Z

    if-eqz v1, :cond_0

    .line 123
    const-string v0, "\n----XingMPEGFrame--------------------\n"

    .line 124
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Frame count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tFile Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tQuality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->vbrFlags:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Frame count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->frameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tFile Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->fileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tQuality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/XingMPEGFrame;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 129
    .end local v0           #output:Ljava/lang/String;
    :cond_0
    const-string v0, "\n!!!No Valid Xing MPEG Frame!!!\n"

    .restart local v0       #output:Ljava/lang/String;
    goto :goto_0
.end method
