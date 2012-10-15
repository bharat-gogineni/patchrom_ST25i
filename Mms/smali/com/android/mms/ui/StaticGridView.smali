.class public Lcom/android/mms/ui/StaticGridView;
.super Landroid/view/ViewGroup;
.source "StaticGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/StaticGridView$Initializer;
    }
.end annotation


# instance fields
.field private mBottom:I

.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mInitializer:Lcom/android/mms/ui/StaticGridView$Initializer;

.field private mIsInitialized:Z

.field private mLeft:I

.field private mRight:I

.field private mRowCount:I

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/StaticGridView;->set(IIII)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/StaticGridView;->setDrawingCacheEnabled(Z)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/StaticGridView;->setWillNotDraw(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method protected doLayout(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/StaticGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/StaticGridView;->layoutChildByIndex(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 80
    iget v2, p0, Lcom/android/mms/ui/StaticGridView;->mColumnCount:I

    div-int v1, p1, v2

    .line 81
    .local v1, rowIndex:I
    iget v2, p0, Lcom/android/mms/ui/StaticGridView;->mColumnCount:I

    rem-int v0, p1, v2

    .line 82
    .local v0, columnIndex:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/StaticGridView;->mChildWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/android/mms/ui/StaticGridView;->mChildHeight:I

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/android/mms/ui/StaticGridView;->mChildWidth:I

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/StaticGridView;->mChildHeight:I

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 87
    return-void
.end method

.method measureDimension(II)I
    .locals 1
    .parameter "measureSpec"
    .parameter "contentDimension"

    .prologue
    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 76
    const/4 p2, 0x0

    .end local p2
    :goto_0
    :sswitch_0
    return p2

    .line 72
    .restart local p2
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    .line 74
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4000

    .line 113
    iget-boolean v0, p0, Lcom/android/mms/ui/StaticGridView;->mIsInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/StaticGridView;->mInitializer:Lcom/android/mms/ui/StaticGridView$Initializer;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/StaticGridView;->mIsInitialized:Z

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/StaticGridView;->mInitializer:Lcom/android/mms/ui/StaticGridView$Initializer;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/StaticGridView$Initializer;->onInitialize(Lcom/android/mms/ui/StaticGridView;)V

    .line 118
    iget v0, p0, Lcom/android/mms/ui/StaticGridView;->mChildWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/StaticGridView;->mChildHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/StaticGridView;->measureChildren(II)V

    .line 121
    iget v0, p0, Lcom/android/mms/ui/StaticGridView;->mLeft:I

    iget v1, p0, Lcom/android/mms/ui/StaticGridView;->mTop:I

    iget v2, p0, Lcom/android/mms/ui/StaticGridView;->mRight:I

    iget v3, p0, Lcom/android/mms/ui/StaticGridView;->mBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/StaticGridView;->doLayout(IIII)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/mms/ui/StaticGridView;->mIsInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/StaticGridView;->mInitializer:Lcom/android/mms/ui/StaticGridView$Initializer;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/StaticGridView;->doLayout(IIII)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_1
    iput p2, p0, Lcom/android/mms/ui/StaticGridView;->mLeft:I

    .line 95
    iput p3, p0, Lcom/android/mms/ui/StaticGridView;->mTop:I

    .line 96
    iput p4, p0, Lcom/android/mms/ui/StaticGridView;->mRight:I

    .line 97
    iput p5, p0, Lcom/android/mms/ui/StaticGridView;->mBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 59
    iget v0, p0, Lcom/android/mms/ui/StaticGridView;->mChildWidth:I

    iget v1, p0, Lcom/android/mms/ui/StaticGridView;->mColumnCount:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/StaticGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/StaticGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/mms/ui/StaticGridView;->mRowCount:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/mms/ui/StaticGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/StaticGridView;->setMeasuredDimension(II)V

    .line 62
    iget v0, p0, Lcom/android/mms/ui/StaticGridView;->mChildWidth:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/StaticGridView;->mChildHeight:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/StaticGridView;->measureChildren(II)V

    .line 65
    return-void
.end method

.method public set(IIII)V
    .locals 2
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/StaticGridView;->mRowCount:I

    .line 43
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/StaticGridView;->mColumnCount:I

    .line 44
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/StaticGridView;->mChildHeight:I

    .line 45
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/StaticGridView;->mChildWidth:I

    .line 46
    return-void
.end method

.method public setInitializer(Lcom/android/mms/ui/StaticGridView$Initializer;)V
    .locals 0
    .parameter "initializer"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/StaticGridView;->mInitializer:Lcom/android/mms/ui/StaticGridView$Initializer;

    .line 55
    return-void
.end method
