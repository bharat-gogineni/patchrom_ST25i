.class public Lcom/miui/gallery/ui/AlbumView;
.super Lcom/miui/gallery/ui/AlbumViewBase;
.source "AlbumView.java"


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "spec"
    .parameter "albumSetPath"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumViewBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public resume()V
    .locals 2

    .prologue
    .line 17
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumView;->mIsActive:Z

    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getAlbumSetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v0

    .line 19
    .local v0, sortBy:I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumView;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AlbumShowManager;->setSortBy(I)V

    .line 20
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->resume()V

    .line 21
    return-void
.end method
