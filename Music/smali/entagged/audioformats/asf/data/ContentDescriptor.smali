.class public final Lentagged/audioformats/asf/data/ContentDescriptor;
.super Ljava/lang/Object;
.source "ContentDescriptor.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final COMMON_FIELD_IDS:Ljava/util/HashSet;


# instance fields
.field protected content:[B

.field private descriptorType:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    .line 108
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/AlbumTitle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/AlbumArtist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/Genre"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/GenreID"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/TrackNumber"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    const-string v1, "WM/Year"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "propName"
    .parameter "propType"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-static {p1}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->name:Ljava/lang/String;

    .line 153
    iput p2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 154
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->createCopy()Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, result:I
    instance-of v2, p1, Lentagged/audioformats/asf/data/ContentDescriptor;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 174
    .local v0, other:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 176
    .end local v0           #other:Lentagged/audioformats/asf/data/ContentDescriptor;
    :cond_0
    return v1
.end method

.method public createCopy()Lentagged/audioformats/asf/data/ContentDescriptor;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 188
    .local v0, result:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getRawData()[B

    move-result-object v1

    iput-object v1, v0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 189
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, result:Z
    instance-of v2, p1, Lentagged/audioformats/asf/data/ContentDescriptor;

    if-eqz v2, :cond_0

    .line 200
    if-ne p1, p0, :cond_1

    .line 201
    const/4 v1, 0x1

    .line 209
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 203
    check-cast v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 204
    .local v0, other:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    iget v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    iget-object v3, v0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getBoolean()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getBytes()[B
    .locals 6

    .prologue
    .line 230
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .local v2, result:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-16LE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 235
    .local v1, nameBytes:[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 237
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 239
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 245
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 247
    iget-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 249
    iget-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 251
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1           #nameBytes:[B
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 253
    .restart local v1       #nameBytes:[B
    :cond_0
    :try_start_1
    iget-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v3, v3

    int-to-long v3, v3

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 254
    iget-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 256
    .end local v1           #nameBytes:[B
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()J
    .locals 6

    .prologue
    .line 290
    const-wide/16 v2, 0x0

    .line 291
    .local v2, result:J
    const/4 v0, -0x1

    .line 292
    .local v0, bytesNeeded:I
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 306
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "The current type doesn\'t allow an interpretation as a number."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :pswitch_0
    const/4 v0, 0x1

    .line 309
    :goto_0
    iget-object v4, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v4, v4

    if-le v0, v4, :cond_0

    .line 310
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "The stored data cannot represent the type of current object."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :pswitch_1
    const/4 v0, 0x4

    .line 298
    goto :goto_0

    .line 300
    :pswitch_2
    const/16 v0, 0x8

    .line 301
    goto :goto_0

    .line 303
    :pswitch_3
    const/4 v0, 0x2

    .line 304
    goto :goto_0

    .line 313
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 314
    iget-object v4, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    aget-byte v4, v4, v1

    mul-int/lit8 v5, v1, 0x8

    shl-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    :cond_1
    return-wide v2

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRawData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 327
    .local v0, copy:[B
    iget-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    iget-object v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 337
    const-string v1, ""

    .line 338
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 358
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Current type is not known."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :pswitch_0
    const-string v1, "binary data"

    .line 360
    :goto_0
    return-object v1

    .line 343
    :pswitch_1
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 344
    goto :goto_0

    .line 348
    :pswitch_2
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 349
    goto :goto_0

    .line 352
    :pswitch_3
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    const-string v4, "UTF-16LE"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    move-object v1, v2

    .line 355
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    return v0
.end method

.method public isCommon()Z
    .locals 2

    .prologue
    .line 391
    sget-object v0, Lentagged/audioformats/asf/data/ContentDescriptor;->COMMON_FIELD_IDS:Ljava/util/HashSet;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBinaryValue([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 416
    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many bytes. 65535 is maximum."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 421
    const/4 v0, 0x1

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 422
    return-void
.end method

.method public setBooleanValue(Z)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    const/4 v0, 0x4

    new-array v3, v0, [B

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aput-byte v0, v3, v2

    aput-byte v2, v3, v1

    aput-byte v2, v3, v4

    const/4 v0, 0x3

    aput-byte v2, v3, v0

    iput-object v3, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 434
    iput v4, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 435
    return-void

    :cond_0
    move v0, v2

    .line 433
    goto :goto_0
.end method

.method public setDWordValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 446
    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 447
    const/4 v0, 0x3

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 448
    return-void
.end method

.method public setQWordValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 459
    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 460
    const/4 v0, 0x4

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 461
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 475
    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 476
    .local v1, tmp:[B
    array-length v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_0

    .line 477
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Byte representation of String in \"UTF-16LE\" is to great. (Maximum is 65535 Bytes)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v1           #tmp:[B
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 484
    new-array v2, v4, [B

    iput-object v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 486
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :goto_0
    iput v4, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 487
    return-void

    .line 481
    .restart local v1       #tmp:[B
    :cond_0
    :try_start_1
    iput-object v1, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setWordValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 498
    int-to-long v0, p1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->content:[B

    .line 499
    const/4 v0, 0x5

    iput v0, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    .line 500
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "String: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Binary: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Boolean: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DWORD: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "QWORD:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WORD:"

    aput-object v3, v1, v2

    iget v2, p0, Lentagged/audioformats/asf/data/ContentDescriptor;->descriptorType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
