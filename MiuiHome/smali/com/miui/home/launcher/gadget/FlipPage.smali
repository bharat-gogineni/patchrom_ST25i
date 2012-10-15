.class public Lcom/miui/home/launcher/gadget/FlipPage;
.super Landroid/widget/FrameLayout;
.source "FlipPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/FlipPage$1;,
        Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;,
        Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;
    }
.end annotation


# static fields
.field private static FLIP_MATRIX_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_RESIDS:[Ljava/lang/String;

.field private static final PAGE_BACKGROUND:[Ljava/lang/String;


# instance fields
.field private mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

.field private mFlipMatrixArr:[Landroid/graphics/Matrix;

.field private mIsUpSide:Z

.field private mLeft:Landroid/widget/ImageView;

.field private mPageType:I

.field private mRight:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flip_up_0.png"

    aput-object v1, v0, v3

    const-string v1, "flip_down_0.png"

    aput-object v1, v0, v4

    const-string v1, "flip_up_1.png"

    aput-object v1, v0, v5

    const-string v1, "flip_down_1.png"

    aput-object v1, v0, v6

    const-string v1, "flip_up_2.png"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flip_down_2.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flip_up_3.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flip_down_3.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flip_up_4.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flip_down_4.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flip_up_5.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flip_down_5.png"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flip_up_6.png"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flip_down_6.png"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "flip_up_7.png"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "flip_down_7.png"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flip_up_8.png"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "flip_down_8.png"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "flip_up_9.png"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "flip_down_9.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/gadget/FlipPage;->NUM_RESIDS:[Ljava/lang/String;

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "flip_lu.9.png"

    aput-object v1, v0, v3

    const-string v1, "flip_ld.9.png"

    aput-object v1, v0, v4

    const-string v1, "flip_ru.9.png"

    aput-object v1, v0, v5

    const-string v1, "flip_rd.9.png"

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/home/launcher/gadget/FlipPage;->PAGE_BACKGROUND:[Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/FlipPage;->FLIP_MATRIX_CACHE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/FlipPage;->setAnimationCacheEnabled(Z)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/FlipPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mPageType:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/FlipPage;)[Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mFlipMatrixArr:[Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V
    .locals 6
    .parameter "cam"
    .parameter "matrix"
    .parameter "matOffset"
    .parameter "transX"
    .parameter "transY"
    .parameter "isOppo"

    .prologue
    const/4 v4, 0x0

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_3

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Camera;->save()V

    .line 154
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 155
    .local v1, m:Landroid/graphics/Matrix;
    const/high16 v5, 0x42b4

    if-eqz p5, :cond_0

    rsub-int/lit8 v3, v0, 0x1e

    :goto_1
    int-to-float v3, v3

    mul-float/2addr v3, v5

    const/high16 v5, 0x41f0

    div-float v2, v3, v5

    .line 156
    .local v2, r:F
    invoke-virtual {p0, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 157
    invoke-virtual {p0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 158
    int-to-float v5, p3

    if-eqz p5, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 159
    neg-int v3, p3

    int-to-float v5, v3

    if-eqz p5, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    add-int v3, p2, v0

    aput-object v1, p1, v3

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Camera;->restore()V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v2           #r:F
    :cond_0
    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    goto :goto_1

    .line 158
    .restart local v2       #r:F
    :cond_1
    neg-int v3, p4

    int-to-float v3, v3

    goto :goto_2

    .line 159
    :cond_2
    int-to-float v3, p4

    goto :goto_3

    .line 163
    .end local v1           #m:Landroid/graphics/Matrix;
    .end local v2           #r:F
    :cond_3
    return-void
.end method

.method private static getFlipMatrixArr(II)[Landroid/graphics/Matrix;
    .locals 9
    .parameter "w"
    .parameter "h"

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, key:Ljava/lang/String;
    sget-object v2, Lcom/miui/home/launcher/gadget/FlipPage;->FLIP_MATRIX_CACHE:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;

    .line 133
    .local v8, wrap:Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;
    if-eqz v8, :cond_0

    .line 134
    iget-object v1, v8, Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;->mMatrixArr:[Landroid/graphics/Matrix;

    .line 147
    :goto_0
    return-object v1

    .line 137
    :cond_0
    const/16 v2, 0x78

    new-array v1, v2, [Landroid/graphics/Matrix;

    .line 138
    .local v1, matrixArr:[Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 139
    .local v0, cam:Landroid/graphics/Camera;
    move v7, p0

    .line 140
    .local v7, transX:I
    move v4, p1

    .line 141
    .local v4, transY:I
    const/4 v2, 0x0

    neg-int v3, v7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 142
    const/16 v2, 0x1e

    neg-int v3, v7

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 143
    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 144
    const/16 v2, 0x5a

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/FlipPage;->computeMatirx(Landroid/graphics/Camera;[Landroid/graphics/Matrix;IIIZ)V

    .line 145
    sget-object v2, Lcom/miui/home/launcher/gadget/FlipPage;->FLIP_MATRIX_CACHE:Ljava/util/HashMap;

    new-instance v3, Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;

    invoke-direct {v3, v1}, Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;-><init>([Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setupAnimation(I)V
    .locals 5
    .parameter "flipDelay"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipPage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 83
    .local v1, w:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipPage;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 84
    .local v0, h:I
    invoke-static {v1, v0}, Lcom/miui/home/launcher/gadget/FlipPage;->getFlipMatrixArr(II)[Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mFlipMatrixArr:[Landroid/graphics/Matrix;

    .line 85
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;-><init>(Lcom/miui/home/launcher/gadget/FlipPage;Lcom/miui/home/launcher/gadget/FlipPage$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    .line 87
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;->setDuration(J)V

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;->setStartOffset(J)V

    .line 90
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mIsUpSide:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 91
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mAnimation:Lcom/miui/home/launcher/gadget/FlipPage$FlipAnimation;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/FlipPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    return-void

    .line 90
    :cond_1
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init(Lmiui/app/screenelement/ResourceManager;IIIII)V
    .locals 6
    .parameter "rm"
    .parameter "pageType"
    .parameter "number"
    .parameter "dist"
    .parameter "offset"
    .parameter "flipDelay"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    sget-object v1, Lcom/miui/home/launcher/gadget/FlipPage;->PAGE_BACKGROUND:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Lmiui/app/screenelement/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/FlipPage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iput p2, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mPageType:I

    .line 97
    iget v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mPageType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mPageType:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mIsUpSide:Z

    .line 98
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mIsUpSide:Z

    if-eqz v1, :cond_3

    move v0, v2

    .line 99
    .local v0, side:I
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mLeft:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/home/launcher/gadget/FlipPage;->NUM_RESIDS:[Ljava/lang/String;

    div-int/lit8 v5, p3, 0xa

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    aget-object v3, v3, v5

    invoke-virtual {p1, v3}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mRight:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/home/launcher/gadget/FlipPage;->NUM_RESIDS:[Ljava/lang/String;

    rem-int/lit8 v5, p3, 0xa

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    aget-object v3, v3, v5

    invoke-virtual {p1, v3}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mIsUpSide:Z

    if-eqz v1, :cond_5

    .line 102
    if-ne p5, p4, :cond_4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/FlipPage;->setVisibility(I)V

    .line 103
    if-eq p5, p4, :cond_1

    .line 104
    add-int/lit8 v1, p5, 0x1

    mul-int/2addr v1, p6

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/gadget/FlipPage;->setupAnimation(I)V

    .line 112
    :cond_1
    :goto_3
    return-void

    .end local v0           #side:I
    :cond_2
    move v1, v2

    .line 97
    goto :goto_0

    :cond_3
    move v0, v3

    .line 98
    goto :goto_1

    .restart local v0       #side:I
    :cond_4
    move v2, v4

    .line 102
    goto :goto_2

    .line 107
    :cond_5
    if-eqz p5, :cond_6

    if-ne p4, p5, :cond_7

    :cond_6
    move v4, v2

    :cond_7
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/FlipPage;->setVisibility(I)V

    .line 108
    if-eqz p5, :cond_1

    .line 109
    mul-int v1, p5, p6

    add-int/lit16 v1, v1, 0x12c

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/gadget/FlipPage;->setupAnimation(I)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/FlipPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mLeft:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/FlipPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/FlipPage;->mRight:Landroid/widget/ImageView;

    .line 118
    return-void
.end method
