.class public Lcom/miui/gallery/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/miui/gallery/app/GalleryActivity;


# instance fields
.field private mGLRootView:Lcom/miui/gallery/ui/GLRootView;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mPositionRepository:Lcom/miui/gallery/ui/PositionRepository;

.field private mStateManager:Lcom/miui/gallery/app/StateManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mPositionRepository:Lcom/miui/gallery/ui/PositionRepository;

    .line 49
    new-instance v0, Lcom/miui/gallery/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/AbstractGalleryActivity$1;-><init>(Lcom/miui/gallery/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAllAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    return-object v0
.end method

.method public getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public getDataManager()Lcom/miui/gallery/data/DataManager;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/miui/gallery/ui/GLRoot;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRecentAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v0

    return-object v0
.end method

.method public getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/miui/gallery/app/StateManager;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/miui/gallery/app/StateManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/miui/gallery/app/StateManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StateManager;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/miui/gallery/app/StateManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/miui/gallery/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/miui/gallery/util/ThreadPool;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mStateManager:Lcom/miui/gallery/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/app/Config$GlobalConfig;->refresh(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    invoke-static {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/bigscreen/ConnectControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->disconnect()V

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 173
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 176
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/app/StateManager;->keyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 182
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 185
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/app/StateManager;->keyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->pause()V

    .line 158
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->prepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->resume()V

    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->onResume()V

    .line 149
    return-void

    .line 146
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->lockRenderThread()V

    .line 78
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->onWindowFocusChanged(Z)V

    .line 192
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 130
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/GLRootView;

    iput-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity;->mGLRootView:Lcom/miui/gallery/ui/GLRootView;

    .line 131
    return-void
.end method
