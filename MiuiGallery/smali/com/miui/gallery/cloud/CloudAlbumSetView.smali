.class public Lcom/miui/gallery/cloud/CloudAlbumSetView;
.super Lcom/miui/gallery/ui/AlbumSetViewBase;
.source "CloudAlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;,
        Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;
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
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/AlbumSetViewBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onSizeChanged(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudAlbumSetView;->updateNoCloudViewVisibility(I)V

    .line 47
    return-void
.end method

.method public setModel(Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    const/16 v5, 0x20

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;I)V

    .line 40
    .local v0, dataWindow:Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudAlbumSetView;->initializeDataWindow(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)V

    .line 41
    return-void
.end method

.method public updateNoCloudViewVisibility(I)V
    .locals 8
    .parameter "size"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 51
    .local v0, activity:Landroid/app/Activity;
    const v5, 0x7f0b0027

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, noneCloudView:Landroid/view/View;
    const v5, 0x7f0b0010

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, albumSetView:Landroid/view/View;
    invoke-static {v0}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 62
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v5, 0x7f0b0028

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, noneTextView:Landroid/widget/TextView;
    const v5, 0x7f0b002a

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, modifyCloudSettingsButton:Landroid/widget/TextView;
    const v5, 0x7f0d00d0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    new-instance v5, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;

    invoke-direct {v5, p0, v0}, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;-><init>(Lcom/miui/gallery/cloud/CloudAlbumSetView;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 84
    .end local v2           #modifyCloudSettingsButton:Landroid/widget/TextView;
    .end local v4           #noneTextView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
