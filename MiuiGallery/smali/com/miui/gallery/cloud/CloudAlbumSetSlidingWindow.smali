.class public Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;
.super Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;
.source "CloudAlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;I)V
    .locals 0
    .parameter "activity"
    .parameter "labelSpec"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;I)V

    .line 14
    invoke-interface {p4, p0}, Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;->setModelListener(Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;)V

    .line 15
    return-void
.end method

.method private notifySlotChanged(I)V
    .locals 0
    .parameter "slotIndex"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->handleSlotChanged(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 2
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mSize:I

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 24
    :cond_0
    iput p1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mSize:I

    .line 25
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    iget v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;->onSizeChanged(II)V

    .line 27
    :cond_1
    return-void
.end method

.method public onWindowContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CloudAlbumSetSlidingWindow;->notifySlotChanged(I)V

    goto :goto_0
.end method
