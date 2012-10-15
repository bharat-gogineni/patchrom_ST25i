.class public abstract Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
.super Ljava/lang/Object;
.source "Id3Frame.java"

# interfaces
.implements Lentagged/audioformats/generic/TagField;


# instance fields
.field protected flags:[B

.field protected version:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->version:B

    .line 57
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->createDefaultFlags()V

    .line 58
    return-void
.end method

.method public constructor <init>([BB)V
    .locals 6
    .parameter "raw"
    .parameter "id3Version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-byte v3, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-eq p2, v3, :cond_0

    sget-byte v3, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p2, v3, :cond_5

    .line 74
    :cond_0
    const/4 v2, 0x2

    .line 76
    .local v2, size:B
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 78
    const/4 v3, 0x6

    int-to-byte v2, v3

    .line 81
    :cond_1
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 83
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    .line 86
    :cond_2
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 88
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    .line 91
    :cond_3
    new-array v3, v2, [B

    iput-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 93
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    aget-byte v4, p1, v0

    aput-byte v4, v3, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_4
    move-object v1, p1

    .line 102
    .end local v0           #i:I
    .end local v2           #size:B
    .local v1, rawNew:[B
    :goto_1
    iput-byte p2, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->version:B

    .line 104
    invoke-virtual {p0, v1}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->populate([B)V

    .line 105
    return-void

    .line 96
    .end local v1           #rawNew:[B
    :cond_5
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->createDefaultFlags()V

    .line 97
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    array-length v3, v3

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 98
    .restart local v1       #rawNew:[B
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->copy([B[BI)V

    .line 99
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    array-length v3, v3

    invoke-virtual {p0, p1, v1, v3}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->copy([B[BI)V

    goto :goto_1
.end method

.method private createDefaultFlags()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    .line 140
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    aput-byte v2, v0, v2

    .line 141
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->flags:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 142
    return-void
.end method


# virtual methods
.method protected abstract build()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected copy([B[BI)V
    .locals 3
    .parameter "src"
    .parameter "dst"
    .parameter "dstOffset"

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 132
    add-int v1, v0, p3

    aget-byte v2, p1, v0

    aput-byte v2, p2, v1

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 153
    instance-of v2, p1, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 154
    check-cast v1, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;

    .line 156
    .local v1, other:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :try_start_0
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->build()[B

    move-result-object v2

    invoke-virtual {v1}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->build()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    .end local v1           #other:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :goto_0
    return v2

    .line 157
    .restart local v1       #other:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 161
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #other:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .parameter "s"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, result:[B
    const-string v3, "UTF-16"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const-string v3, "UTF-16LE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 184
    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 185
    .local v1, tmp:[B
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    const/4 v3, -0x1

    aput-byte v3, v1, v5

    .line 188
    const/4 v3, 0x1

    const/4 v4, -0x2

    aput-byte v4, v1, v3

    .line 189
    move-object v0, v1

    .line 201
    :goto_0
    return-object v0

    .line 192
    .end local v1           #tmp:[B
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    const/4 v2, 0x1

    .line 194
    .local v2, zeroTerm:I
    const-string v3, "UTF-16BE"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const/4 v2, 0x2

    .line 197
    :cond_1
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v1, v3, [B

    .line 198
    .restart local v1       #tmp:[B
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    move-object v0, v1

    goto :goto_0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method protected getIdBytes()[B
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;->build()[B

    move-result-object v0

    return-object v0
.end method

.method protected getSize(I)[B
    .locals 1
    .parameter "size"

    .prologue
    .line 278
    invoke-static {p1}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->getSyncSafe(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected getString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, result:Ljava/lang/String;
    const-string v2, "UTF-16"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, zerochars:I
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    .line 306
    const/4 v1, 0x2

    .line 308
    :cond_0
    aget-byte v2, p1, p2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_1

    .line 309
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    sub-int/2addr v3, v1

    const-string v4, "UTF-16BE"

    invoke-direct {v0, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 338
    .restart local v0       #result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 311
    :cond_1
    aget-byte v2, p1, p2

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_2

    .line 312
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    sub-int/2addr v3, v1

    const-string v4, "UTF-16LE"

    invoke-direct {v0, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 320
    :cond_2
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    sub-int v2, p3, v1

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v1           #zerochars:I
    :cond_3
    const/4 v1, 0x0

    .line 324
    .restart local v1       #zerochars:I
    const-string v2, "UTF-16BE"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_4

    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_4

    .line 327
    const/4 v1, 0x2

    .line 332
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_7

    .line 333
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 329
    :cond_6
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_4

    .line 330
    const/4 v1, 0x1

    goto :goto_1

    .line 335
    :cond_7
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    sub-int v2, p3, v1

    invoke-direct {v0, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method protected indexOfFirstNull([BI)I
    .locals 2
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 353
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 354
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 356
    .end local v0           #i:I
    :goto_1
    return v0

    .line 353
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected abstract populate([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
