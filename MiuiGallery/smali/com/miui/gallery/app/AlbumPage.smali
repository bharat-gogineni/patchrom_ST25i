.class public Lcom/miui/gallery/app/AlbumPage;
.super Lcom/miui/gallery/app/AlbumPageBase;
.source "AlbumPage.java"


# instance fields
.field private mSortBy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;-><init>()V

    return-void
.end method

.method private setSort(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter "item"
    .parameter "sortBy"

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 121
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    if-eq v0, p2, :cond_0

    .line 123
    iput p2, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    invoke-static {v0, v1}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumSortBy(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPage;->forceRefresh()V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method protected addAlbumSortMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->addAlbumSortMenu(Landroid/view/Menu;)V

    .line 59
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->addAlbumSortMenu(Landroid/view/Menu;)V

    .line 60
    return-void
.end method

.method protected createAlbumDataAdapter(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)Lcom/miui/gallery/app/AlbumDataAdapter;
    .locals 1
    .parameter "activity"
    .parameter "mediaSet"

    .prologue
    .line 53
    new-instance v0, Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/app/AlbumDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)V

    return-object v0
.end method

.method protected createAlbumView(Lcom/miui/gallery/ui/SlotView$Spec;)Lcom/miui/gallery/ui/AlbumViewBase;
    .locals 3
    .parameter "slotViewSpec"

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/ui/AlbumView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/gallery/ui/AlbumView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMenuResource()I
    .locals 1

    .prologue
    .line 63
    const/high16 v0, 0x7f10

    return v0
.end method

.method protected getStartClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/miui/gallery/app/PhotoPage;

    return-object v0
.end method

.method protected initializeData(Landroid/os/Bundle;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->initializeData(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->increaseAlbumVisitCount(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/app/AlbumPage;->setSort(Landroid/view/MenuItem;I)V

    goto :goto_0

    .line 105
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/AlbumUtils;->toggleHiddenAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/AlbumUtils;->toggleRecentAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x7f0b00a8 -> :sswitch_1
        0x7f0b00a9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 69
    iget-boolean v2, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_0

    .line 70
    const v2, 0x7f0b00a9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 72
    .local v1, setRecent:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const v2, 0x7f0d00b2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 77
    :goto_0
    const v2, 0x7f0b00a8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, setHidden:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->isHiddenAlbum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    const v2, 0x7f0d00b4

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 86
    .end local v0           #setHidden:Landroid/view/MenuItem;
    .end local v1           #setRecent:Landroid/view/MenuItem;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    .line 87
    iget v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    invoke-static {p1, v2}, Lcom/miui/gallery/util/AlbumUtils;->prepareOptionsMenu(Landroid/view/Menu;I)V

    .line 88
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 75
    .restart local v1       #setRecent:Landroid/view/MenuItem;
    :cond_1
    const v2, 0x7f0d00b1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 82
    .restart local v0       #setHidden:Landroid/view/MenuItem;
    :cond_2
    const v2, 0x7f0d00b3

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method
