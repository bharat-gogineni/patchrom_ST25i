.class Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
.super Ljava/lang/Object;
.source "WallpaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/WallpaperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperBitmap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;
    }
.end annotation


# instance fields
.field private bottom:I

.field private canvasVisiableArea:Landroid/graphics/Rect;

.field public determinateBitmap:Landroid/graphics/Bitmap;

.field private determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

.field private horizontalRatio:F

.field private id:I

.field private inderterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private inderterminateText:Ljava/lang/String;

.field private initialized:Z

.field private left:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private right:I

.field private scheduleHandler:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;

.field private showDeterminateFgImage:Z

.field public showIndeterminateBitmap:Z

.field final synthetic this$0:Lcom/android/thememanager/view/WallpaperView;

.field private top:I

.field private verticalRatio:F


# direct methods
.method public constructor <init>(Lcom/android/thememanager/view/WallpaperView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 325
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->mTmpRect:Landroid/graphics/Rect;

    .line 326
    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/thememanager/view/WallpaperView;->access$1000(Lcom/android/thememanager/view/WallpaperView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/thememanager/view/WallpaperView;->access$1100(Lcom/android/thememanager/view/WallpaperView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateText:Ljava/lang/String;

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showIndeterminateBitmap:Z

    .line 334
    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/thememanager/view/WallpaperView;->access$1200(Lcom/android/thememanager/view/WallpaperView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 335
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setBounds(IIII)V

    .line 336
    new-instance v0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;

    invoke-direct {v0, p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;-><init>(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)V

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->scheduleHandler:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;

    .line 337
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->scheduleHandler:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showDeterminateFgImage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showDeterminateFgImage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->id:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    iput p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->id:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontallyMoveOffset(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getDefaultLeftPostion()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->getShowingWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getDrawingArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 406
    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->init()V

    .line 407
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontalRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 408
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontalRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 409
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->verticalRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 410
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->verticalRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 411
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getShowingWidth()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$800(Lcom/android/thememanager/view/WallpaperView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private horizontallyMoveOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    .line 391
    iget v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->right:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->right:I

    .line 392
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    .line 394
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->initialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->getDefaultLeftPostion()I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    .line 365
    iget v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->getShowingWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->right:I

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->top:I

    .line 367
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$500(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->bottom:I

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->initialized:Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "visiableArea"

    .prologue
    const/4 v8, 0x0

    .line 415
    iput-object p2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    .line 416
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/android/thememanager/view/WallpaperView;->access$1300(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/android/thememanager/view/WallpaperView;->access$1300(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 422
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 423
    iget-boolean v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showDeterminateFgImage:Z

    if-eqz v6, :cond_2

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 426
    .local v2, dx:I
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 427
    .local v3, dy:I
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 428
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 454
    .end local v2           #dx:I
    .end local v3           #dy:I
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showDeterminateFgImage:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateFgDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    goto :goto_0

    .line 432
    :cond_3
    iget-boolean v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showIndeterminateBitmap:Z

    if-eqz v6, :cond_2

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 435
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 436
    .local v1, dw:I
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 437
    .local v0, dh:I
    const/16 v5, 0xf

    .line 439
    .local v5, th:I
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 440
    .restart local v2       #dx:I
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 442
    .restart local v3       #dy:I
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 443
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    int-to-float v6, v5

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 447
    .local v4, p:Landroid/graphics/Paint;
    const/high16 v6, 0x4190

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v6, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->inderterminateText:Ljava/lang/String;

    int-to-float v7, v0

    invoke-virtual {p1, v6, v8, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method public getThumbnailHeight()I
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$500(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v1}, Lcom/android/thememanager/view/WallpaperView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->initialized:Z

    .line 374
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    const/high16 v2, 0x3f80

    .line 342
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 345
    :cond_0
    iput v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontalRatio:F

    .line 346
    iput v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->verticalRatio:F

    .line 347
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$500(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 349
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontalRatio:F

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$500(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->verticalRatio:F

    .line 351
    const-string v0, "decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap size is not match: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needed: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v2}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I
    invoke-static {v2}, Lcom/android/thememanager/view/WallpaperView;->access$500(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    .line 356
    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->reset()V

    goto/16 :goto_0
.end method

.method public setDrawingArea(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 397
    iput p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    .line 398
    iput p2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->top:I

    .line 399
    iput p3, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->right:I

    .line 400
    iput p4, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->bottom:I

    .line 401
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    .line 402
    return-void
.end method

.method public udpateShowingArea(FZ)V
    .locals 4
    .parameter "movePercentFromCenter"
    .parameter "stopMove"

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v2}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v2

    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->getShowingWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float/2addr v3, p1

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 461
    .local v0, newLeft:I
    iget v1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->left:I

    .line 463
    .local v1, oldLeft:I
    if-eqz p2, :cond_0

    .line 464
    new-instance v2, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$1;-><init>(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)V

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$1;->start(I)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    sub-int v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontallyMoveOffset(I)V

    goto :goto_0
.end method
