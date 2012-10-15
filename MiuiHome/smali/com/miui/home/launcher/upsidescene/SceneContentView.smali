.class public Lcom/miui/home/launcher/upsidescene/SceneContentView;
.super Landroid/widget/FrameLayout;
.source "SceneContentView.java"


# instance fields
.field private mOverWidth:I

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getOverWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setOverWidth(I)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getOverWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mOverWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mOverWidth:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    .line 41
    return-void
.end method

.method public setOverWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 48
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mOverWidth:I

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->animatingRefresh()V

    .line 51
    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter "sceneScreen"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneContentView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 45
    return-void
.end method

.method public widthTo(I)V
    .locals 4
    .parameter "targetWidth"

    .prologue
    .line 58
    const-string v1, "overWidth"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 59
    .local v0, animator:Landroid/animation/Animator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 61
    return-void
.end method
