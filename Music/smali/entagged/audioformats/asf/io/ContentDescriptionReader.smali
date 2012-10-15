.class public Lentagged/audioformats/asf/io/ContentDescriptionReader;
.super Ljava/lang/Object;
.source "ContentDescriptionReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private getStringSizes(Ljava/io/RandomAccessFile;)[I
    .locals 3
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v2, 0x5

    new-array v1, v2, [I

    .line 123
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 124
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v2

    aput v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v1
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ContentDescription;
    .locals 14
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 140
    const/4 v5, 0x0

    .line 141
    .local v5, result:Lentagged/audioformats/asf/data/ContentDescription;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 142
    .local v1, chunkStart:J
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v3

    .line 143
    .local v3, guid:Lentagged/audioformats/asf/data/GUID;
    sget-object v8, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v8, v3}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 144
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v0

    .line 145
    .local v0, chunkLen:Ljava/math/BigInteger;
    new-instance v5, Lentagged/audioformats/asf/data/ContentDescription;

    .end local v5           #result:Lentagged/audioformats/asf/data/ContentDescription;
    invoke-direct {v5, v1, v2, v0}, Lentagged/audioformats/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 150
    .restart local v5       #result:Lentagged/audioformats/asf/data/ContentDescription;
    invoke-direct {p0, p1}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->getStringSizes(Ljava/io/RandomAccessFile;)[I

    move-result-object v6

    .line 154
    .local v6, stringSizes:[I
    array-length v8, v6

    new-array v7, v8, [Ljava/lang/String;

    .line 155
    .local v7, strings:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 156
    aget v8, v6, v4

    if-lez v8, :cond_0

    .line 157
    aget v8, v6, v4

    invoke-static {p1, v8}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->readFixedSizeUTF16Str(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 155
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_1
    aget v8, v6, v9

    if-lez v8, :cond_2

    .line 160
    aget-object v8, v7, v9

    invoke-virtual {v5, v8}, Lentagged/audioformats/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    .line 161
    :cond_2
    aget v8, v6, v10

    if-lez v8, :cond_3

    .line 162
    aget-object v8, v7, v10

    invoke-virtual {v5, v8}, Lentagged/audioformats/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    .line 163
    :cond_3
    aget v8, v6, v11

    if-lez v8, :cond_4

    .line 164
    aget-object v8, v7, v11

    invoke-virtual {v5, v8}, Lentagged/audioformats/asf/data/ContentDescription;->setCopyRight(Ljava/lang/String;)V

    .line 165
    :cond_4
    aget v8, v6, v12

    if-lez v8, :cond_5

    .line 166
    aget-object v8, v7, v12

    invoke-virtual {v5, v8}, Lentagged/audioformats/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    .line 167
    :cond_5
    aget v8, v6, v13

    if-lez v8, :cond_6

    .line 168
    aget-object v8, v7, v13

    invoke-virtual {v5, v8}, Lentagged/audioformats/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    .line 170
    .end local v0           #chunkLen:Ljava/math/BigInteger;
    .end local v4           #i:I
    .end local v6           #stringSizes:[I
    .end local v7           #strings:[Ljava/lang/String;
    :cond_6
    return-object v5
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ContentDescription;
    .locals 2
    .parameter "raf"
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    new-instance v0, Lentagged/audioformats/asf/io/ContentDescriptionReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/ContentDescriptionReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/ContentDescriptionReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFixedSizeUTF16Str(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 6
    .parameter "raf"
    .parameter "strLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    new-array v2, p1, [B

    .line 83
    .local v2, strBytes:[B
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    .line 84
    .local v1, read:I
    array-length v3, v2

    if-ne v1, v3, :cond_1

    .line 85
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 90
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    .line 91
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    new-array v0, v3, [B

    .line 92
    .local v0, copy:[B
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object v2, v0

    .line 96
    .end local v0           #copy:[B
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 98
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t read the necessary amount of bytes."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
