.class public Lcom/miui/player/ui/fragment/TrackListFragment;
.super Landroid/app/Fragment;
.source "TrackListFragment.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;
.implements Lcom/miui/player/model/TrackListAdapter$TrackBrowser;
.implements Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;
.implements Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;


# static fields
.field private static final ADD_TRACKS:I = 0x78

.field private static final SPECIAL_ID_ADD_TRACK:I = -0x1

.field private static final SPECIAL_ID_SHUFFLE:I = -0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field private mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

.field mAdapter:Lcom/miui/player/model/TrackListAdapter;

.field private mAdapterUpdateRunnable:Ljava/lang/Runnable;

.field private mAddTracks:Landroid/view/View;

.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;

.field private mCachedNum:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditMode:Z

.field private mFolderPath:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/menu/BaseMenuManager",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistId:Ljava/lang/String;

.field private mShuffleAll:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/fragment/TrackListFragment;->TAG:Ljava/lang/String;

    .line 402
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/fragment/TrackListFragment;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    .line 55
    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    .line 56
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    .line 57
    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    .line 58
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    .line 410
    new-instance v0, Lcom/miui/player/ui/fragment/TrackListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/TrackListFragment$1;-><init>(Lcom/miui/player/ui/fragment/TrackListFragment;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private initAsNowplaying()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "nowplaying"

    iput-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    .line 121
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    .line 122
    return-void
.end method

.method private useLastListPosition()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 371
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    .line 372
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 376
    :cond_0
    instance-of v4, v1, Lcom/miui/player/model/NowplayingCursor;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 378
    check-cast v0, Lcom/miui/player/model/NowplayingCursor;

    .line 379
    .local v0, c:Lcom/miui/player/model/NowplayingCursor;
    invoke-virtual {v0, p1, p2}, Lcom/miui/player/model/NowplayingCursor;->moveItem(II)V

    goto :goto_0

    .line 381
    .end local v0           #c:Lcom/miui/player/model/NowplayingCursor;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v2

    .line 383
    .local v2, plid:J
    iget-object v4, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/base/TemplateListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3, p1, p2}, Lcom/miui/player/provider/PlayerProvider;->moveItem(Landroid/content/ContentResolver;JII)Z

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedTrackNum()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    return v0
.end method

.method public getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    .locals 3

    .prologue
    .line 423
    new-instance v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;-><init>()V

    .line 424
    .local v0, ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    iput-wide v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumId:J

    .line 425
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumName:Ljava/lang/String;

    .line 426
    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    iput-wide v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistId:J

    .line 427
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistName:Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 429
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    iput-boolean v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mEditMode:Z

    .line 430
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 431
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mPlaylistId:J

    .line 432
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 433
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mListView:Landroid/widget/AbsListView;

    .line 435
    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()J
    .locals 5

    .prologue
    .line 458
    const-wide/16 v1, -0x1

    .line 459
    .local v1, playlistId:J
    const-string v3, "nowplaying"

    iget-object v4, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    const-wide/16 v1, 0x0

    .line 469
    :goto_0
    return-wide v1

    .line 463
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/miui/player/ui/fragment/TrackListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 297
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/player/model/TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 299
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 306
    const-string v1, "nowplaying"

    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v2

    iget-object v3, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 296
    .end local v0           #first:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 308
    .restart local v0       #first:Z
    :cond_3
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->useLastListPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/miui/player/ui/fragment/TrackListFragment;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    goto :goto_0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->isMultiChoiceModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isIndicateNowplaying()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiChoiceModeEnabled()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSortable()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    return v0
.end method

.method public isWorking()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackListAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 272
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 273
    const-string v0, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 274
    .local v2, playlistId:J
    const-string v0, "track_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 275
    .local v1, trackIds:[J
    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 276
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/miui/player/ui/base/TemplateListActivity;

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 85
    iget-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/base/TemplateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.miui.player.NOWPLAYING_PLAYLIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.player.PLAYBACK_VIEWER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->initAsNowplaying()V

    .line 116
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 99
    :cond_2
    if-nez p1, :cond_3

    .line 100
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 101
    .restart local p1
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "icicle is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    const-string v2, "album_id"

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    .line 105
    const-string v2, "album_name"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    .line 107
    const-string v2, "artist_id"

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    .line 108
    const-string v2, "artist_name"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    .line 110
    const-string v2, "playlist_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    .line 111
    const-string v2, "editmode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    .line 113
    const-string v2, "folder_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    .line 115
    const-string v2, "item_num"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 126
    const v2, 0x7f03003e

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 127
    .local v16, fragment:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 129
    .local v13, a:Lcom/miui/player/ui/base/TemplateListActivity;
    const v2, 0x102000a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 130
    .local v17, lv:Landroid/widget/ListView;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    .line 132
    new-instance v2, Lcom/miui/player/ui/menu/TrackBrowserMenu;

    const v3, 0x7f0a0007

    const-string v4, "_id"

    move-object/from16 v0, p0

    invoke-direct {v2, v13, v0, v3, v4}, Lcom/miui/player/ui/menu/TrackBrowserMenu;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 136
    new-instance v2, Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    const v3, 0x7f0c000f

    invoke-static {v3}, Lcom/miui/player/ui/UIHelper;->createBinderForList(I)Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/MultiChoiceController;->setItemViewBinder(Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->setOnModeChangedListener(Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 142
    const v2, 0x7f0c0018

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lmiui/widget/AlphabetFastIndexer;

    .line 143
    .local v15, fi:Lmiui/widget/AlphabetFastIndexer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v14, 0x1

    .line 144
    .local v14, alphabetSort:Z
    :goto_0
    if-eqz v14, :cond_3

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    .line 146
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/widget/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lmiui/widget/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, -0x1

    const v3, 0x7f020003

    const v4, 0x7f0900d2

    invoke-static {v13, v2, v3, v4}, Lcom/miui/player/ui/UIHelper;->makeSpecialView(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    move-object/from16 v2, v17

    .line 157
    check-cast v2, Landroid/widget/SortableListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 160
    :cond_0
    const-string v2, "nowplaying"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 161
    .local v9, nowplaying:Z
    if-nez v9, :cond_1

    .line 162
    const/4 v2, -0x2

    const v3, 0x7f0200a2

    const v4, 0x7f0900b2

    invoke-static {v13, v2, v3, v4}, Lcom/miui/player/ui/UIHelper;->makeSpecialView(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 165
    :cond_1
    new-instance v2, Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v13}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v4, :cond_4

    const v5, 0x7f030018

    :goto_2
    const/4 v6, 0x0

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-array v8, v4, [I

    if-eqz v14, :cond_5

    move-object v10, v15

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v4, :cond_6

    move-object/from16 v4, v17

    check-cast v4, Landroid/widget/SortableListView;

    move-object v11, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v12}, Lcom/miui/player/model/TrackListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/model/TrackListAdapter$TrackBrowser;ILandroid/database/Cursor;[Ljava/lang/String;[IZLmiui/widget/AlphabetFastIndexer;Landroid/widget/SortableListView;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    if-eqz v14, :cond_7

    invoke-virtual {v15}, Lmiui/widget/AlphabetFastIndexer;->getIndexerIntrinsicWidth()I

    move-result v18

    .line 182
    .local v18, paddingRight:I
    :goto_5
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/player/ui/UIHelper;->setPadding(Landroid/view/View;IIII)V

    .line 184
    return-object v16

    .line 143
    .end local v9           #nowplaying:Z
    .end local v14           #alphabetSort:Z
    .end local v18           #paddingRight:I
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 150
    .restart local v14       #alphabetSort:Z
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 151
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    goto/16 :goto_1

    .line 165
    .restart local v9       #nowplaying:Z
    :cond_4
    const v5, 0x7f03003f

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 180
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    goto :goto_5
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    .line 190
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->useLastListPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/miui/player/ui/fragment/TrackListFragment;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 194
    :cond_0
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    if-eqz v1, :cond_1

    .line 196
    check-cast v0, Landroid/widget/SortableListView;

    .end local v0           #lv:Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Landroid/widget/SortableListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/player/model/TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 212
    iput-object v2, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 215
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 551
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackListAdapter;->notifyDataSetChanged()V

    .line 554
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "v"
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
    .line 315
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    if-eq p1, v9, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 321
    .local v8, tag:Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_3

    .line 322
    check-cast v8, Ljava/lang/Integer;

    .end local v8           #tag:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 323
    .local v3, headerId:I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v6

    .line 325
    .local v6, plid:J
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_0

    .line 326
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.miui.player.TRACK_PICKER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "playlist_id"

    invoke-virtual {v4, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 328
    const/16 v9, 0x78

    invoke-virtual {p0, v4, v9}, Lcom/miui/player/ui/fragment/TrackListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 330
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #plid:J
    :cond_2
    const/4 v9, -0x2

    if-ne v3, v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    .line 331
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v9, v10}, Lcom/miui/player/service/ServiceHelper;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 337
    .end local v3           #headerId:I
    .restart local v8       #tag:Ljava/lang/Object;
    :cond_3
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    sub-int/2addr p3, v9

    .line 338
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 344
    const-wide/16 v1, -0x1

    .line 345
    .local v1, current:J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 346
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 348
    .local v5, oldPos:I
    :try_start_0
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v9}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 350
    .local v0, audioIdx:I
    if-ltz v0, :cond_4

    .line 351
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 354
    :cond_4
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 358
    .end local v0           #audioIdx:I
    .end local v5           #oldPos:I
    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-ltz v9, :cond_6

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-nez v9, :cond_6

    .line 359
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->pause()V

    goto/16 :goto_0

    .line 354
    .restart local v5       #oldPos:I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v9

    .line 361
    .end local v5           #oldPos:I
    :cond_6
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    instance-of v9, v9, Lcom/miui/player/model/NowplayingCursor;

    if-eqz v9, :cond_7

    .line 362
    invoke-static {p3}, Lcom/miui/player/service/ServiceHelper;->toggleQueuePosition(I)V

    goto/16 :goto_0

    .line 364
    :cond_7
    iget-object v9, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v10, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v9, v10, p3}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto/16 :goto_0
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 4
    .parameter "enabled"
    .parameter "lv"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 389
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 390
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAddTracks:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mShuffleAll:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    :goto_1
    invoke-static {v0, v2}, Lcom/miui/player/ui/UIHelper;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 397
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 391
    goto :goto_0

    :cond_3
    move v2, v3

    .line 395
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 236
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 219
    const-string v0, "artist_id"

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 220
    const-string v0, "artist_name"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "album_id"

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 223
    const-string v0, "album_name"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "playlist_name"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    const-string v0, "folder_path"

    iget-object v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "item_num"

    iget v1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCachedNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public playAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 542
    return-void
.end method

.method public setBackgroudResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 546
    return-void
.end method

.method public setListChoiceMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 558
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 525
    iput-object p1, p0, Lcom/miui/player/ui/fragment/TrackListFragment;->mCursor:Landroid/database/Cursor;

    .line 526
    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
