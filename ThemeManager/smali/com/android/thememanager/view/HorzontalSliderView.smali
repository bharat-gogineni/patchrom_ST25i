.class public Lcom/android/thememanager/view/HorzontalSliderView;
.super Landroid/widget/LinearLayout;
.source "HorzontalSliderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;
    }
.end annotation


# instance fields
.field private mMoveListener:Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;

.field private mSliderCenterPositionX:I

.field private mSliderDrawable:Landroid/graphics/drawable/Drawable;

.field private mSliderLeft:I

.field private mSliderMaxLeft:I

.field private mSliderMinLeft:I

.field private mSliderStartMoveX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/HorzontalSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/thememanager/view/HorzontalSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    .line 16
    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMinLeft:I

    .line 17
    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMaxLeft:I

    .line 19
    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderCenterPositionX:I

    .line 20
    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderStartMoveX:I

    .line 35
    sget-object v1, Landroid/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iget-object v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    iget-object v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HorzontalSliderView() must have android:src attribute."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    return-void
.end method

.method private getCenterPostionForSlider()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderCenterPositionX:I

    if-gez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMinLeft:I

    .line 65
    invoke-virtual {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMaxLeft:I

    .line 66
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMaxLeft:I

    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMinLeft:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderCenterPositionX:I

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderCenterPositionX:I

    return v0
.end method

.method private getSliderCanMoveDistance()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMaxLeft:I

    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMinLeft:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private inSliderDrawableArea(I)Z
    .locals 2
    .parameter "x"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    iget-object v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSliderPostion(IZ)V
    .locals 5
    .parameter "pointerXMoveDistance"
    .parameter "stopMove"

    .prologue
    .line 80
    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    .line 81
    .local v1, oldSliderLeft:I
    invoke-direct {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getCenterPostionForSlider()I

    move-result v2

    add-int v0, v2, p1

    .line 82
    .local v0, newSliderLeft:I
    iget v2, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMinLeft:I

    if-ge v0, v2, :cond_0

    .line 83
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMinLeft:I

    .line 85
    :cond_0
    iget v2, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMaxLeft:I

    if-le v0, v2, :cond_1

    .line 86
    iget v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderMaxLeft:I

    .line 89
    :cond_1
    if-eq v1, v0, :cond_2

    .line 90
    iput v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    .line 91
    invoke-virtual {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->invalidate()V

    .line 93
    iget-object v2, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mMoveListener:Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mMoveListener:Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;

    int-to-float v3, p1

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    invoke-direct {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getSliderCanMoveDistance()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3, p2}, Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;->movePercent(FZ)V

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    if-gez v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getCenterPostionForSlider()I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 57
    .local v0, saveCount:I
    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderLeft:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/thememanager/view/HorzontalSliderView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    iget-object v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 102
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return v3

    .line 104
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/thememanager/view/HorzontalSliderView;->inSliderDrawableArea(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iput v0, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderStartMoveX:I

    goto :goto_0

    .line 109
    :pswitch_1
    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderStartMoveX:I

    if-ltz v1, :cond_0

    .line 110
    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderStartMoveX:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1, v2}, Lcom/android/thememanager/view/HorzontalSliderView;->updateSliderPostion(IZ)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderStartMoveX:I

    if-ltz v1, :cond_0

    .line 115
    invoke-direct {p0, v2, v3}, Lcom/android/thememanager/view/HorzontalSliderView;->updateSliderPostion(IZ)V

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mSliderStartMoveX:I

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public regeisterMoveListener(Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/thememanager/view/HorzontalSliderView;->mMoveListener:Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;

    .line 46
    return-void
.end method
