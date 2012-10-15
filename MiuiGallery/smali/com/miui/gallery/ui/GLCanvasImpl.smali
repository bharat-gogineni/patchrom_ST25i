.class public Lcom/miui/gallery/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/miui/gallery/ui/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/GLCanvasImpl$1;,
        Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;,
        Lcom/miui/gallery/ui/GLCanvasImpl$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F


# instance fields
.field private mAlpha:F

.field private mAnimationTime:J

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field private final mClipRect:Landroid/graphics/Rect;

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/miui/gallery/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

.field private mHeight:I

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/miui/gallery/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/16 v1, 0x10

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 52
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 73
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 74
    new-instance v0, Lcom/miui/gallery/util/IntArray;

    invoke-direct {v0}, Lcom/miui/gallery/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/miui/gallery/util/IntArray;

    .line 75
    new-instance v0, Lcom/miui/gallery/util/IntArray;

    invoke-direct {v0}, Lcom/miui/gallery/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/miui/gallery/util/IntArray;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    .line 87
    iput-object p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 88
    new-instance v0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->initialize()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/GLCanvasImpl;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/GLCanvasImpl;)Ljavax/microedition/khronos/opengles/GL11;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/GLCanvasImpl;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 133
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z
    .locals 4
    .parameter "texture"

    .prologue
    const/4 v0, 0x1

    .line 451
    invoke-virtual {p1, p0}, Lcom/miui/gallery/ui/BasicTexture;->onBind(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexture2DEnabled(Z)V

    .line 453
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0xde1

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    goto :goto_0
.end method

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/gallery/ui/BasicTexture;)V
    .locals 9
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 415
    invoke-virtual {p3}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v3

    .line 416
    .local v3, width:I
    invoke-virtual {p3}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v0

    .line 417
    .local v0, height:I
    invoke-virtual {p3}, Lcom/miui/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 418
    .local v2, texWidth:I
    invoke-virtual {p3}, Lcom/miui/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 420
    .local v1, texHeight:I
    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->left:F

    .line 421
    iget v6, p1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 422
    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 423
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 426
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 427
    .local v4, xBound:F
    iget v6, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 428
    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->right:F

    .line 430
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 432
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 433
    .local v5, yBound:F
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 434
    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 436
    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 438
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V
    .locals 8
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    .line 343
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/miui/gallery/ui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 355
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/GLCanvasImpl;->textureRect(FFFF)V

    .line 369
    :cond_0
    :goto_1
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v6

    .line 360
    .local v6, points:[F
    aget v0, v6, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 361
    const/4 v0, 0x1

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 362
    const/4 v0, 0x2

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int p4, v0, p2

    .line 363
    const/4 v0, 0x3

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int p5, v0, p3

    .line 364
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v7

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 366
    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/miui/gallery/ui/BasicTexture;IFIIIIF)V
    .locals 11
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 468
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 469
    invoke-virtual/range {v1 .. v7}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIIIF)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    .line 472
    int-to-float v2, p4

    move/from16 v0, p5

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/ui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 479
    iget-object v10, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 480
    .local v10, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const/high16 v1, 0x3f80

    mul-float v2, p8, p3

    sub-float v9, v1, v2

    .line 494
    .local v9, comboRatio:F
    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_5

    .line 495
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p3

    mul-float v2, v2, p8

    div-float/2addr v2, v9

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 501
    :goto_2
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 505
    ushr-int/lit8 v1, p2, 0x18

    int-to-float v1, v1

    const v2, 0x477e0100

    div-float v8, v1, v2

    .line 506
    .local v8, colorAlpha:F
    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v8

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v8

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-direct {p0, v1, v2, v3, v9}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 509
    const/16 v1, 0x2300

    const/16 v2, 0x2201

    iget-object v3, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v4, 0x0

    invoke-interface {v10, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 511
    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 512
    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 513
    const/16 v1, 0x2300

    const v2, 0x8581

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 514
    const/16 v1, 0x2300

    const v2, 0x8591

    const/high16 v3, 0x4440

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 515
    const/16 v1, 0x2300

    const v2, 0x8589

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 516
    const/16 v1, 0x2300

    const v2, 0x8599

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 519
    const/16 v1, 0x2300

    const v2, 0x8582

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 520
    const/16 v1, 0x2300

    const v2, 0x8592

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 523
    const/16 v1, 0x2300

    const v2, 0x858a

    const v3, 0x47057600

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 524
    const/16 v1, 0x2300

    const v2, 0x859a

    const v3, 0x44408000

    invoke-interface {v10, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 526
    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawBoundTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V

    .line 527
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto/16 :goto_0

    .line 476
    .end local v8           #colorAlpha:F
    .end local v9           #comboRatio:F
    .end local v10           #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 497
    .restart local v9       #comboRatio:F
    .restart local v10       #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    goto/16 :goto_2
.end method

.method private drawMixed(Lcom/miui/gallery/ui/BasicTexture;Lcom/miui/gallery/ui/BasicTexture;FIIIIF)V
    .locals 9
    .parameter "from"
    .parameter "to"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 533
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 534
    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIIIF)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 537
    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIIIF)V

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 546
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 549
    iget-object v8, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 550
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/high16 v0, 0x3f80

    mul-float v1, p8, p3

    sub-float v7, v0, v1

    .line 564
    .local v7, comboRatio:F
    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_6

    .line 565
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float v1, v1, p8

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 570
    :goto_3
    const v0, 0x84c1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 571
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 573
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 575
    const v0, 0x84c0

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto :goto_0

    .line 543
    .end local v7           #comboRatio:F
    .end local v8           #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 546
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 567
    .restart local v7       #comboRatio:F
    .restart local v8       #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    goto :goto_3

    .line 578
    :cond_7
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 581
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 582
    const/16 v0, 0x2300

    const v1, 0x8571

    const v2, 0x47057500

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 583
    const/16 v0, 0x2300

    const v1, 0x8572

    const v2, 0x47057500

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 588
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 589
    const/16 v0, 0x2300

    const/16 v1, 0x2201

    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v3, 0x0

    invoke-interface {v8, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 592
    const/16 v0, 0x2300

    const v1, 0x8582

    const v2, 0x47057600

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 593
    const/16 v0, 0x2300

    const v1, 0x8592

    const v2, 0x44408000

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 596
    const/16 v0, 0x2300

    const v1, 0x858a

    const v2, 0x47057600

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 597
    const/16 v0, 0x2300

    const v1, 0x859a

    const v2, 0x44408000

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    .line 600
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawBoundTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V

    .line 603
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 605
    const v0, 0x84c0

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto/16 :goto_0
.end method

.method private freeRestoreConfig(Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    .line 869
    iput-object p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    .line 870
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/4 v9, 0x1

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 140
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/miui/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v2, v4, 0x8

    .line 141
    .local v2, size:I
    invoke-static {v2}, Lcom/miui/gallery/ui/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 142
    .local v3, xyBuffer:Ljava/nio/FloatBuffer;
    sget-object v4, Lcom/miui/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v5, Lcom/miui/gallery/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    new-array v1, v9, [I

    .line 145
    .local v1, name:[I
    invoke-interface {v0, v9, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 146
    aget v4, v1, v6

    iput v4, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBoxCoords:I

    .line 148
    iget v4, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 149
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {v0, v10, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 153
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 154
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 157
    const v4, 0x84c1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 158
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 159
    const v4, 0x84c0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 160
    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 163
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    .line 164
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    .line 615
    const v0, 0x3727c5ac

    .line 616
    .local v0, eps:F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .parameter "matrix"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 289
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 290
    .local v0, point:[F
    const/4 v5, 0x6

    .line 291
    .local v5, srcOffset:I
    int-to-float v2, p2

    aput v2, v0, v5

    .line 292
    int-to-float v2, p3

    aput v2, v0, v9

    .line 293
    const/16 v2, 0x8

    const/4 v4, 0x0

    aput v4, v0, v2

    .line 294
    const/16 v2, 0x9

    const/high16 v4, 0x3f80

    aput v4, v0, v2

    .line 296
    const/4 v1, 0x0

    .local v1, resultOffset:I
    move-object v2, p1

    move-object v4, v0

    .line 297
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 298
    aget v2, v0, v1

    aget v4, v0, v7

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 299
    const/4 v2, 0x1

    aget v4, v0, v2

    aget v6, v0, v7

    div-float/2addr v4, v6

    aput v4, v0, v2

    .line 302
    int-to-float v2, p4

    aput v2, v0, v5

    .line 303
    int-to-float v2, p5

    aput v2, v0, v9

    .line 304
    const/4 v1, 0x2

    move-object v2, p1

    move-object v4, v0

    .line 305
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 306
    aget v2, v0, v1

    aget v3, v0, v8

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 307
    aget v2, v0, v7

    aget v3, v0, v8

    div-float/2addr v2, v3

    aput v2, v0, v7

    .line 309
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;
    .locals 2

    .prologue
    .line 873
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    if-eqz v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    .line 875
    .local v0, result:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;
    iget-object v1, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    .line 878
    .end local v0           #result:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;-><init>(Lcom/miui/gallery/ui/GLCanvasImpl$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 919
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 915
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    return-void
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureColor:[F

    .line 459
    .local v0, color:[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 460
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 461
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 462
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 463
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 788
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 789
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 790
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 791
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 792
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 793
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 794
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 795
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 796
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 797
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 783
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 784
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 241
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->saveTransform()V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->translate(FFF)V

    .line 243
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->scale(FFF)V

    .line 245
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 246
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 248
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->restoreTransform()V

    .line 249
    iget v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 250
    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 780
    return-void
.end method

.method public currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAnimationTime:J

    return-wide v0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .parameter "bufferId"

    .prologue
    .line 810
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/miui/gallery/util/IntArray;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/miui/gallery/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/IntArray;->add(I)V

    .line 812
    monitor-exit v1

    .line 813
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 6

    .prologue
    .line 816
    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/miui/gallery/util/IntArray;

    monitor-enter v2

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/miui/gallery/util/IntArray;

    .line 818
    .local v0, ids:Lcom/miui/gallery/util/IntArray;
    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 820
    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->clear()V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/miui/gallery/util/IntArray;

    .line 824
    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 826
    invoke-virtual {v0}, Lcom/miui/gallery/util/IntArray;->clear()V

    .line 828
    :cond_1
    monitor-exit v2

    .line 829
    return-void

    .line 828
    .end local v0           #ids:Lcom/miui/gallery/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawMesh(Lcom/miui/gallery/ui/BasicTexture;IIIIII)V
    .locals 8
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "xyBuffer"
    .parameter "uvBuffer"
    .parameter "indexBuffer"
    .parameter "indexCount"

    .prologue
    const v7, 0x8892

    const/4 v4, 0x0

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 254
    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    .line 255
    .local v0, alpha:F
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 263
    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 265
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->saveTransform()V

    .line 266
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3, v4}, Lcom/miui/gallery/ui/GLCanvasImpl;->translate(FFF)V

    .line 268
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 270
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 271
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 273
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 274
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 276
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 277
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 280
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 281
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 282
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 284
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->restoreTransform()V

    .line 285
    iget v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 257
    goto :goto_1
.end method

.method public drawMixed(Lcom/miui/gallery/ui/BasicTexture;IFIIII)V
    .locals 9
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 442
    iget v8, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawMixed(Lcom/miui/gallery/ui/BasicTexture;IFIIIIF)V

    .line 443
    return-void
.end method

.method public drawMixed(Lcom/miui/gallery/ui/BasicTexture;Lcom/miui/gallery/ui/BasicTexture;FIIII)V
    .locals 9
    .parameter "from"
    .parameter "to"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 447
    iget v8, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawMixed(Lcom/miui/gallery/ui/BasicTexture;Lcom/miui/gallery/ui/BasicTexture;FIIIIF)V

    .line 448
    return-void
.end method

.method public drawRect(FFFFLcom/miui/gallery/ui/GLPaint;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 169
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/miui/gallery/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/miui/gallery/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/miui/gallery/ui/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setLineSmooth(Z)V

    .line 173
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->saveTransform()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->translate(FFF)V

    .line 175
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->scale(FFF)V

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 178
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 180
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->restoreTransform()V

    .line 181
    iget v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 182
    return-void
.end method

.method public drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 373
    iget v6, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIIIF)V

    .line 374
    return-void
.end method

.method public drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIIIF)V
    .locals 2
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 382
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 386
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/GLCanvasImpl;->drawBoundTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V

    goto :goto_0

    .line 384
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/miui/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 396
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 397
    iget-object p2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 398
    iget-object p3, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 400
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 402
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GLCanvasImpl;->bindTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0, p2, p3, p1}, Lcom/miui/gallery/ui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/gallery/ui/BasicTexture;)V

    .line 404
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 405
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 406
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_0

    .line 400
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGLState:Lcom/miui/gallery/ui/GLCanvasImpl$GLState;

    iget v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 206
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->saveTransform()V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->translate(FFF)V

    .line 208
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/miui/gallery/ui/GLCanvasImpl;->scale(FFF)V

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 211
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 213
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->restoreTransform()V

    .line 214
    iget v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mCountFillRect:I

    .line 215
    return-void
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 124
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 125
    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .parameter "matrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 234
    .local v0, temp:[F
    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 235
    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 861
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    .line 863
    .local v0, config:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->restore(Lcom/miui/gallery/ui/GLCanvasImpl;)V

    .line 864
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/GLCanvasImpl;->freeRestoreConfig(Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;)V

    .line 865
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mTempMatrix:[F

    .local v0, temp:[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 227
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 228
    iget-object v4, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 229
    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-void
.end method

.method public save(I)I
    .locals 5
    .parameter "saveFlags"

    .prologue
    const/4 v4, 0x0

    .line 836
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLCanvasImpl;->obtainRestoreConfig()Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;

    move-result-object v0

    .line 838
    .local v0, config:Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 839
    iget v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    .line 844
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 850
    :goto_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 851
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    :goto_2
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 841
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_0

    .line 847
    :cond_1
    iget-object v1, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 853
    :cond_2
    iget-object v1, v0, Lcom/miui/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_2
.end method

.method public scale(FFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "sz"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 223
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 119
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 120
    iput p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAlpha:F

    .line 121
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentAnimationTimeMillis(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 774
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 775
    iput-wide p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mAnimationTime:J

    .line 776
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 93
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 94
    iput p2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mHeight:I

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 97
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 98
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 99
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 100
    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 102
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 103
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 104
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 106
    .local v1, matrix:[F
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 107
    iget v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mHeight:I

    int-to-float v2, v2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 108
    const/high16 v2, -0x4080

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 110
    iget-object v2, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 112
    return-void

    .end local v0           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v1           #matrix:[F
    :cond_0
    move v2, v3

    .line 93
    goto :goto_0
.end method

.method public translate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 219
    return-void
.end method

.method public unloadTexture(Lcom/miui/gallery/ui/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/miui/gallery/util/IntArray;

    monitor-enter v1

    .line 803
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/miui/gallery/ui/BasicTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 805
    :goto_0
    return v0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl;->mUnboundTextures:Lcom/miui/gallery/util/IntArray;

    iget v2, p1, Lcom/miui/gallery/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/miui/gallery/util/IntArray;->add(I)V

    .line 805
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
