.class public Lcom/android/thememanager/ResourceSearchActivity;
.super Lmiui/app/resourcebrowser/ResourceListActivity;
.source "ResourceSearchActivity.java"


# instance fields
.field protected mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

.field protected mBatchHandler:Lmiui/app/resourcebrowser/view/BatchResourceHandler;

.field protected mDisplayType:I

.field protected mKeyword:Ljava/lang/String;

.field protected mListView:Landroid/widget/ListView;

.field protected mMetaData:Landroid/os/Bundle;

.field protected mProgressBar:Landroid/view/View;

.field protected mResourceSetCategory:I

.field protected mResourceSetCode:Ljava/lang/String;

.field protected mResourceSetName:Ljava/lang/String;

.field protected mResourceSetPackage:Ljava/lang/String;

.field protected mResourceType:J

.field protected mSDCardMonitor:Lmiui/app/SDCardMonitor;

.field private mSearchView:Landroid/widget/ImageView;

.field protected mUsingPicker:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;-><init>()V

    return-void
.end method

.method private refreshCurrentUsingFlags()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceType:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/thememanager/UIHelper;->computeCurrentUsingPath(Landroid/content/Context;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, usingPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/ResourceSearchAdapter;->updateCurrentUsingPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v1}, Lcom/android/thememanager/ResourceSearchAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected addMetaData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "metaData"

    .prologue
    .line 174
    const-string v0, "miui.app.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    const-string v1, ".search"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected getAdapter()Lcom/android/thememanager/ResourceSearchAdapter;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/android/thememanager/ResourceSearchAdapter;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/ResourceSearchAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getBatchOperationHandler()Lmiui/app/resourcebrowser/view/BatchResourceHandler;
    .locals 4

    .prologue
    .line 193
    iget v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceSetCategory:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 194
    new-instance v0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    iget-wide v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceType:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/thememanager/util/ThemeAudioBatchHandler;-><init>(Lmiui/app/resourcebrowser/ResourceListActivity;Lmiui/app/resourcebrowser/ResourceAdapter;J)V

    .line 196
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-direct {v0, p0, v1}, Lmiui/app/resourcebrowser/view/BatchResourceHandler;-><init>(Lmiui/app/resourcebrowser/ResourceListActivity;Lmiui/app/resourcebrowser/ResourceAdapter;)V

    goto :goto_0
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getResourceDetailActivity()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "miui.app.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "miui.app.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isPicker()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->isPicker()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p0, p2, p3}, Lcom/android/thememanager/ResourceSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->finish()V

    .line 158
    :cond_0
    return-void
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/android/thememanager/ResourceSearchActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "query"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mKeyword:Ljava/lang/String;

    .line 59
    const-string v6, "app_data"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 60
    .local v1, appData:Landroid/os/Bundle;
    const-string v6, "META_DATA"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    .line 62
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v6}, Lcom/android/thememanager/ResourceSearchActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 63
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v6}, Lcom/android/thememanager/ResourceSearchActivity;->addMetaData(Landroid/os/Bundle;)V

    .line 65
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v7, "android.intent.extra.ringtone.TYPE"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 66
    .local v4, ringtoneType:I
    if-ltz v4, :cond_0

    .line 67
    invoke-static {p0, v4}, Lmiui/app/resourcebrowser/util/ResourceHelper;->setMusicVolumeType(Landroid/app/Activity;I)V

    .line 70
    :cond_0
    invoke-static {p0}, Lmiui/app/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lmiui/app/SDCardMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    .line 71
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    invoke-virtual {v6, p0}, Lmiui/app/SDCardMonitor;->addListener(Lmiui/app/SDCardMonitor$SDCardStatusListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 75
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v7, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceType:J

    .line 76
    iget-wide v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceType:J

    invoke-static {v6, v7}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v5

    .line 77
    .local v5, titleId:I
    iget-wide v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceType:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_1

    .line 78
    const v5, 0x7f0a0023

    .line 80
    :cond_1
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 82
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSearchView:Landroid/widget/ImageView;

    .line 83
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSearchView:Landroid/widget/ImageView;

    const v7, 0x7f020009

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSearchView:Landroid/widget/ImageView;

    const/16 v7, 0x12

    invoke-virtual {v6, v9, v9, v7, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 85
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSearchView:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/thememanager/ResourceSearchActivity$1;

    invoke-direct {v7, p0}, Lcom/android/thememanager/ResourceSearchActivity$1;-><init>(Lcom/android/thememanager/ResourceSearchActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 92
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 93
    .local v3, params:Landroid/app/ActionBar$LayoutParams;
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 94
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->setupUI()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mBatchHandler:Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    sget-object v1, Lmiui/app/resourcebrowser/view/BatchResourceHandler$ViewState;->DESTYOY:Lmiui/app/resourcebrowser/view/BatchResourceHandler$ViewState;

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/view/BatchResourceHandler;->viewStateChanged(Lmiui/app/resourcebrowser/view/BatchResourceHandler$ViewState;)V

    .line 146
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    invoke-virtual {v0, p0}, Lmiui/app/SDCardMonitor;->removeListener(Lmiui/app/SDCardMonitor$SDCardStatusListener;)V

    .line 149
    :cond_0
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->finish()V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mBatchHandler:Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    sget-object v1, Lmiui/app/resourcebrowser/view/BatchResourceHandler$ViewState;->PAUSE:Lmiui/app/resourcebrowser/view/BatchResourceHandler$ViewState;

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/view/BatchResourceHandler;->viewStateChanged(Lmiui/app/resourcebrowser/view/BatchResourceHandler$ViewState;)V

    .line 133
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onPause()V

    .line 134
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ResourceSearchActivity;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Lmiui/app/resourcebrowser/resource/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ResourceSearchActivity;->onProgressUpdate([Lmiui/app/resourcebrowser/resource/Resource;)V

    return-void
.end method

.method public varargs onProgressUpdate([Lmiui/app/resourcebrowser/resource/Resource;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 240
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onResume()V

    .line 117
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "miui.app.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, folders:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 119
    aget-object v2, v0, v1

    invoke-static {v2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getFolderInfoCache(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/thememanager/ResourceSearchAdapter;->setKeyword(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v2, v5}, Lcom/android/thememanager/ResourceSearchAdapter;->clearResourceSet(I)V

    .line 123
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v2, v4}, Lcom/android/thememanager/ResourceSearchAdapter;->setForceToLoadData(Z)V

    .line 124
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v2, v4}, Lcom/android/thememanager/ResourceSearchAdapter;->clearResourceSet(I)V

    .line 125
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v2, v5}, Lcom/android/thememanager/ResourceSearchAdapter;->loadData(I)V

    .line 126
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v2, v5, v4, v4}, Lcom/android/thememanager/ResourceSearchAdapter;->loadMoreData(ZZI)V

    .line 127
    invoke-direct {p0}, Lcom/android/thememanager/ResourceSearchActivity;->refreshCurrentUsingFlags()V

    .line 128
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, appData:Landroid/os/Bundle;
    const-string v1, "META_DATA"

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 256
    const-string v1, "META_DATA_FOR_LOCAL"

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 257
    const-string v1, "META_DATA_FOR_ONLINE"

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/android/thememanager/ResourceSearchActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 259
    const/4 v1, 0x1

    return v1
.end method

.method public onStatusChanged(Z)V
    .locals 0
    .parameter "mount"

    .prologue
    .line 249
    invoke-static {p0}, Lmiui/app/resourcebrowser/util/ResourceHelper;->exit(Landroid/app/Activity;)V

    .line 250
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v0}, Lcom/android/thememanager/ResourceSearchAdapter;->onStop()V

    .line 139
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onStop()V

    .line 140
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 1
    .parameter "metaData"

    .prologue
    .line 165
    const-string v0, "miui.app.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceSetPackage:Ljava/lang/String;

    .line 166
    const-string v0, "miui.app.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceSetCode:Ljava/lang/String;

    .line 167
    const-string v0, "miui.app.resourcebrowser.RESOURCE_SET_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceSetName:Ljava/lang/String;

    .line 168
    const-string v0, "miui.app.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mResourceSetCategory:I

    .line 169
    const-string v0, "miui.app.resourcebrowser.DISPLAY_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mDisplayType:I

    .line 170
    const-string v0, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/thememanager/ResourceSearchActivity;->mUsingPicker:Z

    .line 171
    return-void
.end method

.method protected setupUI()V
    .locals 3

    .prologue
    .line 178
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/android/thememanager/ResourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mListView:Landroid/widget/ListView;

    .line 179
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, header:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->getAdapter()Lcom/android/thememanager/ResourceSearchAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    .line 184
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->getBatchOperationHandler()Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mBatchHandler:Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    .line 185
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mBatchHandler:Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    invoke-virtual {v1, v2}, Lcom/android/thememanager/ResourceSearchAdapter;->setResourceBatchHandler(Lmiui/app/resourcebrowser/view/BatchResourceHandler;)V

    .line 186
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mAdapter:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 189
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/thememanager/ResourceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/ResourceSearchActivity;->mProgressBar:Landroid/view/View;

    .line 190
    return-void
.end method

.method public startDetailActivityForResource(Landroid/util/Pair;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, position:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchActivity;->getResourceDetailActivity()Landroid/util/Pair;

    move-result-object v0

    .line 206
    .local v0, activityClass:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v4, "miui.app.resourcebrowser.RESOURCE_INDEX"

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v4, "miui.app.resourcebrowser.RESOURCE_GROUP"

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "miui.app.resourcebrowser.LIST_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 215
    :cond_0
    const-string v2, "META_DATA"

    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/thememanager/ResourceSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void
.end method
