.class public Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
.source "TextId3Frame.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field protected common:Z

.field protected content:Ljava/lang/String;

.field protected encoding:B

.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "content"

    .prologue
    .line 41
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>()V

    .line 42
    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->checkCommon()V

    .line 44
    iput-object p2, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    .line 45
    sget-object v0, Lentagged/audioformats/mp3/Id3v2Tag;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->setEncoding(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .parameter "id"
    .parameter "rawContent"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/Id3Frame;-><init>([BB)V

    .line 51
    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->checkCommon()V

    .line 53
    return-void
.end method

.method private checkCommon()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TCON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TRCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->common:Z

    .line 60
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected build()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 137
    .local v1, data:[B
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 139
    .local v0, b:[B
    const/4 v2, 0x0

    .line 140
    .local v2, offset:I
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getIdBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    .line 141
    add-int/lit8 v2, v2, 0x4

    .line 142
    array-length v3, v0

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {p0, v3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getSize(I)[B

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    .line 143
    add-int/lit8 v2, v2, 0x4

    .line 144
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    invoke-virtual {p0, v3, v0, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    .line 145
    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v3, v3

    add-int/lit8 v2, v3, 0x8

    .line 147
    iget-byte v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    aput-byte v3, v0, v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 150
    invoke-virtual {p0, v1, v0, v2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copy([B[BI)V

    .line 152
    return-object v0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 113
    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 114
    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    invoke-virtual {v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    .line 115
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->setEncoding(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    if-nez v0, :cond_0

    .line 64
    const-string v0, "ISO-8859-1"

    .line 72
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    const-string v0, "UTF-16"

    goto :goto_0

    .line 67
    :cond_1
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 68
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 69
    :cond_2
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 70
    const-string v0, "UTF-8"

    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "ISO-8859-1"

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->common:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected populate([B)V
    .locals 5
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v1, v1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    .line 121
    iget-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 123
    iput-byte v4, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    .line 125
    :cond_0
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->flags:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->content:Ljava/lang/String;

    .line 132
    :cond_1
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "enc"

    .prologue
    const/4 v1, 0x1

    .line 76
    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "UTF-16"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "UTF-16BE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x2

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const/4 v0, 0x3

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0

    .line 85
    :cond_3
    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->encoding:B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
