.class public Lcom/android/phone/MiuiAdaptiveTextView;
.super Landroid/widget/TextView;
.source "MiuiAdaptiveTextView.java"


# instance fields
.field private mCurrentWidth:I

.field private mHeight:I

.field private final mMaxTextSize:F

.field private final mMinTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    .line 24
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    .line 28
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMaxTextSize:F

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMinTextSize:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    .line 24
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    .line 35
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMaxTextSize:F

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMinTextSize:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    .line 24
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMaxTextSize:F

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMinTextSize:F

    .line 45
    return-void
.end method

.method private adaptTextSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    .line 76
    iget v4, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    .line 82
    iget v4, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMaxTextSize:F

    invoke-virtual {p0, v6, v4}, Lcom/android/phone/MiuiAdaptiveTextView;->setTextSize(IF)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, curText:Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMaxTextSize:F

    .line 86
    .local v2, textSize:F
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 87
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 89
    .local v3, widthText:I
    :goto_1
    iget v4, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    if-le v3, v4, :cond_2

    .line 91
    const/high16 v4, 0x3f80

    sub-float/2addr v2, v4

    .line 92
    iget v4, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMinTextSize:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    .line 93
    iget v2, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mMinTextSize:F

    .line 100
    :cond_2
    invoke-virtual {p0, v6, v2}, Lcom/android/phone/MiuiAdaptiveTextView;->setTextSize(IF)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 50
    iget v2, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    if-gez v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getHeight()I

    move-result v0

    .line 52
    .local v0, height:I
    if-lez v0, :cond_0

    .line 53
    iput v0, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 56
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiAdaptiveTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .end local v0           #height:I
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    if-eq v2, v3, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAdaptiveTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/phone/MiuiAdaptiveTextView;->mCurrentWidth:I

    if-eq v0, v1, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiAdaptiveTextView;->adaptTextSize()V

    .line 73
    :cond_1
    return-void
.end method
