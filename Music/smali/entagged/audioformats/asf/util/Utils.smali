.class public Lentagged/audioformats/asf/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStringLengthNullSafe(Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 290
    if-eqz p0, :cond_0

    .line 292
    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 293
    .local v1, tmp:[B
    array-length v2, v1

    const v3, 0xfffd

    if-le v2, v3, :cond_0

    .line 294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\"UTF-16LE\" representation exceeds 65535 bytes. (Including zero term character)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1           #tmp:[B
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 302
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method public static getBytes(JI)[B
    .locals 4
    .parameter "value"
    .parameter "byteCount"

    .prologue
    .line 82
    new-array v1, p2, [B

    .line 83
    .local v1, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 84
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 85
    const/16 v2, 0x8

    ushr-long/2addr p0, v2

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
.end method

.method public static getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;
    .locals 7
    .parameter "fileTime"

    .prologue
    const v6, 0x7fffffff

    const/16 v5, 0xe

    .line 100
    new-instance v1, Ljava/util/GregorianCalendar;

    const/16 v2, 0x641

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 103
    .local v1, result:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "10000"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 104
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, maxInt:Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    invoke-virtual {v1, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 110
    return-object v1
.end method

.method public static readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;
    .locals 6
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 139
    new-array v0, v4, [B

    .line 140
    .local v0, bytes:[B
    new-array v2, v4, [B

    .line 141
    .local v2, oa:[B
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 142
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 143
    rsub-int/lit8 v4, v1, 0x7

    aget-byte v5, v0, v1

    aput-byte v5, v2, v4

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 146
    .local v3, result:Ljava/math/BigInteger;
    return-object v3
.end method

.method public static readCharacterSizedString(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 5
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v1, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v2

    .line 165
    .local v2, strLen:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 166
    .local v0, character:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 173
    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v3, v2, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_2

    .line 175
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid Data for current interpretation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;
    .locals 4
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [I

    .line 199
    .local v0, binaryGuid:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 200
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    aput v2, v0, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    new-instance v2, Lentagged/audioformats/asf/data/GUID;

    invoke-direct {v2, v0}, Lentagged/audioformats/asf/data/GUID;-><init>([I)V

    return-object v2
.end method

.method public static readUINT16(Ljava/io/RandomAccessFile;)I
    .locals 2
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 213
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 214
    return v0
.end method

.method public static readUINT32(Ljava/io/RandomAccessFile;)J
    .locals 5
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const-wide/16 v1, 0x0

    .line 225
    .local v1, result:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x18

    if-gt v0, v3, :cond_0

    .line 226
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/2addr v3, v0

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 225
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 227
    :cond_0
    return-wide v1
.end method

.method public static readUINT64(Ljava/io/RandomAccessFile;)J
    .locals 5
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const-wide/16 v1, 0x0

    .line 241
    .local v1, result:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x38

    if-gt v0, v3, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    shl-int/2addr v3, v0

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 241
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 243
    :cond_0
    return-wide v1
.end method

.method public static readUTF16LEStr(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 7
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 259
    invoke-static {p0}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 260
    .local v3, strLen:I
    new-array v0, v3, [B

    .line 261
    .local v0, buf:[B
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 262
    .local v2, read:I
    array-length v4, v0

    if-ne v2, v4, :cond_1

    .line 266
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 267
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v0, v4

    if-nez v4, :cond_0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v0, v4

    if-nez v4, :cond_0

    .line 268
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    new-array v1, v4, [B

    .line 269
    .local v1, copy:[B
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    move-object v0, v1

    .line 273
    .end local v1           #copy:[B
    :cond_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-16LE"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 275
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid Data for current interpretation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
