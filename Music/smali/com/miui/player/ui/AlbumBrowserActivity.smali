.class public Lcom/miui/player/ui/AlbumBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;,
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumCursorDecorator;
    }
.end annotation


# static fields
.field static sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

.field static sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;


# instance fields
.field mAdapter:Lcom/miui/player/model/AlbumListAdapter;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;

.field private mCachedSongNum:I

.field private mCursor:Landroid/database/Cursor;

.field mDelayedHandler:Landroid/os/Handler;

.field final mDownloadAlbumRunnable:Ljava/lang/Runnable;

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

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    .line 334
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$2;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    return-void
.end method

.method public static makeSpecialCursor(I)Landroid/database/Cursor;
    .locals 4
    .parameter "headerId"

    .prologue
    .line 451
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 452
    .local v0, columnValues:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 453
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 454
    .local v1, mc:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 456
    return-object v1
.end method

.method private setTitleBar()V
    .locals 10

    .prologue
    .line 184
    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 185
    .local v5, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    iget-wide v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 186
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 188
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 189
    :cond_0
    const-string v0, ""

    .line 193
    .local v0, artist:Ljava/lang/String;
    :goto_0
    iget-wide v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-static {p0, v6, v7}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v3

    .line 194
    .local v3, numalbums:I
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getSongNumForArtist()I

    move-result v4

    .line 195
    .local v4, numsongs:I
    invoke-static {p0, v3, v4, v0}, Lcom/miui/player/ui/UIHelper;->makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, details:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 197
    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v5, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 206
    .end local v0           #artist:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #details:Ljava/lang/String;
    .end local v4           #numsongs:I
    :goto_1
    return-void

    .line 191
    .end local v3           #numalbums:I
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v6, "artist"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #artist:Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0           #artist:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    const-wide/16 v6, -0x1

    invoke-static {p0, v6, v7}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v3

    .line 201
    .restart local v3       #numalbums:I
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 202
    .local v2, details:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 203
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v5, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public downloadAllAlbums()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    const/4 v0, 0x1

    .line 404
    .local v0, started:Z
    sget-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    invoke-virtual {v2}, Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Lcom/miui/player/ui/AlbumBrowserActivity;->sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    invoke-static {v2, v3}, Lcom/miui/player/network/AlbumDownloader;->downloadAll(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    move-result-object v2

    sput-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    .line 406
    sget-object v2, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 408
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 409
    const v2, 0x7f09009b

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 413
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 406
    goto :goto_0

    .line 411
    :cond_3
    const v2, 0x7f090005

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    return-object v0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, where:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidAlbumIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 272
    .local v9, set:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 274
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v6, v5}, Lcom/miui/player/util/SqlUtils;->concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_0
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_COLUMNS:[Ljava/lang/String;

    .line 282
    .local v2, cols:[Ljava/lang/String;
    iget-wide v11, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    cmp-long v5, v11, v13

    if-ltz v5, :cond_2

    .line 283
    const-string v5, "external"

    iget-wide v11, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-static {v5, v11, v12}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 284
    .local v1, uri:Landroid/net/Uri;
    if-eqz v9, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " audio.album_id  IN "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    :goto_0
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    invoke-static {}, Lcom/miui/player/model/AlbumListAdapter;->createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;

    move-result-object v7

    .line 292
    .local v7, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v8, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumCursorDecorator;

    iget-wide v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    cmp-long v4, v4, v13

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-direct {v8, v7, v4}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;Z)V

    .line 293
    .local v8, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v4, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v4, v8, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v4

    .line 276
    .end local v0           #args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #cols:[Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 284
    goto :goto_0

    .line 286
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 287
    .restart local v1       #uri:Landroid/net/Uri;
    if-eqz v9, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " _id  IN "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_2

    .restart local v0       #args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    .restart local v7       #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    :cond_4
    move v4, v10

    .line 292
    goto :goto_1
.end method

.method public getMenuContextInfo()Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;-><init>()V

    .line 382
    .local v0, ctx:Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 384
    return-object v0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSongNumForArtist()I
    .locals 2

    .prologue
    .line 461
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    if-gez v0, :cond_0

    .line 462
    iget-wide v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-static {p0, v0, v1}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    .line 464
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    return v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 320
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCachedSongNum:I

    .line 326
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/player/model/AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 327
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setTitleBar()V

    goto :goto_0
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceNotification(Landroid/content/Intent;)V

    .line 431
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 438
    .local v1, refresh:Z
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    const/4 v1, 0x1

    .line 445
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/AlbumListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 440
    :cond_3
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const v3, 0x7f0c000f

    const/4 v6, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .restart local p1
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "icicle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const-string v0, "artist_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    .line 89
    const-string v0, "artist_name"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 91
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v11

    .line 94
    .local v11, lv:Landroid/widget/AbsListView;
    new-instance v0, Lcom/miui/player/ui/menu/AlbumBrowserMenu;

    const v1, 0x7f0a0008

    const-string v2, "_id"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/player/ui/menu/AlbumBrowserMenu;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 98
    new-instance v0, Lcom/miui/player/ui/controller/MultiChoiceController;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-direct {v0, v11, v1}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 99
    instance-of v0, v11, Landroid/widget/GridView;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    const v1, 0x7f0c0006

    invoke-static {v3, v1}, Lcom/miui/player/ui/UIHelper;->createBinderForGrid(II)Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->setItemViewBinder(Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0, p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->setOnModeChangedListener(Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v11, v0}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 107
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$1;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    invoke-virtual {v11, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    new-instance v0, Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030002

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    iget-wide v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    iget-object v10, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/miui/player/model/AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IJLmiui/widget/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    .line 135
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->startCache(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 139
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 141
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-static {v3}, Lcom/miui/player/ui/UIHelper;->createBinderForList(I)Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->setItemViewBinder(Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    invoke-static {}, Lcom/miui/player/model/AlbumListAdapter;->quitCache()V

    .line 161
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 167
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 171
    :cond_1
    iput-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    .line 172
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 173
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 218
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.player.BROWSER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 221
    .local v0, artist:Ljava/lang/String;
    if-ltz p3, :cond_0

    .line 222
    const-string v4, "album_id"

    invoke-virtual {v2, v4, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 224
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, nameIdx:I
    const-string v4, "album_name"

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    if-nez v0, :cond_0

    .line 229
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, artistIdx:I
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .end local v1           #artistIdx:I
    .end local v3           #nameIdx:I
    :cond_0
    const-string v4, "artist_id"

    iget-wide v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 235
    const-string v4, "artist_name"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 0
    .parameter "enabled"
    .parameter "lv"

    .prologue
    .line 469
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 474
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 242
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 243
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumListAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 146
    const-string v0, "artist_id"

    iget-wide v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    const-string v0, "artist_name"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 257
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 258
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
