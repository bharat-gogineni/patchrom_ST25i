.class public Lcom/miui/player/ui/view/FixedGridView$FixedGridChildDecorator;
.super Ljava/lang/Object;
.source "FixedGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/FixedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedGridChildDecorator"
.end annotation


# instance fields
.field private final mFixedGridView:Lcom/miui/player/ui/view/FixedGridView;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/view/FixedGridView;)V
    .locals 0
    .parameter "fgv"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/miui/player/ui/view/FixedGridView$FixedGridChildDecorator;->mFixedGridView:Lcom/miui/player/ui/view/FixedGridView;

    .line 71
    return-void
.end method


# virtual methods
.method public decorate(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "v"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/miui/player/ui/view/FixedGridView$FixedGridChildDecorator;->mFixedGridView:Lcom/miui/player/ui/view/FixedGridView;

    invoke-virtual {v1}, Lcom/miui/player/ui/view/FixedGridView;->getChildMaxHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 79
    .restart local v0       #layout:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/view/FixedGridView$FixedGridChildDecorator;->mFixedGridView:Lcom/miui/player/ui/view/FixedGridView;

    invoke-virtual {v1}, Lcom/miui/player/ui/view/FixedGridView;->getChildMaxHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-object p1
.end method
