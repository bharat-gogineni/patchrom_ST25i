.class public Lcom/miui/home/launcher/Background;
.super Landroid/view/View;
.source "Background.java"


# instance fields
.field mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field mNeedShowStatusbar:Z

.field mStatusbarDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private setNormalMode()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Background;->mNeedShowStatusbar:Z

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->invalidate()V

    .line 46
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    iget-boolean v0, p0, Lcom/miui/home/launcher/Background;->mNeedShowStatusbar:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mStatusbarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mStatusbarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mStatusbarDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mStatusbarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mStatusbarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/Background;->setNormalMode()V

    .line 38
    :cond_0
    return-void
.end method

.method public setEnterEditingMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iput-boolean v3, p0, Lcom/miui/home/launcher/Background;->mNeedShowStatusbar:Z

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->invalidate()V

    .line 64
    return-void
.end method

.method public setEnterPreviewMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    iput-boolean v3, p0, Lcom/miui/home/launcher/Background;->mNeedShowStatusbar:Z

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->invalidate()V

    .line 53
    return-void
.end method

.method public setExitEditingMode()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/Background;->setNormalMode()V

    .line 68
    return-void
.end method

.method public setExitPreviewMode()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/Background;->setNormalMode()V

    .line 57
    return-void
.end method
