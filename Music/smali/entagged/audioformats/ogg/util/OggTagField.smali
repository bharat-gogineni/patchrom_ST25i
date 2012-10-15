.class public Lentagged/audioformats/ogg/util/OggTagField;
.super Ljava/lang/Object;
.source "OggTagField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field private common:Z

.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fieldId"
    .parameter "fieldContent"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lentagged/audioformats/ogg/util/OggTagField;->checkCommon()V

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 65
    .local v0, field:Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, splitField:[Ljava/lang/String;
    array-length v3, v2

    if-le v3, v5, :cond_0

    .line 67
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    .line 68
    aget-object v3, v2, v5

    iput-object v3, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    .line 84
    :goto_0
    invoke-direct {p0}, Lentagged/audioformats/ogg/util/OggTagField;->checkCommon()V

    .line 85
    return-void

    .line 72
    :cond_0
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, i:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 74
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    .line 75
    const-string v3, ""

    iput-object v3, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_1
    const-string v3, "ERRONEOUS"

    iput-object v3, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkCommon()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "GENRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "TRACKNUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "COMMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    const-string v1, "TRACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->common:Z

    .line 112
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected copy([B[BI)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "dstOffset"

    .prologue
    .line 133
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-void
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 142
    instance-of v0, p1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lentagged/audioformats/generic/TagTextField;

    .end local p1
    invoke-interface {p1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method protected getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter "s"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v6, 0x4

    new-array v5, v6, [B

    .line 198
    .local v5, size:[B
    iget-object v6, p0, Lentagged/audioformats/ogg/util/OggTagField;->id:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 199
    .local v2, idBytes:[B
    iget-object v6, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {p0, v6, v7}, Lentagged/audioformats/ogg/util/OggTagField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 200
    .local v1, contentBytes:[B
    array-length v6, v2

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 202
    .local v0, b:[B
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    array-length v7, v1

    add-int v3, v6, v7

    .line 203
    .local v3, length:I
    const/4 v6, 0x3

    const/high16 v7, -0x100

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 204
    const/4 v6, 0x2

    const/high16 v7, 0xff

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 205
    const/4 v6, 0x1

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 206
    const/4 v6, 0x0

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, offset:I
    invoke-virtual {p0, v5, v0, v4}, Lentagged/audioformats/ogg/util/OggTagField;->copy([B[BI)V

    .line 210
    add-int/lit8 v4, v4, 0x4

    .line 211
    invoke-virtual {p0, v2, v0, v4}, Lentagged/audioformats/ogg/util/OggTagField;->copy([B[BI)V

    .line 212
    array-length v6, v2

    add-int/lit8 v4, v6, 0x4

    .line 213
    const/16 v6, 0x3d

    aput-byte v6, v0, v4

    .line 214
    add-int/lit8 v4, v4, 0x1

    .line 215
    invoke-virtual {p0, v1, v0, v4}, Lentagged/audioformats/ogg/util/OggTagField;->copy([B[BI)V

    .line 217
    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->common:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lentagged/audioformats/ogg/util/OggTagField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lentagged/audioformats/ogg/util/OggTagField;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
