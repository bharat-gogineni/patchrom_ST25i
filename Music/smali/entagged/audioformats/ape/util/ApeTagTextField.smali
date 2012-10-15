.class public Lentagged/audioformats/ape/util/ApeTagTextField;
.super Lentagged/audioformats/ape/util/ApeTagField;
.source "ApeTagTextField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "content"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/ape/util/ApeTagField;-><init>(Ljava/lang/String;Z)V

    .line 32
    iput-object p2, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 44
    instance-of v0, p1, Lentagged/audioformats/ape/util/ApeTagTextField;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lentagged/audioformats/ape/util/ApeTagTextField;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/ape/util/ApeTagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    .line 47
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getRawContent()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lentagged/audioformats/ape/util/ApeTagTextField;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {p0, v5, v6}, Lentagged/audioformats/ape/util/ApeTagTextField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 66
    .local v3, idBytes:[B
    iget-object v5, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/ApeTagTextField;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lentagged/audioformats/ape/util/ApeTagTextField;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 67
    .local v1, contentBytes:[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 68
    .local v0, buf:[B
    const/4 v5, 0x4

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    .line 70
    .local v2, flags:[B
    const/4 v4, 0x0

    .line 71
    .local v4, offset:I
    array-length v5, v1

    invoke-virtual {p0, v5}, Lentagged/audioformats/ape/util/ApeTagTextField;->getSize(I)[B

    move-result-object v5

    invoke-virtual {p0, v5, v0, v4}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    add-int/lit8 v4, v4, 0x4

    .line 72
    invoke-virtual {p0, v2, v0, v4}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    add-int/lit8 v4, v4, 0x4

    .line 73
    invoke-virtual {p0, v3, v0, v4}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    array-length v5, v3

    add-int/lit8 v4, v5, 0x8

    .line 74
    const/4 v5, 0x0

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 75
    invoke-virtual {p0, v1, v0, v4}, Lentagged/audioformats/ape/util/ApeTagTextField;->copy([B[BI)V

    array-length v5, v1

    add-int/2addr v4, v5

    .line 77
    return-object v0

    .line 68
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lentagged/audioformats/ape/util/ApeTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method
