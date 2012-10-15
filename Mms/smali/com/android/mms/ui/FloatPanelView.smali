.class public Lcom/android/mms/ui/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# instance fields
.field private mIsArrowUp:Z

.field private mPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 46
    const v7, 0x7f100006

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 47
    .local v5, upArrow:Landroid/view/View;
    const v7, 0x7f100007

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, downArrow:Landroid/view/View;
    const v7, 0x7f100002

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 49
    .local v3, panel:Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 50
    :cond_0
    const-string v6, "FloatPanelView"

    const-string v7, "couldn\'t find view"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-boolean v7, p0, Lcom/android/mms/ui/FloatPanelView;->mIsArrowUp:Z

    if-eqz v7, :cond_3

    move-object v0, v5

    .line 57
    .local v0, arrow:Landroid/view/View;
    :goto_1
    iget-boolean v7, p0, Lcom/android/mms/ui/FloatPanelView;->mIsArrowUp:Z

    if-eqz v7, :cond_4

    move v4, v6

    .line 58
    .local v4, t:I
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget v7, p0, Lcom/android/mms/ui/FloatPanelView;->mPos:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 60
    .local v2, l:I
    if-gez v2, :cond_5

    .line 61
    const/4 v2, 0x0

    .line 64
    :cond_2
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v0, v2, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 66
    iget-boolean v7, p0, Lcom/android/mms/ui/FloatPanelView;->mIsArrowUp:Z

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v4, v6, -0x4

    .line 67
    :goto_4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .end local v0           #arrow:Landroid/view/View;
    .end local v2           #l:I
    .end local v4           #t:I
    :cond_3
    move-object v0, v1

    .line 56
    goto :goto_1

    .line 57
    .restart local v0       #arrow:Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/lit8 v4, v7, -0xa

    goto :goto_2

    .line 62
    .restart local v2       #l:I
    .restart local v4       #t:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, p4, v7

    if-le v2, v7, :cond_2

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p4, v7

    goto :goto_3

    :cond_6
    move v4, v6

    .line 66
    goto :goto_4
.end method

.method public setArrow(Z)V
    .locals 1
    .parameter "isUp"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/mms/ui/FloatPanelView;->mIsArrowUp:Z

    if-eq p1, v0, :cond_0

    .line 31
    iput-boolean p1, p0, Lcom/android/mms/ui/FloatPanelView;->mIsArrowUp:Z

    .line 32
    invoke-virtual {p0}, Lcom/android/mms/ui/FloatPanelView;->requestLayout()V

    .line 34
    :cond_0
    return-void
.end method

.method public setArrowPos(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/mms/ui/FloatPanelView;->mPos:I

    if-eq p1, v0, :cond_0

    .line 39
    iput p1, p0, Lcom/android/mms/ui/FloatPanelView;->mPos:I

    .line 40
    invoke-virtual {p0}, Lcom/android/mms/ui/FloatPanelView;->requestLayout()V

    .line 42
    :cond_0
    return-void
.end method
