.class public Lcom/miui/player/ui/TrackBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;
    }
.end annotation


# static fields
.field private static ALBUM_DEFAULT_HEIGHT:I

.field private static ALBUM_DEFAULT_WIDTH:I


# instance fields
.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

.field private mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 334
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    .line 335
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 287
    return-void
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 19

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 214
    .local v3, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 215
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 216
    .local v6, orderBy:Ljava/lang/String;
    const/4 v4, 0x0

    .line 218
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 219
    .local v11, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    const/4 v8, 0x0

    .line 221
    .local v8, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 222
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 223
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 224
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v16, "_data"

    invoke-static/range {v15 .. v16}, Lcom/miui/player/util/SqlUtils;->pathLikeWhere(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_0
    :goto_0
    if-nez v2, :cond_9

    .line 275
    const/4 v15, 0x0

    .line 284
    :goto_1
    return-object v15

    .line 226
    :cond_1
    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 227
    const-string v15, "nowplaying"

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 229
    const-string v15, "recentlyAdded"

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 231
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 232
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 233
    const-string v6, "date_added DESC"

    .line 234
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlaylistHelper;->recentlyAddedWhere(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 235
    :cond_2
    const-string v15, "recentlyPlayed"

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 236
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 237
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/miui/player/service/HistoryManager;->loadLatest(Landroid/content/Context;)[J

    move-result-object v10

    .line 239
    .local v10, lastIds:[J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id IN"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v8, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;

    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    const/4 v15, 0x0

    invoke-direct {v8, v15, v10}, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;-><init>(I[J)V

    .line 241
    .restart local v8       #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    goto :goto_0

    .end local v10           #lastIds:[J
    :cond_3
    const-string v15, "frequentlyPlayed"

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 242
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 243
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/StatisticsHelper;->queryFrequentlyPlayed(Landroid/content/Context;)[J

    move-result-object v9

    .line 245
    .local v9, frequentlyIds:[J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id IN"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v9}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    new-instance v8, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;

    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    const/4 v15, 0x0

    invoke-direct {v8, v15, v9}, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;-><init>(I[J)V

    .line 247
    .restart local v8       #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    goto/16 :goto_0

    .line 248
    .end local v9           #frequentlyIds:[J
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v15}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v12

    .line 249
    .local v12, playlistId:J
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-lez v15, :cond_0

    .line 250
    invoke-static {v12, v13}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 251
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->MEMBER_COLUMNS:[Ljava/lang/String;

    .line 252
    const-string v6, "play_order"

    goto/16 :goto_0

    .line 256
    .end local v12           #playlistId:J
    :cond_5
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 257
    sget-object v3, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 259
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v14, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-ltz v15, :cond_6

    .line 261
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "album_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v6, "track, title_key"

    .line 264
    :cond_6
    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-ltz v15, :cond_8

    .line 265
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_7

    .line 266
    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "artist_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 278
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_9
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    invoke-direct/range {v1 .. v6}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v1, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    if-nez v8, :cond_a

    .line 280
    if-nez v6, :cond_b

    invoke-static {v3}, Lcom/miui/player/model/TrackListAdapter;->createCursorConverter([Ljava/lang/String;)Lcom/miui/player/model/SectionCursor$CursorConverter;

    move-result-object v7

    .line 281
    .local v7, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    :goto_2
    if-eqz v7, :cond_c

    new-instance v8, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;

    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    const/4 v15, 0x0

    invoke-direct {v8, v7, v15}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 284
    .end local v7           #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    .restart local v8       #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :cond_a
    :goto_3
    new-instance v15, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v15, v8, v1}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    goto/16 :goto_1

    .line 280
    :cond_b
    const/4 v7, 0x0

    goto :goto_2

    .line 281
    .restart local v7       #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    :cond_c
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    .line 311
    .local v0, actions:[Ljava/lang/String;
    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 195
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/fragment/TrackListFragment;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 196
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setTitleBar()V

    .line 197
    return-void
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
    .line 207
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setTitleBar()V

    .line 208
    return-void
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 318
    .local v0, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->notifyDataSetChanged()V

    .line 319
    return-void
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->isMultiChoiceModeEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->leaveMultiChoiceMode()Z

    move-result v0

    return v0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 68
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->setContentView(I)V

    .line 71
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 73
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/fragment/TrackListFragment;

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 74
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->setHasOptionsMenu(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setTitleBar()V

    .line 77
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->setBackgroundAlbum()V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 176
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/ui/fragment/TrackListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 177
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 182
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isBatchSelectionModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundAlbum()V
    .locals 18

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v17, v0

    .line 338
    .local v17, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gtz v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 342
    :cond_0
    const v1, 0x7f0c0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 343
    .local v16, iv:Landroid/widget/ImageView;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 344
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    sget v1, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 348
    .local v14, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    .line 349
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_WIDTH:I

    .line 352
    .end local v14           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, album:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, artist:Ljava/lang/String;
    if-eqz v12, :cond_2

    if-nez v8, :cond_5

    .line 355
    :cond_2
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v3, v1

    .line 360
    .local v3, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    .line 365
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 367
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 369
    .end local v12           #album:Ljava/lang/String;
    .local v7, album:Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 372
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 377
    .end local v3           #cols:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v5

    const/4 v9, 0x1

    sget v10, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_WIDTH:I

    sget v11, Lcom/miui/player/ui/TrackBrowserActivity;->ALBUM_DEFAULT_HEIGHT:I

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v11}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 380
    .local v15, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_3

    .line 381
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :goto_3
    const v1, 0x7f020011

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 372
    .end local v7           #album:Ljava/lang/String;
    .end local v15           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v12       #album:Ljava/lang/String;
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    move-object v7, v12

    .end local v12           #album:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 383
    .end local v3           #cols:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .restart local v15       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    const v1, 0x7f02000e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 372
    .end local v15           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    goto :goto_4

    .end local v7           #album:Ljava/lang/String;
    .restart local v12       #album:Ljava/lang/String;
    :cond_4
    move-object v7, v12

    .end local v12           #album:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    goto :goto_1

    .end local v3           #cols:[Ljava/lang/String;
    .end local v7           #album:Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .restart local v12       #album:Ljava/lang/String;
    :cond_5
    move-object v7, v12

    .end local v12           #album:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    goto :goto_2
.end method

.method public setTitleBar()V
    .locals 30

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    move-object/from16 v23, v0

    .line 82
    .local v23, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v17, v0

    .line 83
    .local v17, list:Lcom/miui/player/ui/fragment/TrackListFragment;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/player/ui/fragment/TrackListFragment;->getFolderPath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/util/FolderProvider;->queryFolderItem(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/util/FolderProvider$FolderItem;

    move-result-object v16

    .line 85
    .local v16, item:Lcom/miui/player/util/FolderProvider$FolderItem;
    if-eqz v16, :cond_0

    .line 86
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 87
    invoke-virtual/range {v16 .. v16}, Lcom/miui/player/util/FolderProvider$FolderItem;->getFolderName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual/range {v16 .. v16}, Lcom/miui/player/util/FolderProvider$FolderItem;->getTrackCount()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v16           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumId()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_6

    .line 91
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, artist:Ljava/lang/CharSequence;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, album:Ljava/lang/CharSequence;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 94
    .local v9, cursor:Landroid/database/Cursor;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    :cond_2
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 96
    if-nez v3, :cond_3

    .line 97
    const-string v25, "album"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 98
    .local v4, albumIdx:I
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .end local v4           #albumIdx:I
    :cond_3
    if-nez v5, :cond_4

    .line 102
    const-string v25, "album"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 103
    .local v6, artistIdx:I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    .end local v6           #artistIdx:I
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 108
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 109
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 110
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 111
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 112
    .local v8, count:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0010

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v5, v27, v28

    const/16 v28, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, details:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    .end local v8           #count:I
    .end local v10           #details:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCachedTrackNum()I

    move-result v8

    goto :goto_1

    .line 114
    .end local v3           #album:Ljava/lang/CharSequence;
    .end local v5           #artist:Ljava/lang/CharSequence;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_8

    .line 115
    const/4 v7, 0x0

    .line 116
    .local v7, artistName:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 117
    .local v5, artist:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 118
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 119
    const-string v25, "artist"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 120
    .local v15, idx:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .end local v15           #idx:I
    :goto_2
    if-eqz v5, :cond_0

    .line 126
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 128
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v18

    .line 129
    .local v18, numalbums:I
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistId()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v19

    .line 130
    .local v19, numsongs:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v5}, Lcom/miui/player/ui/UIHelper;->makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .restart local v10       #details:Ljava/lang/String;
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 133
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 122
    .end local v10           #details:Ljava/lang/String;
    .end local v18           #numalbums:I
    .end local v19           #numsongs:I
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getArtistName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 136
    .end local v5           #artist:Ljava/lang/String;
    .end local v7           #artistName:Ljava/lang/CharSequence;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_e

    .line 137
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v20

    .line 138
    .local v20, playlistName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 139
    .restart local v8       #count:I
    const/4 v11, 0x0

    .line 140
    .local v11, displayName:Ljava/lang/CharSequence;
    const-string v25, "frequentlyPlayed"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 141
    const v25, 0x7f090055

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/StatisticsHelper;->queryFrequentlyPlayedCount(Landroid/content/Context;)I

    move-result v8

    .line 161
    :cond_9
    :goto_3
    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 162
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x7f0a

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, format:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    .end local v14           #format:Ljava/lang/String;
    :cond_a
    const-string v25, "recentlyAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 144
    const v25, 0x7f090053

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlaylistHelper;->getRecentlyAddedTrackCount(Landroid/content/Context;)I

    move-result v8

    goto :goto_3

    .line 146
    :cond_b
    const-string v25, "recentlyPlayed"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 147
    const v25, 0x7f090054

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 148
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlaylistHelper;->getRecentlyPlayedTrackCount(Landroid/content/Context;)I

    move-result v8

    goto :goto_3

    .line 150
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistId()J

    move-result-wide v21

    .line 151
    .local v21, plid:J
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v12

    .line 152
    .local v12, favoriteId:J
    cmp-long v25, v21, v12

    if-nez v25, :cond_d

    .line 153
    const v25, 0x7f0900cd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v8

    goto/16 :goto_3

    .line 155
    :cond_d
    const-wide/16 v25, 0x0

    cmp-long v25, v21, v25

    if-ltz v25, :cond_9

    .line 156
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 157
    invoke-static/range {v21 .. v22}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v24

    .line 158
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    goto/16 :goto_3

    .line 166
    .end local v8           #count:I
    .end local v11           #displayName:Ljava/lang/CharSequence;
    .end local v12           #favoriteId:J
    .end local v20           #playlistName:Ljava/lang/String;
    .end local v21           #plid:J
    .end local v24           #uri:Landroid/net/Uri;
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 167
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_f

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 168
    .restart local v8       #count:I
    :goto_4
    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 169
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0002

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 167
    .end local v8           #count:I
    :cond_f
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/fragment/TrackListFragment;->getCachedTrackNum()I

    move-result v8

    goto :goto_4
.end method
