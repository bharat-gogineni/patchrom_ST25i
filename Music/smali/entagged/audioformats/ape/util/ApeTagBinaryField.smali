.class public Lentagged/audioformats/ape/util/ApeTagBinaryField;
.super Lentagged/audioformats/ape/util/ApeTagField;
.source "ApeTagBinaryField.java"


# instance fields
.field private content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .parameter "id"
    .parameter "content"

    .prologue
    .line 30
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lentagged/audioformats/ape/util/ApeTagField;-><init>(Ljava/lang/String;Z)V

    .line 31
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    aget-byte v2, p2, v0

    aput-byte v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 45
    instance-of v0, p1, Lentagged/audioformats/ape/util/ApeTagBinaryField;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lentagged/audioformats/ape/util/ApeTagBinaryField;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getContent()[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    .line 48
    :cond_0
    return-void
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    return-object v0
.end method

.method public getRawContent()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-virtual {p0, v4, v5}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 56
    .local v2, idBytes:[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 57
    .local v0, buf:[B
    const/4 v4, 0x4

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    .line 59
    .local v1, flags:[B
    const/4 v3, 0x0

    .line 60
    .local v3, offset:I
    iget-object v4, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v4, v4

    invoke-virtual {p0, v4}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->getSize(I)[B

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    add-int/lit8 v3, v3, 0x4

    .line 61
    invoke-virtual {p0, v1, v0, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    add-int/lit8 v3, v3, 0x4

    .line 62
    invoke-virtual {p0, v2, v0, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    array-length v4, v2

    add-int/lit8 v3, v4, 0x8

    .line 63
    const/4 v4, 0x0

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 64
    iget-object v4, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    invoke-virtual {p0, v4, v0, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;->copy([B[BI)V

    iget-object v4, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v4, v4

    add-int/2addr v3, v4

    .line 66
    return-object v0

    .line 57
    :array_0
    .array-data 0x1
        0x2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagBinaryField;->content:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "Binary field"

    return-object v0
.end method
