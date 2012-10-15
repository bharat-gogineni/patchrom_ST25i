.class Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;
.super Landroid/view/animation/Animation;
.source "ClipAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/ClipAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClipAnimation"
.end annotation


# instance fields
.field private final mHeightDelta:I

.field private final mHeightFrom:I

.field private final mTopDelta:I

.field private final mTopFrom:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 1
    .parameter "v"
    .parameter "topFrom"
    .parameter "topTo"
    .parameter "heightFrom"
    .parameter "heightTo"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mView:Landroid/view/View;

    .line 92
    iput p2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mTopFrom:I

    .line 93
    sub-int v0, p3, p2

    iput v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mTopDelta:I

    .line 95
    iput p4, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mHeightFrom:I

    .line 96
    sub-int v0, p5, p4

    iput v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mHeightDelta:I

    .line 97
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v4, 0x3f00

    .line 101
    iget v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mTopFrom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mTopDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 102
    .local v1, top:I
    iget v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mHeightFrom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mHeightDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 104
    .local v0, bottom:I
    iget-object v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTop(I)V

    .line 105
    iget-object v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBottom(I)V

    .line 106
    iget v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mHeightDelta:I

    if-lez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 110
    :cond_0
    return-void
.end method
