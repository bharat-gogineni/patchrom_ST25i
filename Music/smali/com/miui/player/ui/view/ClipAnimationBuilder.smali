.class public Lcom/miui/player/ui/view/ClipAnimationBuilder;
.super Ljava/lang/Object;
.source "ClipAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;
    }
.end annotation


# instance fields
.field mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mBottom:I

.field private mHeightFrom:I

.field private mHeightTo:I

.field mTop:I

.field private mTopFrom:I

.field private mTopTo:I

.field final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mView:Landroid/view/View;

    .line 24
    return-void
.end method


# virtual methods
.method public createAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;

    iget-object v1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mView:Landroid/view/View;

    iget v2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mTopFrom:I

    iget v3, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mTopTo:I

    iget v4, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mHeightFrom:I

    iget v5, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mHeightTo:I

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/view/ClipAnimationBuilder$ClipAnimation;-><init>(Landroid/view/View;IIII)V

    return-object v0
.end method

.method public createAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;-><init>(Lcom/miui/player/ui/view/ClipAnimationBuilder;)V

    return-object v0
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 43
    return-void
.end method

.method public setHeight(II)V
    .locals 0
    .parameter "heightFrom"
    .parameter "heightTo"

    .prologue
    .line 27
    iput p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mHeightFrom:I

    .line 28
    iput p2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mHeightTo:I

    .line 29
    return-void
.end method

.method public setTop(II)V
    .locals 0
    .parameter "topFrom"
    .parameter "topTo"

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mTopFrom:I

    .line 33
    iput p2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mTopTo:I

    .line 34
    return-void
.end method

.method public setVerticalFrame(II)V
    .locals 0
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mTop:I

    .line 38
    iput p2, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mBottom:I

    .line 39
    return-void
.end method
