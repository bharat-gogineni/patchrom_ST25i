.class public Lentagged/audioformats/mp3/util/VBRIMPEGFrame;
.super Ljava/lang/Object;
.source "VBRIMPEGFrame.java"

# interfaces
.implements Lentagged/audioformats/mp3/util/VbrInfoFrame;


# instance fields
.field private fileSize:I

.field private frameCount:I

.field private isValidVBRIMPEGFrame:Z


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .parameter "bytes"

    .prologue
    const/high16 v6, 0xff

    const v5, 0xff00

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v3, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    .line 27
    iput v3, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    .line 30
    const/4 v2, 0x1

    iput-boolean v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    .line 34
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 35
    .local v1, vbri:Ljava/lang/String;
    const-string v2, "VBRI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/16 v0, 0xa

    .line 37
    .local v0, offset:I
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v4

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    .line 39
    add-int/lit8 v0, v0, 0x4

    .line 40
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v4

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x10

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x11

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    .line 46
    .end local v0           #offset:I
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    goto :goto_0
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    return v0
.end method

.method public isVbr()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->isValidVBRIMPEGFrame:Z

    if-eqz v1, :cond_0

    .line 64
    const-string v0, "\n----VBRIMPEGFrame--------------------\n"

    .line 65
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Frame count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->frameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tFile Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/mp3/util/VBRIMPEGFrame;->fileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 69
    .end local v0           #output:Ljava/lang/String;
    :cond_0
    const-string v0, "\n!!!No Valid VBRI MPEG Frame!!!\n"

    .restart local v0       #output:Ljava/lang/String;
    goto :goto_0
.end method
