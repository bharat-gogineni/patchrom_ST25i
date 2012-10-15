.class public Lcom/android/thememanager/OnlineThemeResourceListFragment;
.super Lmiui/app/resourcebrowser/OnlineResourceListFragment;
.source "OnlineThemeResourceListFragment.java"


# instance fields
.field protected mResourceType:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/app/resourcebrowser/OnlineResourceListFragment;-><init>()V

    return-void
.end method

.method private refreshCurrentUsingFlags()V
    .locals 5

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    iget-wide v3, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/thememanager/UIHelper;->computeCurrentUsingPath(Landroid/content/Context;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, usingPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1, v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->updateCurrentUsingPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->notifyDataSetChanged()V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method protected addMetaData(Landroid/os/Bundle;)V
    .locals 6
    .parameter "metaData"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceListFragment;->addMetaData(Landroid/os/Bundle;)V

    .line 56
    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v2, "miui.app.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, subpackage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v2, "miui.app.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/thememanager/OnlineThemeResourceAdapter;

    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/OnlineThemeResourceAdapter;-><init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getBatchOperationHandler()Lmiui/app/resourcebrowser/view/AudioBatchResourceHandler;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;

    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-wide v2, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/thememanager/util/ThemeAudioBatchHandler;-><init>(Lmiui/app/resourcebrowser/ResourceListFragment;Lmiui/app/resourcebrowser/ResourceAdapter;J)V

    return-object v0
.end method

.method protected bridge synthetic getBatchOperationHandler()Lmiui/app/resourcebrowser/view/BatchResourceHandler;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/thememanager/OnlineThemeResourceListFragment;->getBatchOperationHandler()Lmiui/app/resourcebrowser/view/AudioBatchResourceHandler;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lmiui/app/resourcebrowser/OnlineResourceListFragment;->onResume()V

    .line 30
    invoke-direct {p0}, Lcom/android/thememanager/OnlineThemeResourceListFragment;->refreshCurrentUsingFlags()V

    .line 31
    return-void
.end method

.method protected onVisiableChanged(Z)V
    .locals 0
    .parameter "visiableForUser"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceListFragment;->onVisiableChanged(Z)V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/android/thememanager/OnlineThemeResourceListFragment;->refreshCurrentUsingFlags()V

    .line 39
    :cond_0
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "metaData"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceListFragment;->pickMetaData(Landroid/os/Bundle;)V

    .line 18
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    .line 19
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 20
    return-void
.end method

.method protected requestCategories()V
    .locals 4

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    const-wide/32 v2, 0x20000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/thememanager/OnlineThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->getClockPhotoCategory(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/thememanager/OnlineThemeResourceListFragment;->setCategories(Ljava/util/List;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-super {p0}, Lmiui/app/resourcebrowser/OnlineResourceListFragment;->requestCategories()V

    goto :goto_0
.end method
