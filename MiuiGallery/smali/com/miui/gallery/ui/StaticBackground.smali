.class public Lcom/miui/gallery/ui/StaticBackground;
.super Lcom/miui/gallery/ui/GLView;
.source "StaticBackground.java"


# instance fields
.field private mBackground:Lcom/miui/gallery/ui/BasicTexture;

.field private mContext:Landroid/content/Context;

.field private mIsLandscape:Z

.field private mLandscapeResource:I

.field private mPortraitResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mIsLandscape:Z

    .line 31
    iput-object p1, p0, Lcom/miui/gallery/ui/StaticBackground;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private setOrientation(Z)V
    .locals 3
    .parameter "isLandscape"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mIsLandscape:Z

    if-ne v0, p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/StaticBackground;->mIsLandscape:Z

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BasicTexture;->recycle()V

    .line 44
    :cond_1
    new-instance v1, Lcom/miui/gallery/ui/NinePatchTexture;

    iget-object v2, p0, Lcom/miui/gallery/ui/StaticBackground;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mIsLandscape:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mLandscapeResource:I

    :goto_1
    invoke-direct {v1, v2, v0}, Lcom/miui/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->invalidate()V

    goto :goto_0

    .line 44
    :cond_2
    iget v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mPortraitResource:I

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/StaticBackground;->setOrientation(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/BasicTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, -0x100

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_0
.end method

.method public setImage(II)V
    .locals 3
    .parameter "landscapeId"
    .parameter "portraitId"

    .prologue
    .line 50
    iput p1, p0, Lcom/miui/gallery/ui/StaticBackground;->mLandscapeResource:I

    .line 51
    iput p2, p0, Lcom/miui/gallery/ui/StaticBackground;->mPortraitResource:I

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BasicTexture;->recycle()V

    .line 54
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/NinePatchTexture;

    iget-object v1, p0, Lcom/miui/gallery/ui/StaticBackground;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/gallery/ui/StaticBackground;->mIsLandscape:Z

    if-eqz v2, :cond_1

    .end local p1
    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/StaticBackground;->mBackground:Lcom/miui/gallery/ui/BasicTexture;

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/ui/StaticBackground;->invalidate()V

    .line 57
    return-void

    .restart local p1
    :cond_1
    move p1, p2

    .line 54
    goto :goto_0
.end method
