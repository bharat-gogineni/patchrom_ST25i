.class Lcom/miui/gallery/ui/CropView$HighlightRectangle;
.super Lcom/miui/gallery/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRectangle"
.end annotation


# instance fields
.field private mArrowBottom:Lcom/miui/gallery/ui/ResourceTexture;

.field private mArrowLeft:Lcom/miui/gallery/ui/ResourceTexture;

.field private mArrowRight:Lcom/miui/gallery/ui/ResourceTexture;

.field private mArrowTop:Lcom/miui/gallery/ui/ResourceTexture;

.field private mHighlightRect:Landroid/graphics/RectF;

.field private mMovingEdges:I

.field private mReferenceX:F

.field private mReferenceY:F

.field private mTempPoint:Landroid/graphics/PointF;

.field private mTempRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/miui/gallery/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/CropView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f40

    const/high16 v1, 0x3e80

    .line 432
    iput-object p1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 422
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 423
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    .line 424
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 433
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    #getter for: Lcom/miui/gallery/ui/CropView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {p1}, Lcom/miui/gallery/ui/CropView;->access$700(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020037

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowLeft:Lcom/miui/gallery/ui/ResourceTexture;

    .line 434
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    #getter for: Lcom/miui/gallery/ui/CropView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {p1}, Lcom/miui/gallery/ui/CropView;->access$700(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020039

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowTop:Lcom/miui/gallery/ui/ResourceTexture;

    .line 435
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    #getter for: Lcom/miui/gallery/ui/CropView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {p1}, Lcom/miui/gallery/ui/CropView;->access$700(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020038

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowRight:Lcom/miui/gallery/ui/ResourceTexture;

    .line 436
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    #getter for: Lcom/miui/gallery/ui/CropView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {p1}, Lcom/miui/gallery/ui/CropView;->access$700(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020036

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowBottom:Lcom/miui/gallery/ui/ResourceTexture;

    .line 437
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private drawHighlightRectangle(Lcom/miui/gallery/ui/GLCanvas;Landroid/graphics/RectF;)V
    .locals 15
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 634
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v14

    .line 635
    .local v14, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/high16 v1, 0x4080

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    .line 636
    const/16 v1, 0xb20

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 638
    const/16 v1, 0xb90

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 639
    const/16 v1, 0x400

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 640
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 641
    const/16 v1, 0x207

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 643
    iget-object v1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mSpotlightRatioX:F
    invoke-static {v1}, Lcom/miui/gallery/ui/CropView;->access$1000(Lcom/miui/gallery/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mSpotlightRatioY:F
    invoke-static {v1}, Lcom/miui/gallery/ui/CropView;->access$1100(Lcom/miui/gallery/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 644
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/GLCanvas;->fillRect(FFFFI)V

    .line 645
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mPaint:Lcom/miui/gallery/ui/GLPaint;
    invoke-static {v1}, Lcom/miui/gallery/ui/CropView;->access$1200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/GLPaint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/GLCanvas;->drawRect(FFFFLcom/miui/gallery/ui/GLPaint;)V

    .line 660
    :goto_0
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 661
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e00

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 663
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->getHeight()I

    move-result v1

    int-to-float v10, v1

    const/high16 v11, -0x6000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/miui/gallery/ui/GLCanvas;->fillRect(FFFFI)V

    .line 665
    const/16 v1, 0xb90

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 666
    return-void

    .line 647
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mSpotlightRatioX:F
    invoke-static {v2}, Lcom/miui/gallery/ui/CropView;->access$1000(Lcom/miui/gallery/ui/CropView;)F

    move-result v2

    mul-float v4, v1, v2

    .line 648
    .local v4, sx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mSpotlightRatioY:F
    invoke-static {v2}, Lcom/miui/gallery/ui/CropView;->access$1100(Lcom/miui/gallery/ui/CropView;)F

    move-result v2

    mul-float v5, v1, v2

    .line 649
    .local v5, sy:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    .line 650
    .local v12, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    .line 652
    .local v13, cy:F
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v13, v1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/GLCanvas;->fillRect(FFFFI)V

    .line 653
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v13, v1

    iget-object v1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mPaint:Lcom/miui/gallery/ui/GLPaint;
    invoke-static {v1}, Lcom/miui/gallery/ui/CropView;->access$1200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/GLPaint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/GLCanvas;->drawRect(FFFFLcom/miui/gallery/ui/GLPaint;)V

    .line 654
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mPaint:Lcom/miui/gallery/ui/GLPaint;
    invoke-static {v1}, Lcom/miui/gallery/ui/CropView;->access$1200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/GLPaint;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/miui/gallery/ui/GLCanvas;->drawRect(FFFFLcom/miui/gallery/ui/GLPaint;)V

    .line 656
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 657
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    goto/16 :goto_0
.end method

.method private moveEdges(Landroid/view/MotionEvent;)V
    .locals 15
    .parameter "event"

    .prologue
    .line 462
    iget-object v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAnimation:Lcom/miui/gallery/ui/CropView$AnimationController;
    invoke-static {v12}, Lcom/miui/gallery/ui/CropView;->access$200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/CropView$AnimationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/gallery/ui/CropView$AnimationController;->getScale()F

    move-result v8

    .line 463
    .local v8, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceX:F

    sub-float/2addr v12, v13

    div-float/2addr v12, v8

    iget-object v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageWidth:I
    invoke-static {v13}, Lcom/miui/gallery/ui/CropView;->access$500(Lcom/miui/gallery/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v1, v12, v13

    .line 464
    .local v1, dx:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceY:F

    sub-float/2addr v12, v13

    div-float/2addr v12, v8

    iget-object v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageHeight:I
    invoke-static {v13}, Lcom/miui/gallery/ui/CropView;->access$600(Lcom/miui/gallery/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v2, v12, v13

    .line 465
    .local v2, dy:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iput v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 467
    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 469
    .local v6, r:Landroid/graphics/RectF;
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_1

    .line 470
    iget v12, v6, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    const/high16 v13, 0x3f80

    iget v14, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v14

    invoke-static {v1, v12, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v1

    .line 471
    iget v12, v6, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    const/high16 v13, 0x3f80

    iget v14, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v14

    invoke-static {v2, v12, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v2

    .line 472
    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v2

    iput v12, v6, Landroid/graphics/RectF;->top:F

    .line 473
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v12, v2

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 474
    iget v12, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v1

    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 475
    iget v12, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v1

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 530
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->invalidate()V

    .line 531
    return-void

    .line 477
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 478
    .local v5, point:Landroid/graphics/PointF;
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceX:F

    iget v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceY:F

    invoke-virtual {v5, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 479
    iget-object v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAnimation:Lcom/miui/gallery/ui/CropView$AnimationController;
    invoke-static {v12}, Lcom/miui/gallery/ui/CropView;->access$200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/CropView$AnimationController;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/miui/gallery/ui/CropView$AnimationController;->inverseMapPoint(Landroid/graphics/PointF;)V

    .line 480
    iget v12, v6, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageWidth:I
    invoke-static {v14}, Lcom/miui/gallery/ui/CropView;->access$500(Lcom/miui/gallery/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float v4, v12, v13

    .line 481
    .local v4, left:F
    iget v12, v6, Landroid/graphics/RectF;->right:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageWidth:I
    invoke-static {v14}, Lcom/miui/gallery/ui/CropView;->access$500(Lcom/miui/gallery/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v7, v12, v13

    .line 482
    .local v7, right:F
    iget v12, v6, Landroid/graphics/RectF;->top:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageHeight:I
    invoke-static {v14}, Lcom/miui/gallery/ui/CropView;->access$600(Lcom/miui/gallery/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float v10, v12, v13

    .line 483
    .local v10, top:F
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v13, 0x4180

    iget-object v14, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageHeight:I
    invoke-static {v14}, Lcom/miui/gallery/ui/CropView;->access$600(Lcom/miui/gallery/ui/CropView;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v0, v12, v13

    .line 484
    .local v0, bottom:F
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    .line 485
    iget v12, v5, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3f80

    invoke-static {v12, v4, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 487
    :cond_2
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    .line 488
    iget v12, v5, Landroid/graphics/PointF;->x:F

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 490
    :cond_3
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_4

    .line 491
    iget v12, v5, Landroid/graphics/PointF;->y:F

    const/4 v13, 0x0

    invoke-static {v12, v13, v0}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->top:F

    .line 493
    :cond_4
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_5

    .line 494
    iget v12, v5, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3f80

    invoke-static {v12, v10, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 496
    :cond_5
    iget-object v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAspectRatio:F
    invoke-static {v12}, Lcom/miui/gallery/ui/CropView;->access$800(Lcom/miui/gallery/ui/CropView;)F

    move-result v12

    const/high16 v13, -0x4080

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_0

    .line 497
    iget-object v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAspectRatio:F
    invoke-static {v12}, Lcom/miui/gallery/ui/CropView;->access$800(Lcom/miui/gallery/ui/CropView;)F

    move-result v12

    iget-object v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageHeight:I
    invoke-static {v13}, Lcom/miui/gallery/ui/CropView;->access$600(Lcom/miui/gallery/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageWidth:I
    invoke-static {v13}, Lcom/miui/gallery/ui/CropView;->access$500(Lcom/miui/gallery/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 498
    .local v9, targetRatio:F
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    cmpl-float v12, v12, v9

    if-lez v12, :cond_7

    .line 499
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v3, v12, v9

    .line 500
    .local v3, height:F
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_6

    .line 501
    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v3

    const/high16 v13, 0x3f80

    invoke-static {v12, v10, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 513
    .end local v3           #height:F
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    cmpl-float v12, v12, v9

    if-lez v12, :cond_a

    .line 514
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v11, v12, v9

    .line 515
    .local v11, width:F
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9

    .line 516
    iget v12, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v11

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 503
    .end local v11           #width:F
    .restart local v3       #height:F
    :cond_6
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v3

    const/4 v13, 0x0

    invoke-static {v12, v13, v0}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 506
    .end local v3           #height:F
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v11, v12, v9

    .line 507
    .restart local v11       #width:F
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    .line 508
    iget v12, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v11

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 510
    :cond_8
    iget v12, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v11

    const/high16 v13, 0x3f80

    invoke-static {v12, v4, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 518
    :cond_9
    iget v12, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v11

    const/high16 v13, 0x3f80

    invoke-static {v12, v4, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 521
    .end local v11           #width:F
    :cond_a
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v3, v12, v9

    .line 522
    .restart local v3       #height:F
    iget v12, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_b

    .line 523
    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v3

    const/high16 v13, 0x3f80

    invoke-static {v12, v10, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 525
    :cond_b
    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v3

    const/4 v13, 0x0

    invoke-static {v12, v13, v0}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v6, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0
.end method

.method private setMovingEdges(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 534
    iget-object v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAnimation:Lcom/miui/gallery/ui/CropView$AnimationController;
    invoke-static {v9}, Lcom/miui/gallery/ui/CropView;->access$200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/CropView$AnimationController;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v11}, Lcom/miui/gallery/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 535
    .local v4, r:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 536
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 538
    .local v8, y:F
    iget v9, v4, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    iget v9, v4, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v7, v9

    if-gez v9, :cond_1

    iget v9, v4, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    .line 540
    const/16 v9, 0x10

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget v9, v4, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v9, v8

    if-gtz v9, :cond_9

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_9

    const/4 v2, 0x1

    .line 546
    .local v2, inVerticalRange:Z
    :goto_1
    iget v9, v4, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x41f0

    sub-float/2addr v9, v10

    cmpg-float v9, v9, v7

    if-gtz v9, :cond_a

    iget v9, v4, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x41f0

    add-float/2addr v9, v10

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_a

    const/4 v1, 0x1

    .line 549
    .local v1, inHorizontalRange:Z
    :goto_2
    if-eqz v2, :cond_5

    .line 550
    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_b

    const/4 v3, 0x1

    .line 551
    .local v3, left:Z
    :goto_3
    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c

    const/4 v5, 0x1

    .line 552
    .local v5, right:Z
    :goto_4
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    .line 553
    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    const/4 v3, 0x1

    .line 554
    :goto_5
    if-nez v3, :cond_e

    const/4 v5, 0x1

    .line 556
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    iget v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 557
    :cond_3
    if-eqz v5, :cond_4

    iget v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 558
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAspectRatio:F
    invoke-static {v9}, Lcom/miui/gallery/ui/CropView;->access$800(Lcom/miui/gallery/ui/CropView;)F

    move-result v9

    const/high16 v10, -0x4080

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    if-eqz v1, :cond_5

    .line 559
    iget v10, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v9, v4, Landroid/graphics/RectF;->top:F

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v11

    const/high16 v11, 0x4000

    div-float/2addr v9, v11

    cmpl-float v9, v8, v9

    if-lez v9, :cond_f

    const/16 v9, 0x8

    :goto_7
    or-int/2addr v9, v10

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 563
    .end local v3           #left:Z
    .end local v5           #right:Z
    :cond_5
    if-eqz v1, :cond_0

    .line 564
    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_10

    const/4 v6, 0x1

    .line 565
    .local v6, top:Z
    :goto_8
    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41f0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_11

    const/4 v0, 0x1

    .line 566
    .local v0, bottom:Z
    :goto_9
    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 567
    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_12

    const/4 v6, 0x1

    .line 568
    :goto_a
    if-nez v6, :cond_13

    const/4 v0, 0x1

    .line 570
    :cond_6
    :goto_b
    if-eqz v6, :cond_7

    iget v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 571
    :cond_7
    if-eqz v0, :cond_8

    iget v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 572
    :cond_8
    iget-object v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAspectRatio:F
    invoke-static {v9}, Lcom/miui/gallery/ui/CropView;->access$800(Lcom/miui/gallery/ui/CropView;)F

    move-result v9

    const/high16 v10, -0x4080

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    if-eqz v2, :cond_0

    .line 573
    iget v10, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v11

    const/high16 v11, 0x4000

    div-float/2addr v9, v11

    cmpl-float v9, v7, v9

    if-lez v9, :cond_14

    const/4 v9, 0x4

    :goto_c
    or-int/2addr v9, v10

    iput v9, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    goto/16 :goto_0

    .line 544
    .end local v0           #bottom:Z
    .end local v1           #inHorizontalRange:Z
    .end local v2           #inVerticalRange:Z
    .end local v6           #top:Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 546
    .restart local v2       #inVerticalRange:Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 550
    .restart local v1       #inHorizontalRange:Z
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 551
    .restart local v3       #left:Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 553
    .restart local v5       #right:Z
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 554
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 559
    :cond_f
    const/4 v9, 0x2

    goto/16 :goto_7

    .line 564
    .end local v3           #left:Z
    .end local v5           #right:Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_8

    .line 565
    .restart local v6       #top:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9

    .line 567
    .restart local v0       #bottom:Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_a

    .line 568
    :cond_13
    const/4 v0, 0x0

    goto :goto_b

    .line 573
    :cond_14
    const/4 v9, 0x1

    goto :goto_c
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 600
    :goto_0
    return v2

    .line 583
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 585
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->setMovingEdges(Landroid/view/MotionEvent;)V

    .line 586
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->invalidate()V

    goto :goto_0

    .line 590
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->moveEdges(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 594
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 595
    iget-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAnimation:Lcom/miui/gallery/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/miui/gallery/ui/CropView;->access$200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/CropView$AnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 596
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->invalidate()V

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected renderBackground(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4000

    .line 605
    iget-object v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAnimation:Lcom/miui/gallery/ui/CropView$AnimationController;
    invoke-static {v4}, Lcom/miui/gallery/ui/CropView;->access$200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/CropView$AnimationController;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 606
    .local v3, r:Landroid/graphics/RectF;
    invoke-direct {p0, p1, v3}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->drawHighlightRectangle(Lcom/miui/gallery/ui/GLCanvas;Landroid/graphics/RectF;)V

    .line 608
    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float v1, v4, v7

    .line 609
    .local v1, centerY:F
    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float v0, v4, v7

    .line 610
    .local v0, centerX:F
    iget v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    if-nez v4, :cond_8

    const/4 v2, 0x1

    .line 611
    .local v2, notMoving:Z
    :goto_0
    iget v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    .line 612
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowRight:Lcom/miui/gallery/ui/ResourceTexture;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowRight:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowRight:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 616
    :cond_1
    iget v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    .line 617
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowLeft:Lcom/miui/gallery/ui/ResourceTexture;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowLeft:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowLeft:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 621
    :cond_3
    iget v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    if-eqz v2, :cond_5

    .line 622
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowTop:Lcom/miui/gallery/ui/ResourceTexture;

    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowTop:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowTop:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 626
    :cond_5
    iget v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    .line 627
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowBottom:Lcom/miui/gallery/ui/ResourceTexture;

    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowBottom:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mArrowBottom:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 631
    :cond_7
    return-void

    .line 610
    .end local v2           #notMoving:Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public setInitRectangle()V
    .locals 9

    .prologue
    const/high16 v7, 0x4000

    const/high16 v4, 0x3f80

    const/high16 v8, 0x3f00

    .line 440
    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAspectRatio:F
    invoke-static {v5}, Lcom/miui/gallery/ui/CropView;->access$800(Lcom/miui/gallery/ui/CropView;)F

    move-result v5

    const/high16 v6, -0x4080

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move v2, v4

    .line 444
    .local v2, targetRatio:F
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mIsInitFullSelection:Z
    invoke-static {v5}, Lcom/miui/gallery/ui/CropView;->access$900(Lcom/miui/gallery/ui/CropView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 445
    .local v1, selection:F
    :goto_1
    div-float v3, v1, v7

    .line 446
    .local v3, w:F
    div-float v0, v1, v7

    .line 447
    .local v0, h:F
    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 448
    div-float v0, v3, v2

    .line 452
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    sub-float v5, v8, v3

    sub-float v6, v8, v0

    add-float v7, v8, v3

    add-float/2addr v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 453
    return-void

    .line 440
    .end local v0           #h:F
    .end local v1           #selection:F
    .end local v2           #targetRatio:F
    .end local v3           #w:F
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAspectRatio:F
    invoke-static {v5}, Lcom/miui/gallery/ui/CropView;->access$800(Lcom/miui/gallery/ui/CropView;)F

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageHeight:I
    invoke-static {v6}, Lcom/miui/gallery/ui/CropView;->access$600(Lcom/miui/gallery/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mImageWidth:I
    invoke-static {v6}, Lcom/miui/gallery/ui/CropView;->access$500(Lcom/miui/gallery/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    goto :goto_0

    .line 444
    .restart local v2       #targetRatio:F
    :cond_1
    const v1, 0x3f19999a

    goto :goto_1

    .line 450
    .restart local v0       #h:F
    .restart local v1       #selection:F
    .restart local v3       #w:F
    :cond_2
    mul-float v3, v0, v2

    goto :goto_2
.end method

.method public setRectangle(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "faceRect"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 457
    iget-object v0, p0, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->this$0:Lcom/miui/gallery/ui/CropView;

    #getter for: Lcom/miui/gallery/ui/CropView;->mAnimation:Lcom/miui/gallery/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/miui/gallery/ui/CropView;->access$200(Lcom/miui/gallery/ui/CropView;)Lcom/miui/gallery/ui/CropView$AnimationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 458
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CropView$HighlightRectangle;->invalidate()V

    .line 459
    return-void
.end method
