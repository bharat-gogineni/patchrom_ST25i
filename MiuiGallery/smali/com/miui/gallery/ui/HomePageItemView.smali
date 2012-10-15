.class public Lcom/miui/gallery/ui/HomePageItemView;
.super Landroid/widget/FrameLayout;
.source "HomePageItemView.java"


# instance fields
.field private mClickableRegion:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public initialize(I)V
    .locals 1
    .parameter "itemTextId"

    .prologue
    .line 39
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomePageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageItemView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040017

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const v1, 0x7f0b0065

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/HomePageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/HomePageItemView;->mClickableRegion:Landroid/view/View;

    goto :goto_0
.end method

.method public setItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageItemView;->mClickableRegion:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageItemView;->mClickableRegion:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    return-void
.end method

.method public setItemOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageItemView;->mClickableRegion:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
