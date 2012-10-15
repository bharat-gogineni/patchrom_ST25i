.class public Lcom/miui/gallery/cloud/CloudAlbumSetPage;
.super Lcom/miui/gallery/app/AlbumSetPageBase;
.source "CloudAlbumSetPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->initalCloud()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getCloudAlbumSetDataAdapter()Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    check-cast v0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    return-object v0
.end method

.method private getCloudAlbumSetView()Lcom/miui/gallery/cloud/CloudAlbumSetView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    check-cast v0, Lcom/miui/gallery/cloud/CloudAlbumSetView;

    return-object v0
.end method

.method private initalCloud()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 52
    const v4, 0x7f0b0023

    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v3

    .line 53
    .local v3, initView:Landroid/view/View;
    const v4, 0x7f0b0010

    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, albumSetView:Landroid/view/View;
    const v4, 0x7f0b0025

    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, initCloudText:Landroid/widget/TextView;
    const v4, 0x7f0b0026

    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, initCloudButton:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setVisibility(I)V

    .line 61
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->alertedOnlyInitialCloud()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d00c7

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d00cf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 73
    invoke-static {v7}, Lcom/miui/gallery/settings/PreferenceHelper;->setAlertedOnlyInitialCloud(Z)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v4, v7}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setVisibility(I)V

    .line 80
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lmiui/provider/GalleryCloudUtils;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    const v4, 0x7f0d00cb

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const v4, 0x7f0d00cd

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 86
    new-instance v4, Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;-><init>(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    const v4, 0x7f0d00cc

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 102
    const v4, 0x7f0d00ce

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 103
    new-instance v4, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;-><init>(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createAlbumSetView()V
    .locals 6

    .prologue
    .line 185
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    move-result-object v0

    .line 186
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    new-instance v1, Lcom/miui/gallery/cloud/CloudAlbumSetView;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v4, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget-object v5, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/cloud/CloudAlbumSetView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;)V

    iput-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    .line 188
    return-void
.end method

.method protected getNormalMenuId()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f100002

    return v0
.end method

.method protected getTitleViewHeight(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 137
    iget v0, p1, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->cloudTitleViewHeight:I

    return v0
.end method

.method protected handleNoneItem()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    const-string v1, "/com.miui.gallery.cloud.provider/all"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 169
    new-instance v0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    new-instance v1, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 172
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getCloudAlbumSetView()Lcom/miui/gallery/cloud/CloudAlbumSetView;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getCloudAlbumSetDataAdapter()Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/CloudAlbumSetView;->setModel(Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;)V

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 38
    const v0, 0x7f0b0034

    const v1, 0x7f04000c

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->inflatePageView(II)V

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->checkNetState(Landroid/content/Context;)Z

    .line 41
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/AlbumSetPageBase;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 200
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x7f0b00ab
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->initalCloud()V

    .line 47
    invoke-super {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->onResume()V

    .line 48
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 148
    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->savePositions(I[I)V

    .line 149
    const-string v4, "set-center"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->isGetAlbum()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 153
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "album-path"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 155
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 158
    :cond_1
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "media-name"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "cluster-menu"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/cloud/CloudAlbumPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method
