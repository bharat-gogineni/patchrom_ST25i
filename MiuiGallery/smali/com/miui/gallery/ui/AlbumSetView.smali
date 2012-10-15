.class public Lcom/miui/gallery/ui/AlbumSetView;
.super Lcom/miui/gallery/ui/AlbumSetViewBase;
.source "AlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSetView$ModelListener;,
        Lcom/miui/gallery/ui/AlbumSetView$Model;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;)V
    .locals 0
    .parameter "activity"
    .parameter "drawer"
    .parameter "slotViewSpec"
    .parameter "labelSpec"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/AlbumSetViewBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;)V

    .line 29
    return-void
.end method

.method private getDataWindow()Lcom/miui/gallery/ui/AlbumSetSlidingWindow;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    check-cast v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    return-object v0
.end method

.method private updateNoRecentViewVisibility(I)V
    .locals 6
    .parameter "size"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 65
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f0b0010

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, albumSetView:Landroid/view/View;
    const v3, 0x7f0b0011

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, noRecentView:Landroid/view/View;
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeShowType(I)V
    .locals 1
    .parameter "showType"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->setScrollPosition(I)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->setSlotCount(I)Z

    .line 48
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getDataWindow()Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->changeShowType(I)V

    .line 50
    return-void
.end method

.method protected onSizeChanged(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetView;->updateNoRecentViewVisibility(I)V

    .line 80
    return-void
.end method

.method public setModel(Lcom/miui/gallery/ui/AlbumSetView$Model;I)V
    .locals 7
    .parameter "source"
    .parameter "albumSetShowType"

    .prologue
    .line 53
    new-instance v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    const/16 v5, 0x20

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetView$Model;II)V

    .line 56
    .local v0, dataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->initializeDataWindow(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)V

    .line 57
    return-void
.end method
