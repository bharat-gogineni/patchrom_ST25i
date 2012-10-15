.class public Lcom/android/mms/ui/ShrinkableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ShrinkableLinearLayout.java"


# instance fields
.field private mShrinkableChildIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ShrinkableLinearLayout;->mShrinkableChildIndex:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v2, p0, Lcom/android/mms/ui/ShrinkableLinearLayout;->mShrinkableChildIndex:I

    .line 25
    sget-object v1, Lcom/android/mms/R$styleable;->ShrinkableLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ShrinkableLinearLayout;->mShrinkableChildIndex:I

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ShrinkableLinearLayout;->shrinkIfNecessary(II)V

    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 60
    return-void
.end method

.method shrinkIfNecessary(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 31
    iget v5, p0, Lcom/android/mms/ui/ShrinkableLinearLayout;->mShrinkableChildIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ShrinkableLinearLayout;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 36
    .local v0, mode:I
    if-eqz v0, :cond_0

    .line 39
    iget v5, p0, Lcom/android/mms/ui/ShrinkableLinearLayout;->mShrinkableChildIndex:I

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ShrinkableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, shrinkee:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    const/4 v5, 0x0

    invoke-super {p0, v5, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 43
    .local v2, shrinkeeWidth:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ShrinkableLinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 45
    .local v3, totalWidth:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 47
    .local v4, widthLimit:I
    if-ge v4, v3, :cond_0

    .line 48
    sub-int v5, v3, v4

    sub-int/2addr v2, v5

    .line 49
    if-gez v2, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 52
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method
