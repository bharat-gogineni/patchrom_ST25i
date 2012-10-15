.class public Lcom/android/mms/ui/PesudoListView;
.super Landroid/view/ViewGroup;
.source "PesudoListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/PesudoListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/PesudoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .line 40
    .local v3, y:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 41
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    .line 42
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 44
    :cond_0
    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, p2, v4, p4, v5}, Landroid/view/View;->layout(IIII)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0           #child:Landroid/view/View;
    .end local v3           #y:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 29
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/mms/ui/PesudoListView;->measureChildren(II)V

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 31
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 32
    .local v0, heightSize:I
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/PesudoListView;->setMeasuredDimension(II)V

    .line 33
    return-void
.end method
