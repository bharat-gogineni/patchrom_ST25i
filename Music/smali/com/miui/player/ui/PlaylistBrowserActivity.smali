.class public Lcom/miui/player/ui/PlaylistBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/ui/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;,
        Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;,
        Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    }
.end annotation


# static fields
.field static final SYS_PLAYLIST_NAMES:[I


# instance fields
.field mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

.field private mAdapterUpdateRunnable:Ljava/lang/Runnable;

.field private mCursor:Landroid/database/Cursor;

.field private mPresetFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

.field private mPresetHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

.field private mSystemPlaylistAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;

.field private mSystemPlaylists:Landroid/widget/AbsListView;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->SYS_PLAYLIST_NAMES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xcat 0x0t 0x9t 0x7ft
        0xcbt 0x0t 0x9t 0x7ft
        0xcct 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 601
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$2;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    .line 633
    return-void
.end method

.method private getPlaylistId(J)J
    .locals 2
    .parameter "itemId"

    .prologue
    .line 264
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide p1

    .line 268
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private getRecentlyAddedIds()[J
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 384
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 385
    .local v2, ccols:[Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->recentlyAddedWhere(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v10}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 391
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 392
    .local v8, len:I
    new-array v9, v8, [J

    .line 393
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 394
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 395
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 400
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 404
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :goto_1
    return-object v9

    .line 398
    :catch_0
    move-exception v0

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v4

    .line 404
    goto :goto_1

    .line 400
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSeletedTrackIds(J)[J
    .locals 5
    .parameter "itemId"

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, list:[J
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getRecentlyAddedIds()[J

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 275
    :cond_0
    const-wide/16 v3, -0x2

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 276
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->loadLatest(Landroid/content/Context;)[J

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    const-wide/16 v3, -0x3

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 278
    invoke-static {p0}, Lcom/miui/player/provider/StatisticsHelper;->queryFrequentlyPlayed(Landroid/content/Context;)[J

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_2
    move-wide v1, p1

    .line 281
    .local v1, playlistId:J
    const-wide/16 v3, -0x5

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    .line 282
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v1

    .line 285
    :cond_3
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/miui/player/provider/PlaylistHelper;->getTrackListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J

    move-result-object v0

    goto :goto_0
.end method

.method private initilizePresetItems()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 438
    new-array v0, v4, [Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    new-instance v1, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v2, -0x5

    const v3, 0x7f0900cd

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;-><init>(Landroid/content/Context;III)V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .line 442
    new-array v0, v4, [Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    new-instance v1, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    const/4 v2, -0x4

    const v3, 0x7f0900c9

    const v4, 0x7f020097

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;-><init>(Landroid/content/Context;III)V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .line 446
    return-void
.end method

.method private parseMenuIntent(Landroid/content/Intent;)J
    .locals 3
    .parameter "extras"

    .prologue
    const-wide/16 v0, -0xa

    .line 257
    if-eqz p1, :cond_0

    .line 258
    const-string v2, "src_playlist"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 260
    :cond_0
    return-wide v0
.end method

.method private setTitleBar()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 142
    .local v1, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->getPlaylistCount(Landroid/content/Context;)I

    move-result v0

    .line 143
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method


# virtual methods
.method public findPresetItem(J)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    .locals 6
    .parameter "itemId"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .local v0, arr$:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 450
    .local v2, item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    iget v4, v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 461
    .end local v2           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_0
    :goto_1
    return-object v2

    .line 449
    .restart local v2       #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v2           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 456
    .restart local v2       #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    iget v4, v2, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 461
    .end local v2           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    return-object v0
.end method

.method public getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 516
    const-string v8, "name != \'\' AND list_type=0"

    .line 519
    .local v8, where:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/PlaylistListAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    const-string v3, "name != \'\' AND list_type=0"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    invoke-static {}, Lcom/miui/player/model/PlaylistListAdapter;->createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;

    move-result-object v6

    .line 527
    .local v6, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v7, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPresetFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    invoke-direct {v7, v6, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)V

    .line 529
    .local v7, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v1, v7, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v1
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 579
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    .line 583
    .local v0, actions:[Ljava/lang/String;
    return-object v0
.end method

.method public getPresetRecordCount(I)I
    .locals 5
    .parameter "itemId"

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, count:I
    if-gez p1, :cond_0

    .line 467
    packed-switch p1, :pswitch_data_0

    .line 481
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad item id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :pswitch_1
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->getRecentlyAddedTrackCount(Landroid/content/Context;)I

    move-result v0

    .line 488
    :goto_0
    return v0

    .line 472
    :pswitch_2
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->getRecentlyPlayedTrackCount(Landroid/content/Context;)I

    move-result v0

    .line 473
    goto :goto_0

    .line 475
    :pswitch_3
    invoke-static {p0}, Lcom/miui/player/provider/StatisticsHelper;->queryFrequentlyPlayedCount(Landroid/content/Context;)I

    move-result v0

    .line 476
    goto :goto_0

    .line 478
    :pswitch_4
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v0

    .line 479
    goto :goto_0

    .line 484
    :cond_0
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 485
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-nez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/player/model/PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 507
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitleBar()V

    goto :goto_0
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 588
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    .line 595
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

    const/4 v0, -0x1

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/ui/base/TemplateListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    return-void

    .line 360
    :pswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 361
    const-string v0, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 362
    .local v2, playlistId:J
    const-string v0, "track_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 363
    .local v1, trackIds:[J
    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    .line 364
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    goto :goto_0

    .line 374
    .end local v1           #trackIds:[J
    .end local v2           #playlistId:J
    :pswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 182
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->parseMenuIntent(Landroid/content/Intent;)J

    move-result-wide v7

    .line 183
    .local v7, plid:J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 253
    invoke-super/range {p0 .. p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 185
    :sswitch_0
    sget-object v20, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 186
    .local v20, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v20, :cond_0

    .line 187
    const-wide/16 v3, -0x2

    cmp-long v3, v7, v3

    if-nez v3, :cond_1

    .line 189
    const-wide/16 v3, 0x0

    :try_start_0
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 190
    invoke-interface/range {v20 .. v20}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 194
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v10

    .line 195
    .local v10, list:[J
    if-eqz v10, :cond_0

    array-length v3, v10

    if-lez v3, :cond_0

    .line 196
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    goto :goto_1

    .line 202
    .end local v10           #list:[J
    .end local v20           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :sswitch_1
    const-wide/16 v3, -0x5

    cmp-long v3, v7, v3

    if-nez v3, :cond_3

    .line 203
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v7

    .line 208
    :cond_2
    :goto_2
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.miui.player.TRACK_PICKER"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v19, picker:Landroid/content/Intent;
    const-string v3, "playlist_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    const/4 v3, 0x1

    goto :goto_0

    .line 204
    .end local v19           #picker:Landroid/content/Intent;
    :cond_3
    const-wide/16 v3, -0x2

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    .line 205
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 213
    :sswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/miui/player/provider/PlaylistHelper;->deletePlaylist(Landroid/content/Context;J)V

    .line 214
    const v3, 0x7f090051

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 215
    const/4 v3, 0x1

    goto :goto_0

    .line 217
    :sswitch_3
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v15, editIntent:Landroid/content/Intent;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    .end local v15           #editIntent:Landroid/content/Intent;
    :sswitch_4
    const/16 v5, 0x16

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-static/range {v3 .. v8}, Lcom/miui/player/ui/OperationDialog;->makePlaylistRenamer(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;J)Lcom/miui/player/ui/OperationDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 224
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 226
    :sswitch_5
    const/4 v3, -0x4

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3, v4}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 227
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 229
    :sswitch_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->parseMenuIntent(Landroid/content/Intent;)J

    move-result-wide v17

    .line 230
    .local v17, itemId:J
    const-wide/16 v3, -0xa

    cmp-long v3, v17, v3

    if-eqz v3, :cond_4

    .line 231
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v10

    .line 232
    .restart local v10       #list:[J
    if-eqz v10, :cond_4

    array-length v3, v10

    if-lez v3, :cond_4

    .line 233
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 236
    .end local v10           #list:[J
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 239
    .end local v17           #itemId:J
    :sswitch_7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 240
    .local v16, intent:Landroid/content/Intent;
    if-eqz v16, :cond_5

    .line 241
    const-string v3, "dst_playlist"

    const-wide/16 v4, -0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 242
    .local v11, dstId:J
    const-wide/16 v3, -0xa

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    const-wide/16 v3, -0xa

    cmp-long v3, v11, v3

    if-eqz v3, :cond_5

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v10

    .line 244
    .restart local v10       #list:[J
    if-eqz v10, :cond_5

    array-length v3, v10

    if-lez v3, :cond_5

    .line 245
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v14}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 250
    .end local v10           #list:[J
    .end local v11           #dstId:J
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 191
    .end local v16           #intent:Landroid/content/Intent;
    .restart local v20       #service:Lcom/miui/player/service/IMediaPlaybackService;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0xc -> :sswitch_6
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 72
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->initilizePresetItems()V

    .line 74
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v8

    .line 77
    .local v8, gv:Landroid/widget/AbsListView;
    invoke-virtual {v8, p0}, Landroid/widget/AbsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 79
    new-instance v0, Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03002e

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    new-array v5, v10, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v5, v9

    new-array v6, v10, [I

    const v2, 0x1020014

    aput v2, v6, v9

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0, v9}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0, v10}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 94
    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylists:Landroid/widget/AbsListView;

    .line 95
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;

    invoke-direct {v0, p0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylistAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;

    .line 96
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylists:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylistAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylists:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylists:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 99
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const v9, 0x7f0900d2

    const/16 v8, 0x18

    const/4 v7, 0x0

    .line 149
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 150
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x4

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "src_playlist"

    iget-wide v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, extras:Landroid/content/Intent;
    const/4 v3, 0x5

    const v4, 0x7f090061

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 158
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 159
    const/16 v3, 0x14

    const v4, 0x7f09004c

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 160
    const/16 v3, 0x16

    const v4, 0x7f09004e

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 161
    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 168
    :cond_1
    :goto_1
    const/4 v3, 0x1

    const v4, 0x7f090062

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 169
    .local v2, sub:Landroid/view/SubMenu;
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v3, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPlaylistId(J)J

    move-result-wide v3

    invoke-static {p0, v2, v0, v3, v4}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;J)V

    .line 171
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 173
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 162
    .end local v2           #sub:Landroid/view/SubMenu;
    :cond_2
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 164
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 165
    invoke-interface {p1, v7, v8, v7, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 176
    .restart local v2       #sub:Landroid/view/SubMenu;
    :cond_3
    sget-object v3, Lcom/miui/player/ui/PlaylistBrowserActivity;->SYS_PLAYLIST_NAMES:[I

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget v3, v3, v4

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 135
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iput-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    .line 137
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 138
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 324
    packed-switch p1, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    if-eqz p2, :cond_0

    .line 327
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 328
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_0

    .line 329
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 330
    .local v2, playlistId:J
    const-string v0, "callback"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 331
    .local v6, callback:Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 333
    invoke-direct {p0, v6}, Lcom/miui/player/ui/PlaylistBrowserActivity;->parseMenuIntent(Landroid/content/Intent;)J

    move-result-wide v8

    .line 334
    .local v8, srcId:J
    const-wide/16 v4, -0xa

    cmp-long v0, v8, v4

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0, v8, v9}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSeletedTrackIds(J)[J

    move-result-object v1

    .line 336
    .local v1, ids:[J
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    goto :goto_0

    .line 343
    .end local v1           #ids:[J
    .end local v8           #srcId:J
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.miui.player.TRACK_PICKER"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v7, picker:Landroid/content/Intent;
    const-string v0, "playlist_id"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 293
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v3, -0x4

    cmp-long v3, p4, v3

    if-nez v3, :cond_0

    .line 294
    const/4 v3, -0x4

    const/4 v4, 0x0

    invoke-static {p0, p0, v3, v4}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 320
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v2, 0x0

    .line 299
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x1

    .line 300
    .local v0, editable:Z
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-nez v3, :cond_1

    .line 301
    const-string v2, "recentlyAdded"

    .line 302
    const/4 v0, 0x0

    .line 315
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.player.BROWSER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v3, "playlist_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v3, "editmode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-wide/16 v3, -0x2

    cmp-long v3, p4, v3

    if-nez v3, :cond_2

    .line 304
    const-string v2, "recentlyPlayed"

    .line 305
    const/4 v0, 0x0

    goto :goto_1

    .line 306
    :cond_2
    const-wide/16 v3, -0x3

    cmp-long v3, p4, v3

    if-nez v3, :cond_3

    .line 307
    const-string v2, "frequentlyPlayed"

    .line 308
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    :cond_3
    const-wide/16 v3, -0x5

    cmp-long v3, p4, v3

    if-nez v3, :cond_4

    .line 310
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 312
    :cond_4
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 103
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 104
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mSystemPlaylistAdapter:Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 110
    .local v0, lv:Landroid/widget/AbsListView;
    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Lcom/miui/player/ui/PlaylistBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$1;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_1
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 409
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 410
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
