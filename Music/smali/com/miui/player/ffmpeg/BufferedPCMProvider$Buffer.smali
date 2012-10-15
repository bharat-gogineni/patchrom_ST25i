.class Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;
.super Ljava/lang/Object;
.source "BufferedPCMProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ffmpeg/BufferedPCMProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Buffer"
.end annotation


# instance fields
.field private final mBuffer:[B

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "unitSize"
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    .line 243
    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    .line 244
    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    .line 245
    return-void
.end method


# virtual methods
.method public canRead(I)Z
    .locals 1
    .parameter "len"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canWrite(I)Z
    .locals 2
    .parameter "len"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BZ)I
    .locals 6
    .parameter "buf"
    .parameter "full"

    .prologue
    const/4 v5, 0x0

    .line 263
    if-nez p2, :cond_0

    array-length v3, p1

    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    array-length v0, p1

    .line 264
    .local v0, actual:I
    :goto_0
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    sub-int v1, v3, v4

    .line 265
    .local v1, direct:I
    if-gt v0, v1, :cond_2

    .line 266
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    iget v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    invoke-static {v3, v4, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    .line 275
    :goto_1
    return v0

    .line 263
    .end local v0           #actual:I
    .end local v1           #direct:I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->size()I

    move-result v0

    goto :goto_0

    .line 269
    .restart local v0       #actual:I
    .restart local v1       #direct:I
    :cond_2
    sub-int v2, v0, v1

    .line 270
    .local v2, remain:I
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    iget v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    invoke-static {v3, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    invoke-static {v3, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iput v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    .line 280
    iput v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    .line 281
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 284
    iget v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    iget v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mHead:I

    sub-int v0, v1, v2

    .line 285
    .local v0, dist:I
    if-ltz v0, :cond_0

    .end local v0           #dist:I
    :goto_0
    return v0

    .restart local v0       #dist:I
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public write([BII)V
    .locals 5
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 248
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    sub-int v0, v2, v3

    .line 249
    .local v0, direct:I
    if-gt p3, v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    iget v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    sub-int v1, p3, v0

    .line 254
    .local v1, remain:I
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    iget v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    add-int v2, p2, v0

    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mBuffer:[B

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->mTail:I

    goto :goto_0
.end method
