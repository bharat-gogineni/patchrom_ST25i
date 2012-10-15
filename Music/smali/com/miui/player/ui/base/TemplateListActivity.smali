.class public abstract Lcom/miui/player/ui/base/TemplateListActivity;
.super Landroid/app/Activity;
.source "TemplateListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;,
        Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;,
        Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;,
        Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;
    }
.end annotation


# instance fields
.field private final mDatabaseChecker:Lcom/miui/player/util/LoopChecker$CheckAction;

.field protected mFolderUpdateVersion:I

.field private final mKillProcessReceiver:Landroid/content/BroadcastReceiver;

.field private final mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mPaused:Z

.field protected mRecoverVersion:I

.field final mRescanHandler:Landroid/os/Handler;

.field private final mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

.field private mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    .line 61
    iput v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecoverVersion:I

    .line 62
    iput v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mFolderUpdateVersion:I

    .line 201
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$1;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mKillProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    .line 268
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$2;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$3;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 449
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/base/TemplateListActivity$4;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mDatabaseChecker:Lcom/miui/player/util/LoopChecker$CheckAction;

    return-void
.end method


# virtual methods
.method public enterBatchSelectionMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 394
    const/4 v1, 0x0

    .line 396
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    .line 397
    .local v2, v:Landroid/widget/AbsListView;
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 398
    check-cast v0, Landroid/widget/ListView;

    .line 399
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 400
    invoke-virtual {v0, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 401
    const/4 v1, 0x1

    .line 408
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 405
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 413
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    return-object v0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleFolderProviderUpdated()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method protected handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 0
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 308
    return-void
.end method

.method protected handleLoaderReset(I)V
    .locals 0
    .parameter "loaderId"

    .prologue
    .line 309
    return-void
.end method

.method protected handleRecoverd()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 216
    return-void
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    return v0
.end method

.method public launchLoader(Z)V
    .locals 6
    .parameter "reset"

    .prologue
    const/4 v5, 0x1

    .line 377
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    move-result-object v1

    .line 378
    .local v1, info:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    if-eqz v1, :cond_1

    .line 379
    new-instance v0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;

    const-wide/16 v3, 0x1f4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;J)V

    .line 380
    .local v0, callback:Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v2

    .line 381
    .local v2, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 386
    .end local v0           #callback:Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;
    .end local v2           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_1
    return-void
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method protected needBindToService()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan finished!"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 89
    .local v0, lv:Landroid/widget/AbsListView;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 68
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->setVolumeControlStream(I)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onCreateContent(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->needBindToService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p0, p0}, Lcom/miui/player/service/ServiceHelper;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/miui/player/service/ServiceHelper$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    .line 80
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.kill_process"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mKillProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void

    .line 77
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 306
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->leaveBatchSelectionMode()Z

    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    invoke-static {v0}, Lcom/miui/player/service/ServiceHelper;->unbindFromService(Lcom/miui/player/service/ServiceHelper$ServiceToken;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mToken:Lcom/miui/player/service/ServiceHelper$ServiceToken;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mKillProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/player/ui/UIHelper;->unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onKillProcess()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 4
    .parameter "enabled"
    .parameter "lv"

    .prologue
    const/4 v3, -0x1

    .line 425
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 426
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 428
    .local v1, h:I
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    if-eqz p1, :cond_1

    .end local v1           #h:I
    :goto_0
    invoke-static {v2, v3, v3, v3, v1}, Lcom/miui/player/ui/UIHelper;->setPadding(Landroid/view/View;IIII)V

    .line 430
    :cond_0
    return-void

    .line 428
    .restart local v1       #h:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 192
    :goto_0
    if-eqz v1, :cond_0

    :goto_1
    return v0

    .line 173
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    move v1, v0

    .line 175
    goto :goto_0

    .line 177
    :sswitch_1
    invoke-static {p0}, Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V

    move v1, v0

    .line 179
    goto :goto_0

    .line 181
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/MusicSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v0

    .line 184
    goto :goto_0

    .line 186
    :sswitch_3
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->quitMediaPlay(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    move v1, v0

    .line 188
    goto :goto_0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x12 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->unregister()V

    .line 133
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/player/ui/UIHelper;->unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 137
    iput-boolean v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 160
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    const/16 v0, 0x62

    const v1, 0x7f090008

    invoke-interface {p1, v3, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 162
    const/16 v0, 0xe

    const/16 v1, 0x63

    const v2, 0x7f090013

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 163
    const/16 v0, 0x12

    const/16 v1, 0x64

    const v2, 0x7f090010

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    iget-object v2, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mServiceStatusListener:Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;

    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getObservedServiceActions()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->register([Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)I

    move-result v1

    .line 112
    .local v1, folderVersion:I
    iget v2, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mFolderUpdateVersion:I

    if-ge v2, v1, :cond_0

    .line 113
    iput v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mFolderUpdateVersion:I

    .line 114
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->handleFolderProviderUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mDatabaseChecker:Lcom/miui/player/util/LoopChecker$CheckAction;

    const/16 v3, 0xa

    const/16 v4, 0x7d0

    invoke-static {v2, v3, v4}, Lcom/miui/player/util/LoopChecker;->check(Lcom/miui/player/util/LoopChecker$CheckAction;II)V

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mPaused:Z

    .line 128
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 246
    invoke-static {p2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/service/IMediaPlaybackService;

    move-result-object v0

    .line 247
    .local v0, serv:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    .line 250
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V

    .line 251
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    .line 261
    return-void
.end method

.method recoverPlayList()V
    .locals 2

    .prologue
    .line 438
    invoke-static {p0}, Lcom/miui/player/util/PlaylistRecoverer;->instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/player/util/PlaylistRecoverer;->recover(Landroid/content/Context;)I

    move-result v0

    .line 439
    .local v0, recoverVersion:I
    iget v1, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecoverVersion:I

    if-ge v1, v0, :cond_0

    .line 440
    iput v0, p0, Lcom/miui/player/ui/base/TemplateListActivity;->mRecoverVersion:I

    .line 441
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->handleRecoverd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 418
    .local v0, list:Landroid/widget/AbsListView;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 421
    :cond_0
    return-void
.end method
