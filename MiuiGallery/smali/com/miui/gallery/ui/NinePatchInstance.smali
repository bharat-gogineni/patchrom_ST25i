.class Lcom/miui/gallery/ui/NinePatchInstance;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# instance fields
.field private mBufferNames:[I

.field private mIdxCount:I

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mUvBuffer:Ljava/nio/FloatBuffer;

.field private mXyBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/NinePatchTexture;II)V
    .locals 10
    .parameter "tex"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/miui/gallery/ui/NinePatchTexture;->getNinePatchChunk()Lcom/miui/gallery/ui/NinePatchChunk;

    move-result-object v8

    .line 170
    .local v8, chunk:Lcom/miui/gallery/ui/NinePatchChunk;
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "invalid dimension"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iget-object v0, v8, Lcom/miui/gallery/ui/NinePatchChunk;->mDivX:[I

    array-length v0, v0

    if-ne v0, v9, :cond_2

    iget-object v0, v8, Lcom/miui/gallery/ui/NinePatchChunk;->mDivY:[I

    array-length v0, v0

    if-eq v0, v9, :cond_3

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "unsupported nine patch"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    new-array v1, v7, [F

    .line 182
    .local v1, divX:[F
    new-array v2, v7, [F

    .line 183
    .local v2, divY:[F
    new-array v3, v7, [F

    .line 184
    .local v3, divU:[F
    new-array v4, v7, [F

    .line 186
    .local v4, divV:[F
    iget-object v0, v8, Lcom/miui/gallery/ui/NinePatchChunk;->mDivX:[I

    invoke-virtual {p1}, Lcom/miui/gallery/ui/NinePatchTexture;->getWidth()I

    move-result v7

    invoke-static {v1, v3, v0, v7, p2}, Lcom/miui/gallery/ui/NinePatchInstance;->stretch([F[F[III)I

    move-result v5

    .line 187
    .local v5, nx:I
    iget-object v0, v8, Lcom/miui/gallery/ui/NinePatchChunk;->mDivY:[I

    invoke-virtual {p1}, Lcom/miui/gallery/ui/NinePatchTexture;->getHeight()I

    move-result v7

    invoke-static {v2, v4, v0, v7, p3}, Lcom/miui/gallery/ui/NinePatchInstance;->stretch([F[F[III)I

    move-result v6

    .line 189
    .local v6, ny:I
    iget-object v7, v8, Lcom/miui/gallery/ui/NinePatchChunk;->mColor:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/ui/NinePatchInstance;->prepareVertexData([F[F[F[FII[I)V

    .line 190
    return-void
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 356
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private prepareBuffers(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const v4, 0x88e4

    const v3, 0x8892

    .line 360
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    .line 361
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 362
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    invoke-interface {v0, v6, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 364
    iget-object v1, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 365
    iget-object v1, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 369
    iget-object v1, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 370
    iget-object v1, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 374
    const v1, 0x8893

    iget-object v2, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 375
    const v1, 0x8893

    iget-object v2, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 380
    iput-object v5, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 381
    iput-object v5, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 382
    iput-object v5, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 383
    return-void
.end method

.method private prepareVertexData([F[F[F[FII[I)V
    .locals 27
    .parameter "x"
    .parameter "y"
    .parameter "u"
    .parameter "v"
    .parameter "nx"
    .parameter "ny"
    .parameter "color"

    .prologue
    .line 294
    const/4 v15, 0x0

    .line 295
    .local v15, pntCount:I
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 296
    .local v22, xy:[F
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 297
    .local v20, uv:[F
    const/4 v13, 0x0

    .local v13, j:I
    :goto_0
    move/from16 v0, p6

    if-ge v13, v0, :cond_1

    .line 298
    const/4 v7, 0x0

    .local v7, i:I
    move/from16 v16, v15

    .end local v15           #pntCount:I
    .local v16, pntCount:I
    :goto_1
    move/from16 v0, p5

    if-ge v7, v0, :cond_0

    .line 299
    add-int/lit8 v15, v16, 0x1

    .end local v16           #pntCount:I
    .restart local v15       #pntCount:I
    shl-int/lit8 v21, v16, 0x1

    .line 300
    .local v21, xIndex:I
    add-int/lit8 v23, v21, 0x1

    .line 301
    .local v23, yIndex:I
    aget v24, p1, v7

    aput v24, v22, v21

    .line 302
    aget v24, p2, v13

    aput v24, v22, v23

    .line 303
    aget v24, p3, v7

    aput v24, v20, v21

    .line 304
    aget v24, p4, v13

    aput v24, v20, v23

    .line 298
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15           #pntCount:I
    .restart local v16       #pntCount:I
    goto :goto_1

    .line 297
    .end local v21           #xIndex:I
    .end local v23           #yIndex:I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    .end local v16           #pntCount:I
    .restart local v15       #pntCount:I
    goto :goto_0

    .line 308
    .end local v7           #i:I
    :cond_1
    const/4 v8, 0x1

    .line 309
    .local v8, idxCount:I
    const/4 v12, 0x0

    .line 310
    .local v12, isForward:Z
    const/16 v24, 0x18

    move/from16 v0, v24

    new-array v11, v0, [B

    .line 311
    .local v11, index:[B
    const/16 v17, 0x0

    .local v17, row:I
    :goto_2
    add-int/lit8 v24, p6, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 312
    add-int/lit8 v8, v8, -0x1

    .line 313
    if-nez v12, :cond_4

    const/4 v12, 0x1

    .line 316
    :goto_3
    if-eqz v12, :cond_5

    .line 317
    const/16 v19, 0x0

    .line 318
    .local v19, start:I
    move/from16 v6, p5

    .line 319
    .local v6, end:I
    const/4 v10, 0x1

    .line 326
    .local v10, inc:I
    :goto_4
    move/from16 v4, v19

    .local v4, col:I
    :goto_5
    if-eq v4, v6, :cond_6

    .line 327
    mul-int v24, v17, p5

    add-int v14, v24, v4

    .line 328
    .local v14, k:I
    move/from16 v0, v19

    if-eq v4, v0, :cond_3

    .line 329
    add-int/lit8 v24, p5, -0x1

    mul-int v24, v24, v17

    add-int v5, v24, v4

    .line 330
    .local v5, colorIdx:I
    if-eqz v12, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 331
    :cond_2
    aget v24, p7, v5

    if-nez v24, :cond_3

    .line 332
    add-int/lit8 v24, v8, -0x1

    aget-byte v24, v11, v24

    aput-byte v24, v11, v8

    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 334
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .local v9, idxCount:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v11, v8

    move v8, v9

    .line 338
    .end local v5           #colorIdx:I
    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    :cond_3
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .restart local v9       #idxCount:I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v11, v8

    .line 339
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    add-int v24, v14, p5

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v9

    .line 326
    add-int/2addr v4, v10

    goto :goto_5

    .line 313
    .end local v4           #col:I
    .end local v6           #end:I
    .end local v10           #inc:I
    .end local v14           #k:I
    .end local v19           #start:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 321
    :cond_5
    add-int/lit8 v19, p5, -0x1

    .line 322
    .restart local v19       #start:I
    const/4 v6, -0x1

    .line 323
    .restart local v6       #end:I
    const/4 v10, -0x1

    .restart local v10       #inc:I
    goto :goto_4

    .line 311
    .restart local v4       #col:I
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 343
    .end local v4           #col:I
    .end local v6           #end:I
    .end local v10           #inc:I
    .end local v19           #start:I
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/ui/NinePatchInstance;->mIdxCount:I

    .line 345
    mul-int/lit8 v24, v15, 0x2

    mul-int/lit8 v18, v24, 0x4

    .line 346
    .local v18, size:I
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 347
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/ui/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/ui/NinePatchInstance;->mIdxCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/ui/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    return-void
.end method

.method private static stretch([F[F[III)I
    .locals 15
    .parameter "x"
    .parameter "u"
    .parameter "div"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 226
    invoke-static/range {p3 .. p3}, Lcom/miui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result v11

    .line 227
    .local v11, textureSize:I
    move/from16 v0, p3

    int-to-float v12, v0

    int-to-float v13, v11

    div-float v10, v12, v13

    .line 229
    .local v10, textureBound:F
    const/4 v9, 0x0

    .line 230
    .local v9, stretch:F
    const/4 v1, 0x0

    .local v1, i:I
    move-object/from16 v0, p2

    array-length v5, v0

    .local v5, n:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 231
    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    aget v13, p2, v1

    sub-int/2addr v12, v13

    int-to-float v12, v12

    add-float/2addr v9, v12

    .line 230
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 234
    :cond_0
    sub-int v12, p4, p3

    int-to-float v12, v12

    add-float v8, v12, v9

    .line 236
    .local v8, remaining:F
    const/4 v4, 0x0

    .line 237
    .local v4, lastX:F
    const/4 v3, 0x0

    .line 239
    .local v3, lastU:F
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 240
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p1, v12

    .line 241
    const/4 v1, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 245
    add-int/lit8 v12, v1, 0x1

    aget v13, p2, v1

    int-to-float v13, v13

    sub-float/2addr v13, v3

    add-float/2addr v13, v4

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    aput v13, p0, v12

    .line 246
    add-int/lit8 v12, v1, 0x1

    aget v13, p2, v1

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p1, v12

    .line 249
    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    aget v13, p2, v1

    sub-int/2addr v12, v13

    int-to-float v6, v12

    .line 250
    .local v6, partU:F
    mul-float v12, v8, v6

    div-float v7, v12, v9

    .line 251
    .local v7, partX:F
    sub-float/2addr v8, v7

    .line 252
    sub-float/2addr v9, v6

    .line 254
    add-int/lit8 v12, v1, 0x1

    aget v12, p0, v12

    add-float v4, v12, v7

    .line 255
    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    int-to-float v3, v12

    .line 256
    add-int/lit8 v12, v1, 0x2

    const/high16 v13, 0x3f00

    sub-float v13, v4, v13

    aput v13, p0, v12

    .line 257
    add-int/lit8 v12, v1, 0x2

    const/high16 v13, 0x3f00

    sub-float v13, v3, v13

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p1, v12

    .line 241
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 260
    .end local v6           #partU:F
    .end local v7           #partX:F
    :cond_1
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p4

    int-to-float v13, v0

    aput v13, p0, v12

    .line 261
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    aput v10, p1, v12

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, last:I
    const/4 v1, 0x1

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v5, v12, 0x2

    :goto_2
    if-ge v1, v5, :cond_3

    .line 266
    aget v12, p0, v1

    aget v13, p0, v2

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f80

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 265
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget v12, p0, v1

    aput v12, p0, v2

    .line 268
    aget v12, p1, v1

    aput v12, p1, v2

    goto :goto_3

    .line 270
    :cond_3
    add-int/lit8 v12, v2, 0x1

    return v12
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/NinePatchTexture;II)V
    .locals 8
    .parameter "canvas"
    .parameter "tex"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/NinePatchInstance;->prepareBuffers(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x2

    aget v6, v0, v1

    iget v7, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mIdxCount:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v7}, Lcom/miui/gallery/ui/GLCanvas;->drawMesh(Lcom/miui/gallery/ui/BasicTexture;IIIIII)V

    .line 391
    return-void
.end method

.method public recycle(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->deleteBuffer(I)V

    .line 396
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->deleteBuffer(I)V

    .line 397
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->deleteBuffer(I)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/NinePatchInstance;->mBufferNames:[I

    .line 400
    :cond_0
    return-void
.end method
