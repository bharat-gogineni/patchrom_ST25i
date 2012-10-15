.class public Lentagged/audioformats/asf/io/ExtContentDescReader;
.super Ljava/lang/Object;
.source "ExtContentDescReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .locals 16
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v10, 0x0

    .line 85
    .local v10, result:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 86
    .local v2, chunkStart:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v6

    .line 88
    .local v6, guid:Lentagged/audioformats/asf/data/GUID;
    sget-object v13, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v13, v6}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 89
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v1

    .line 92
    .local v1, chunkLen:Ljava/math/BigInteger;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v13

    int-to-long v4, v13

    .line 95
    .local v4, descriptorCount:J
    new-instance v10, Lentagged/audioformats/asf/data/ExtendedContentDescription;

    .end local v10           #result:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    invoke-direct {v10, v2, v3, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 97
    .restart local v10       #result:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    const-wide/16 v7, 0x0

    .local v7, i:J
    :goto_0
    cmp-long v13, v7, v4

    if-gez v13, :cond_0

    .line 98
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUTF16LEStr(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, tagElement:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 100
    .local v12, type:I
    new-instance v9, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-direct {v9, v11, v12}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 101
    .local v9, prop:Lentagged/audioformats/asf/data/ContentDescriptor;
    packed-switch v12, :pswitch_data_0

    .line 127
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid datatype: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lentagged/audioformats/asf/io/ExtContentDescReader;->readBinaryData(Ljava/io/RandomAccessFile;)[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 130
    :goto_1
    invoke-virtual {v10, v9}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addDescriptor(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 97
    const-wide/16 v13, 0x1

    add-long/2addr v7, v13

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUTF16LEStr(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lentagged/audioformats/asf/io/ExtContentDescReader;->readBinaryData(Ljava/io/RandomAccessFile;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBinaryValue([B)V

    goto :goto_1

    .line 109
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lentagged/audioformats/asf/io/ExtContentDescReader;->readBoolean(Ljava/io/RandomAccessFile;)Z

    move-result v13

    invoke-virtual {v9, v13}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBooleanValue(Z)V

    goto :goto_1

    .line 112
    :pswitch_3
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 113
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lentagged/audioformats/asf/data/ContentDescriptor;->setDWordValue(J)V

    goto :goto_1

    .line 116
    :pswitch_4
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 117
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v13

    invoke-virtual {v9, v13}, Lentagged/audioformats/asf/data/ContentDescriptor;->setWordValue(I)V

    goto :goto_1

    .line 120
    :pswitch_5
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 121
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT64(Ljava/io/RandomAccessFile;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lentagged/audioformats/asf/data/ContentDescriptor;->setQWordValue(J)V

    goto :goto_1

    .line 133
    .end local v1           #chunkLen:Ljava/math/BigInteger;
    .end local v4           #descriptorCount:J
    .end local v7           #i:J
    .end local v9           #prop:Lentagged/audioformats/asf/data/ContentDescriptor;
    .end local v11           #tagElement:Ljava/lang/String;
    .end local v12           #type:I
    :cond_0
    return-object v10

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/ExtendedContentDescription;
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
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

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
    new-instance v0, Lentagged/audioformats/asf/io/ExtContentDescReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/ExtContentDescReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/ExtContentDescReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readBinaryData(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v2

    .line 148
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private readBoolean(Ljava/io/RandomAccessFile;)Z
    .locals 7
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 170
    .local v1, size:I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    .line 171
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Boolean value do require 4 Bytes. (Size value is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :cond_0
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    .line 175
    .local v2, value:J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 176
    .local v0, result:Z
    :goto_0
    return v0

    .line 175
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
