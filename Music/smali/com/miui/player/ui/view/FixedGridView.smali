.class public Lcom/miui/player/ui/view/FixedGridView;
.super Landroid/widget/GridView;
.source "FixedGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/FixedGridView$FixedGridChildDecorator;
    }
.end annotation


# instance fields
.field private mChildMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    .line 28
    return-void
.end method


# virtual methods
.method public getChildMaxHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 39
    invoke-virtual {p0}, Lcom/miui/player/ui/view/FixedGridView;->updateGridViewHeight()V

    .line 40
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 32
    const v1, 0x1fffffff

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 33
    .local v0, expandSpec:I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 34
    return-void
.end method

.method public updateGridViewHeight()V
    .locals 6

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, tmpMaxHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/FixedGridView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/FixedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 46
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v4           #v:Landroid/view/View;
    :cond_0
    iget v5, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    if-eq v3, v5, :cond_1

    const/4 v0, 0x1

    .line 50
    .local v0, askReLayout:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 51
    iput v3, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    .line 52
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/miui/player/ui/view/FixedGridView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 53
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/FixedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 54
    .restart local v4       #v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 55
    .local v2, layout:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/miui/player/ui/view/FixedGridView;->mChildMaxHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    .end local v0           #askReLayout:Z
    .end local v2           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    .restart local v0       #askReLayout:Z
    :cond_2
    return-void
.end method
