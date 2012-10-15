.class public Lcom/android/thememanager/ThemeResourceDetailActivity;
.super Lmiui/app/resourcebrowser/ResourceDetailActivity;
.source "ThemeResourceDetailActivity.java"


# instance fields
.field private mDetailFlag:J

.field private mResourceType:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeResourceDetailActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getApplyComponentFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/ThemeResourceDetailActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->pick()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->download()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->update()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->delete()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/thememanager/ThemeResourceDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->downloadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/thememanager/ThemeResourceDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->downloadFailed(Ljava/lang/String;)V

    return-void
.end method

.method private getApplyComponentFlags()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 254
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 255
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 257
    const-wide/16 v0, 0x1004

    .line 262
    :goto_0
    return-wide v0

    .line 259
    :cond_0
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    goto :goto_0

    .line 262
    :cond_1
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 52
    invoke-static {p1, p2, p0}, Lcom/android/thememanager/UIHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 53
    invoke-super {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getConfirmedDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "originDowloadUrl"

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, newFormatUrl:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ".mtz"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 235
    .local v0, lastDot:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .end local v0           #lastDot:I
    :goto_0
    return-object v1

    .line 237
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 119
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, name:Ljava/lang/String;
    const-string v1, "%s (%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFormatTitleBeforePlayingRingtone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    const v0, 0x7f0a0026

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getMusicPlayList(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getFormatTitleBeforePlayingRingtone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMusicPlayList(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/util/List;
    .locals 5
    .parameter "resourceItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 131
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getMusicPlayList(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/util/List;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPreviews()Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    :cond_2
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v0

    .line 137
    :cond_3
    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lmiui/app/resourcebrowser/view/ResourceOperationHandler;
    .locals 2
    .parameter "v"

    .prologue
    .line 145
    new-instance v1, Lcom/android/thememanager/ThemeResourceDetailActivity$2;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getRealResourceState()Lmiui/app/resourcebrowser/view/ResourceState;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/util/ThemeResourceState;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity$2;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity;Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/util/ThemeResourceState;)V

    return-object v1
.end method

.method protected getOperatorViewUIParameter()Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;
    .locals 5

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, para:Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 208
    :cond_0
    new-instance v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;

    .end local v0           #para:Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;
    invoke-direct {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;-><init>()V

    .line 209
    .restart local v0       #para:Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;
    const v1, 0x60201af

    iput v1, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->magicBtnSrcId:I

    .line 210
    const v1, 0x60201a9

    iput v1, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->deleteBtnSrcId:I

    .line 211
    const v1, 0x60201b7

    iput v1, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->operationViewBgId:I

    .line 213
    :cond_1
    return-object v0
.end method

.method protected getRealResourceState()Lmiui/app/resourcebrowser/view/ResourceState;
    .locals 7

    .prologue
    const-wide/16 v5, 0x1000

    .line 217
    new-instance v0, Lcom/android/thememanager/util/ThemeResourceState;

    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getRealResourceState()Lmiui/app/resourcebrowser/view/ResourceState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/thememanager/util/ThemeResourceState;-><init>(Lmiui/app/resourcebrowser/view/ResourceState;)V

    .line 218
    .local v0, ret:Lcom/android/thememanager/util/ThemeResourceState;
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    iput-wide v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    .line 219
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 220
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    iput-wide v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    .line 226
    :goto_0
    iget-object v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->downloadSavePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->convertPathForDataPartitionResource(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->downloadSavePath:Ljava/lang/String;

    .line 227
    return-object v0

    .line 221
    :cond_0
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 222
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    const-wide/16 v3, 0x4

    and-long/2addr v1, v3

    or-long/2addr v1, v5

    iput-wide v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    goto :goto_0

    .line 224
    :cond_1
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    iput-wide v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivitResultEvent(IILandroid/content/Intent;)V

    .line 245
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setResourceStatus()V

    .line 247
    iget-boolean v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mIsOnlineResourceSet:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->finish()V

    .line 251
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    const v0, 0x602002d

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setScreenViewBackground(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/thememanager/ThemeResourceDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$1;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "metaData"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    .line 60
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {p0, v0, v1}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 61
    return-void
.end method

.method protected responseToViewAction()Lmiui/app/resourcebrowser/resource/Resource;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, resource:Lmiui/app/resourcebrowser/resource/Resource;
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {p0, v2, v11, v3}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v1

    .line 69
    .local v1, themeInfo:Lcom/android/thememanager/ThemeInfo;
    if-eqz v1, :cond_0

    .line 70
    iget-wide v2, v1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getResourceTypeFromFlags(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    .line 71
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.android.thememanager.extra_theme_apply_flags"

    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, v1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {p0, v2, v11, v3}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v1

    .line 74
    new-instance v0, Lmiui/app/resourcebrowser/resource/Resource;

    .end local v0           #resource:Lmiui/app/resourcebrowser/resource/Resource;
    invoke-direct {v0}, Lmiui/app/resourcebrowser/resource/Resource;-><init>()V

    .line 75
    .restart local v0       #resource:Lmiui/app/resourcebrowser/resource/Resource;
    invoke-virtual {v1}, Lcom/android/thememanager/ThemeInfo;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/app/resourcebrowser/resource/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    const v2, 0x7f0a0035

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    :cond_1
    return-object v0
.end method

.method protected setResourceInfo()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 87
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResourceInfo()V

    .line 88
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v5, 0x8000

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/resourcebrowser/resource/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    .line 94
    .local v2, info:Landroid/os/Bundle;
    const-string v3, "modulesFlag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    .line 100
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, file:Ljava/io/File;
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mIsOnlineResourceSet:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    :cond_3
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v1           #file:Ljava/io/File;
    .end local v2           #info:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    iput-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    goto :goto_0
.end method
