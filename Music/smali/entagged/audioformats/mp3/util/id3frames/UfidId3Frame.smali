.class public Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
.source "UfidId3Frame.java"


# instance fields
.field private identifier:[B

.field private ownerId:Ljava/lang/String;


# direct methods
.method public constructor <init>([BB)V
    .locals 0
    .parameter "raw"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>([BB)V

    .line 39
    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 5

    .prologue
    .line 58
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 61
    .local v2, own:[B
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 63
    .local v0, b:[B
    const/4 v1, 0x0

    .line 64
    .local v1, offset:I
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getIdBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    add-int/lit8 v1, v1, 0x4

    .line 65
    array-length v3, v0

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {p0, v3}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getSize(I)[B

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    add-int/lit8 v1, v1, 0x4

    .line 66
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    invoke-virtual {p0, v3, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v3, v3

    add-int/lit8 v1, v3, 0x8

    .line 68
    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    array-length v3, v2

    add-int/2addr v1, v3

    .line 70
    const/4 v3, 0x0

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 72
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    invoke-virtual {p0, v3, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->copy([B[BI)V

    .line 74
    return-object v0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 98
    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    invoke-virtual {v0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    .line 100
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    .line 102
    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "UFID"

    return-object v0
.end method

.method public getIdentifier()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 6
    .parameter "raw"

    .prologue
    .line 42
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v2, v2

    invoke-virtual {p0, p1, v2}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->indexOfFirstNull([BI)I

    move-result v0

    .line 44
    .local v0, i:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v3, v3

    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v4, v4

    sub-int v4, v0, v4

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    .line 51
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    .line 52
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 53
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    .end local v1           #j:I
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v3, v3

    array-length v4, p1

    iget-object v5, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->flags:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->ownerId:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->identifier:[B

    goto :goto_0

    .line 55
    .restart local v1       #j:I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UFID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
