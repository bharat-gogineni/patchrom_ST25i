.class public Lcom/miui/player/ui/controller/GridController;
.super Ljava/lang/Object;
.source "GridController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/GridController$Position;,
        Lcom/miui/player/ui/controller/GridController$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final mColumnCount:I

.field private final mContainer:Landroid/widget/LinearLayout;

.field private mItemClickListener:Lcom/miui/player/ui/controller/GridController$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 0
    .parameter "container"
    .parameter "columnCount"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    .line 15
    iput p2, p0, Lcom/miui/player/ui/controller/GridController;->mColumnCount:I

    .line 16
    return-void
.end method

.method private addNewLinearLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    iget-object v2, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-object v0
.end method

.method private generateLastLinearLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    .line 50
    iget-object v3, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 52
    .local v0, cc:I
    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/miui/player/ui/controller/GridController;->addNewLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 63
    .local v2, ll:Landroid/widget/LinearLayout;
    :goto_0
    return-object v2

    .line 55
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 56
    .local v1, last:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/miui/player/ui/controller/GridController;->mColumnCount:I

    if-ge v3, v4, :cond_1

    .line 57
    move-object v2, v1

    .restart local v2       #ll:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 59
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/ui/controller/GridController;->addNewLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .restart local v2       #ll:Landroid/widget/LinearLayout;
    goto :goto_0
.end method


# virtual methods
.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public layoutViews(II)V
    .locals 6
    .parameter "layoutId"
    .parameter "count"

    .prologue
    .line 24
    iget-object v5, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 26
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/miui/player/ui/controller/GridController;->generateLastLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 28
    .local v2, ll:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    iget-object v5, p0, Lcom/miui/player/ui/controller/GridController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 31
    .local v3, row:I
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 33
    .local v0, col:I
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 34
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance v5, Lcom/miui/player/ui/controller/GridController$Position;

    invoke-direct {v5, v3, v0}, Lcom/miui/player/ui/controller/GridController$Position;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0           #col:I
    .end local v2           #ll:Landroid/widget/LinearLayout;
    .end local v3           #row:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/miui/player/ui/controller/GridController;->mItemClickListener:Lcom/miui/player/ui/controller/GridController$OnItemClickListener;

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/miui/player/ui/controller/GridController$Position;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 94
    check-cast v0, Lcom/miui/player/ui/controller/GridController$Position;

    .line 95
    .local v0, pos:Lcom/miui/player/ui/controller/GridController$Position;
    iget-object v2, p0, Lcom/miui/player/ui/controller/GridController;->mItemClickListener:Lcom/miui/player/ui/controller/GridController$OnItemClickListener;

    iget v3, v0, Lcom/miui/player/ui/controller/GridController$Position;->mRow:I

    iget v4, v0, Lcom/miui/player/ui/controller/GridController$Position;->mColumn:I

    invoke-interface {v2, p1, v3, v4}, Lcom/miui/player/ui/controller/GridController$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/miui/player/ui/controller/GridController$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/player/ui/controller/GridController;->mItemClickListener:Lcom/miui/player/ui/controller/GridController$OnItemClickListener;

    .line 80
    return-void
.end method
