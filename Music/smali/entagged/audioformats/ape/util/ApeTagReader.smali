.class public Lentagged/audioformats/ape/util/ApeTagReader;
.super Ljava/lang/Object;
.source "ApeTagReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 20
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v11, Lentagged/audioformats/ape/ApeTag;

    invoke-direct {v11}, Lentagged/audioformats/ape/ApeTag;-><init>()V

    .line 34
    .local v11, tag:Lentagged/audioformats/ape/ApeTag;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x20

    sub-long v16, v16, v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 37
    .local v3, b:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 39
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 40
    .local v12, tagS:Ljava/lang/String;
    const-string v16, "APETAGEX"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 41
    new-instance v16, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v17, "There is no APE Tag in this file"

    invoke-direct/range {v16 .. v17}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 45
    :cond_0
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 46
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 47
    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v15

    .line 48
    .local v15, version:I
    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 49
    new-instance v16, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v17, "APE Tag other than version 2.0 are not supported"

    invoke-direct/range {v16 .. v17}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 53
    :cond_1
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 54
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 55
    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v13

    .line 58
    .local v13, tagSize:J
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 59
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 60
    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v9

    .line 63
    .local v9, itemNumber:I
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 64
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    sub-long v16, v16, v13

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 69
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 71
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 73
    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v5

    .line 74
    .local v5, contentLength:I
    const v16, 0x7a120

    move/from16 v0, v16

    if-le v5, v0, :cond_2

    .line 75
    new-instance v16, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Item size is much too large: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bytes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 78
    :cond_2
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 79
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 81
    const/16 v16, 0x0

    aget-byte v16, v3, v16

    and-int/lit8 v16, v16, 0x6

    shr-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    .line 83
    .local v4, binary:Z
    :goto_1
    const/4 v10, 0x0

    .line 84
    .local v10, j:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v16

    if-eqz v16, :cond_4

    .line 85
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 81
    .end local v4           #binary:Z
    .end local v10           #j:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 86
    .restart local v4       #binary:Z
    .restart local v10       #j:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    int-to-long v0, v10

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    move v7, v10

    .line 90
    .local v7, fieldSize:I
    new-array v3, v7, [B

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 92
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 93
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 96
    .local v6, field:Ljava/lang/String;
    new-array v3, v5, [B

    .line 97
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 98
    if-nez v4, :cond_5

    .line 99
    new-instance v16, Lentagged/audioformats/ape/util/ApeTagTextField;

    new-instance v17, Ljava/lang/String;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lentagged/audioformats/ape/ApeTag;->add(Lentagged/audioformats/generic/TagField;)V

    .line 69
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 101
    :cond_5
    new-instance v16, Lentagged/audioformats/ape/util/ApeTagBinaryField;

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v3}, Lentagged/audioformats/ape/util/ApeTagBinaryField;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lentagged/audioformats/ape/ApeTag;->add(Lentagged/audioformats/generic/TagField;)V

    goto :goto_3

    .line 104
    .end local v4           #binary:Z
    .end local v5           #contentLength:I
    .end local v6           #field:Ljava/lang/String;
    .end local v7           #fieldSize:I
    .end local v10           #j:I
    :cond_6
    return-object v11
.end method
