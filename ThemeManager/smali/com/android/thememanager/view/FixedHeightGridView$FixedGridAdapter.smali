.class public abstract Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "FixedHeightGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/FixedHeightGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FixedGridAdapter"
.end annotation


# instance fields
.field mFixGridView:Lcom/android/thememanager/view/FixedHeightGridView;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/view/FixedHeightGridView;)V
    .locals 0
    .parameter "fg"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;->mFixGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract getChildView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;->getChildView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;->mFixGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v2}, Lcom/android/thememanager/view/FixedHeightGridView;->getChildMaxHeight()I

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 78
    .restart local v0       #layout:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;->mFixGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v2}, Lcom/android/thememanager/view/FixedHeightGridView;->getChildMaxHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-object v1
.end method
