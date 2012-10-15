.class public Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;
.source "CommId3Frame.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lang:Ljava/lang/String;

.field private shortDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 39
    const-string v0, "COMM"

    invoke-direct {p0, v0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>([BB)V
    .locals 1
    .parameter "rawContent"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "COMM"

    invoke-direct {p0, v0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    .line 49
    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 110
    iget-object v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 111
    .local v5, shortDescData:[B
    iget-object v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 112
    .local v1, contentData:[B
    array-length v6, v5

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v2, v6, [B

    .line 113
    .local v2, data:[B
    array-length v6, v5

    invoke-static {v5, v8, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    array-length v6, v5

    array-length v7, v1

    invoke-static {v1, v8, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 119
    .local v3, lan:[B
    iget-object v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x3

    array-length v7, v2

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 121
    .local v0, b:[B
    const/4 v4, 0x0

    .line 122
    .local v4, offset:I
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getIdBytes()[B

    move-result-object v6

    invoke-virtual {p0, v6, v0, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    .line 123
    add-int/lit8 v4, v4, 0x4

    .line 124
    array-length v6, v0

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {p0, v6}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getSize(I)[B

    move-result-object v6

    invoke-virtual {p0, v6, v0, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    .line 125
    add-int/lit8 v4, v4, 0x4

    .line 126
    iget-object v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    invoke-virtual {p0, v6, v0, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    .line 127
    iget-object v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v6, v6

    add-int/lit8 v4, v6, 0x8

    .line 129
    iget-byte v6, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->encoding:B

    aput-byte v6, v0, v4

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 132
    invoke-virtual {p0, v3, v0, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    .line 133
    array-length v6, v3

    add-int/2addr v4, v6

    .line 135
    invoke-virtual {p0, v2, v0, v4}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->copy([B[BI)V

    .line 137
    return-object v0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copyContent(Lentagged/audioformats/generic/TagField;)V

    .line 150
    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 151
    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-virtual {v0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    .line 152
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getLangage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    .line 154
    :cond_0
    return-void
.end method

.method public getCommentStart([BILjava/lang/String;)I
    .locals 2
    .parameter "content"
    .parameter "offset"
    .parameter "encoding"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, result:I
    const-string v1, "UTF-16"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 93
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    .line 94
    add-int/lit8 v0, v0, 0x2

    .line 106
    :cond_0
    :goto_1
    return v0

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 99
    :cond_2
    move v0, p2

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 100
    aget-byte v1, p1, v0

    if-nez v1, :cond_3

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    goto :goto_1

    .line 99
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getLangage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 4
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->encoding:B

    .line 57
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 58
    const-string v1, "XXX"

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    .line 72
    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getCommentStart([BILjava/lang/String;)I

    move-result v0

    .line 67
    .local v0, commentStart:I
    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->flags:[B

    array-length v2, v2

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    .line 69
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    .line 71
    sget-boolean v1, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->lang:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->shortDesc:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->content:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getLangage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getShortDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
