.class public Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
.source "GenericId3Frame.java"


# instance fields
.field private data:[B

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .parameter "id"
    .parameter "raw"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>([BB)V

    .line 38
    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->id:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v0, v2, [B

    .line 75
    .local v0, b:[B
    const/4 v1, 0x0

    .line 76
    .local v1, offset:I
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->getIdBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    add-int/lit8 v1, v1, 0x4

    .line 77
    array-length v2, v0

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {p0, v2}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->getSize(I)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    add-int/lit8 v1, v1, 0x4

    .line 78
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v1, v2, 0x8

    .line 80
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    invoke-virtual {p0, v2, v0, v1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->copy([B[BI)V

    .line 82
    return-object v0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 58
    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    .line 60
    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 3
    .parameter "raw"

    .prologue
    .line 67
    array-length v1, p1

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->data:[B

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->flags:[B

    array-length v2, v2

    add-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : No associated view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
