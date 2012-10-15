.class public Lcom/miui/player/ui/view/LevelNinePathDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LevelNinePathDrawable.java"


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final MIN_WIDTH:I = 0xa


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 23
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->clearColorFilter()V

    .line 136
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 137
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/player/ui/view/LevelNinePathDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000

    div-float v1, v3, v4

    .line 28
    .local v1, scaleX:F
    invoke-virtual {p0}, Lcom/miui/player/ui/view/LevelNinePathDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 29
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v3, v1

    .line 30
    .local v2, width:F
    const/high16 v3, 0x4120

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 32
    iget-object v3, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    const/high16 v3, 0x3f80

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 36
    iget-object v3, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/miui/player/ui/view/LevelNinePathDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 37
    iget-object v3, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 161
    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 124
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 125
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->jumpToCurrentState()V

    .line 157
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/miui/player/ui/view/LevelNinePathDrawable;->invalidateSelf()V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 50
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setChangingConfigurations(I)V

    .line 118
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 119
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 130
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 55
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    .line 71
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 72
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 77
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 78
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter "stateSet"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/view/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setVisible(ZZ)Z

    .line 167
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
