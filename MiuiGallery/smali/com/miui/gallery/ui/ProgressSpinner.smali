.class public Lcom/miui/gallery/ui/ProgressSpinner;
.super Ljava/lang/Object;
.source "ProgressSpinner.java"


# static fields
.field private static ROTATE_SPEED_INNER:F

.field private static ROTATE_SPEED_OUTER:F


# instance fields
.field private mAnimationTimestamp:J

.field private final mHeight:I

.field private final mInner:Lcom/miui/gallery/ui/ResourceTexture;

.field private mInnerDegree:F

.field private final mOuter:Lcom/miui/gallery/ui/ResourceTexture;

.field private mOuterDegree:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x3e9dfd13

    sput v0, Lcom/miui/gallery/ui/ProgressSpinner;->ROTATE_SPEED_OUTER:F

    .line 25
    const v0, -0x41ad593c

    sput v0, Lcom/miui/gallery/ui/ProgressSpinner;->ROTATE_SPEED_INNER:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    .line 32
    iput v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 36
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f0200d9

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuter:Lcom/miui/gallery/ui/ResourceTexture;

    .line 37
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f0200d8

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInner:Lcom/miui/gallery/ui/ResourceTexture;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuter:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInner:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mWidth:I

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuter:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInner:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mHeight:I

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x43b4

    const/4 v6, 0x0

    .line 58
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, now:J
    iget-wide v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 60
    :cond_0
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    iget-wide v3, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    sget v4, Lcom/miui/gallery/ui/ProgressSpinner;->ROTATE_SPEED_OUTER:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    .line 61
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    iget-wide v3, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    sget v4, Lcom/miui/gallery/ui/ProgressSpinner;->ROTATE_SPEED_INNER:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    .line 63
    iput-wide v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 66
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    sub-float/2addr v2, v7

    iput v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    .line 67
    :cond_1
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    add-float/2addr v2, v7

    iput v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    .line 69
    :cond_2
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 71
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-interface {p1, v2, v3, v6}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 72
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    invoke-interface {p1, v2, v6, v6, v8}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuter:Lcom/miui/gallery/ui/ResourceTexture;

    iget-object v3, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuter:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuter:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 74
    iget v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    iget v3, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    sub-float/2addr v2, v3

    invoke-interface {p1, v2, v6, v6, v8}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 75
    iget-object v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInner:Lcom/miui/gallery/ui/ResourceTexture;

    iget-object v3, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInner:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInner:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 76
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 77
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mWidth:I

    return v0
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mAnimationTimestamp:J

    .line 53
    iput v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mOuterDegree:F

    .line 54
    iput v2, p0, Lcom/miui/gallery/ui/ProgressSpinner;->mInnerDegree:F

    .line 55
    return-void
.end method
