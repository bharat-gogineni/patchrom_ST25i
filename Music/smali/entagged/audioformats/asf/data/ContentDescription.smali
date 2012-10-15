.class public Lentagged/audioformats/asf/data/ContentDescription;
.super Lentagged/audioformats/asf/data/Chunk;
.source "ContentDescription.java"


# instance fields
.field private author:Ljava/lang/String;

.field private copyRight:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 64
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lentagged/audioformats/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 65
    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 2
    .parameter "pos"
    .parameter "chunkLen"

    .prologue
    const/4 v1, 0x0

    .line 76
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 38
    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 10

    .prologue
    .line 96
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v2, result:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v5, tags:Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x5

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 101
    .local v6, toWrite:[Ljava/lang/String;
    array-length v7, v6

    new-array v3, v7, [[B

    .line 103
    .local v3, stringRepresentations:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 104
    aget-object v7, v6, v1

    const-string v8, "UTF-16LE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v3, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 108
    aget-object v7, v3, v1

    array-length v7, v7

    add-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_1
    const/4 v1, 0x0

    :goto_2
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 113
    aget-object v7, v3, v1

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 115
    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 121
    .local v4, tagContent:[B
    sget-object v7, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v7}, Lentagged/audioformats/asf/data/GUID;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    array-length v7, v4

    add-int/lit8 v7, v7, 0x18

    int-to-long v7, v7

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #i:I
    .end local v3           #stringRepresentations:[[B
    .end local v4           #tagContent:[B
    .end local v5           #tags:Ljava/io/ByteArrayOutputStream;
    .end local v6           #toWrite:[Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    const-string v0, ""

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 158
    const-string v0, ""

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 167
    const-string v0, ""

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Content Description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Title      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Author     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Copyright  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Rating     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter "fileAuthor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->author:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "tagComment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->description:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setCopyRight(Ljava/lang/String;)V
    .locals 0
    .parameter "cpright"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->copyRight:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0
    .parameter "ratingText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->rating:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "songTitle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescription;->title:Ljava/lang/String;

    .line 247
    return-void
.end method
