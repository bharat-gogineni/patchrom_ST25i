.class public Lcom/miui/player/model/AlbumListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;,
        Lcom/miui/player/model/AlbumListAdapter$ViewHolder;,
        Lcom/miui/player/model/AlbumListAdapter$AlbumtElementConverter;
    }
.end annotation


# static fields
.field public static final ALBUM_COLUMNS:[Ljava/lang/String;

.field private static sAlbumHeight:I

.field private static sAlbumWidth:I

.field public static sDrawableProvider:Lmiui/cache/RequestManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/RequestManager",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

.field private mAlbumArtIdx:I

.field private final mAlbumIdToTrackNum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumIdx:I

.field private final mArtistId:J

.field private mArtistIdx:I

.field private mIdIdx:I

.field private final mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_COLUMNS:[Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/miui/player/model/AlbumListAdapter$1;

    invoke-direct {v0}, Lcom/miui/player/model/AlbumListAdapter$1;-><init>()V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Lcom/miui/player/model/AlbumListAdapter;->sPool:Landroid/util/Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IJLmiui/widget/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 13
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "artistId"
    .parameter "fastIndexer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/ui/AlbumBrowserActivity;",
            "I",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[IJ",
            "Lmiui/widget/AlphabetFastIndexer;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p10, multiChoice:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/Long;>;"
    const-string v9, "album"

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdToTrackNum:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    .line 90
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    .line 91
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 95
    .local v12, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    if-nez v2, :cond_0

    .line 96
    const v2, 0x7f020008

    invoke-static {v12, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 97
    .local v10, b:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcom/miui/player/model/AlbumListAdapter;->sAlbumWidth:I

    .line 98
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcom/miui/player/model/AlbumListAdapter;->sAlbumHeight:I

    .line 100
    invoke-static {v10}, Lcom/miui/player/meta/AlbumManager;->createFastDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 101
    .local v11, dftAlbum:Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x64

    invoke-static {v2, v11}, Lmiui/cache/RequestManager;->create(ILjava/lang/Object;)Lmiui/cache/RequestManager;

    move-result-object v2

    sput-object v2, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    .line 104
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v11           #dftAlbum:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/miui/player/model/AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 105
    return-void
.end method

.method private static collectAlbumInfo(Landroid/content/Context;JLjava/util/Map;)V
    .locals 16
    .parameter "context"
    .parameter "artistId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p3, albumToTrackNum:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 383
    .local v4, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 385
    .local v10, albumIdIdx:I
    const/4 v15, 0x0

    .line 386
    .local v15, where:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 390
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "album_id"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 397
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 399
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->clear()V

    .line 401
    const-wide/16 v12, -0x1

    .line 402
    .local v12, lastAlbumId:J
    const/4 v14, 0x0

    .line 404
    .local v14, numTrack:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 406
    .local v8, albumId:J
    cmp-long v2, v8, v12

    if-eqz v2, :cond_1

    .line 407
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const/4 v14, 0x1

    .line 410
    move-wide v12, v8

    .line 404
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 420
    .end local v8           #albumId:J
    .end local v12           #lastAlbumId:J
    .end local v14           #numTrack:I
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 412
    .restart local v8       #albumId:J
    .restart local v12       #lastAlbumId:J
    .restart local v14       #numTrack:I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 416
    .end local v8           #albumId:J
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_3

    .line 417
    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 423
    .end local v12           #lastAlbumId:J
    .end local v14           #numTrack:I
    :cond_4
    return-void
.end method

.method public static createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;

    new-instance v1, Lcom/miui/player/model/AlbumListAdapter$AlbumtElementConverter;

    invoke-direct {v1}, Lcom/miui/player/model/AlbumListAdapter$AlbumtElementConverter;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;-><init>(Lcom/miui/player/model/SectionCursor$ElementConverter;I)V

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mIdIdx:I

    .line 110
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdx:I

    .line 111
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mArtistIdx:I

    .line 112
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumArtIdx:I

    .line 114
    :cond_0
    return-void
.end method

.method private makeSpecialView(Landroid/view/View;Lcom/miui/player/model/AlbumListAdapter$ViewHolder;J)V
    .locals 8
    .parameter "view"
    .parameter "vh"
    .parameter "aid"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_0

    .line 132
    iget-object v4, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->album:Landroid/widget/ImageView;

    const v5, 0x7f020007

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v4, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->album:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v4, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v4, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->primary:Landroid/widget/TextView;

    const v5, 0x7f090070

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v4, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumBrowserActivity;->getSongNumForArtist()I

    move-result v0

    .line 137
    .local v0, count:I
    iget-object v4, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, details:Ljava/lang/String;
    iget-object v4, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->secondary:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v4, p0, Lcom/miui/player/model/AlbumListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v4}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    .local v2, enabled:Z
    :goto_0
    iget-object v3, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->primary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    iget-object v3, p2, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->secondary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    .end local v0           #count:I
    .end local v1           #details:Ljava/lang/String;
    .end local v2           #enabled:Z
    :cond_0
    return-void

    .restart local v0       #count:I
    .restart local v1       #details:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 141
    goto :goto_0
.end method

.method public static quitCache()V
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/cache/RequestManager;->quit(Lmiui/cache/RequestManager$Detacher;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static removeCache()V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    invoke-virtual {v0}, Lmiui/cache/RequestManager;->removeAll()V

    .line 250
    :cond_0
    return-void
.end method

.method public static removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 253
    sget-object v1, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    if-eqz v1, :cond_0

    .line 254
    sget-object v1, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    invoke-static {p0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->asKey(Lcom/miui/player/meta/AlbumInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/cache/RequestManager;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0
.end method

.method public static startCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/cache/RequestManager;->setup(Z)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 149
    invoke-super/range {p0 .. p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;

    .line 151
    .local v21, vh:Lcom/miui/player/model/AlbumListAdapter$ViewHolder;
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 153
    .local v4, aid:J
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->albumMask:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    .line 154
    .local v19, mask:Landroid/widget/ImageView;
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gez v10, :cond_0

    .line 155
    const/16 v10, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/miui/player/model/AlbumListAdapter;->makeSpecialView(Landroid/view/View;Lcom/miui/player/model/AlbumListAdapter$ViewHolder;J)V

    .line 217
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v10}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 161
    const v10, 0x7f02000a

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, albumName:Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->primary:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v11, v7}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v10, v8}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 184
    .local v18, details:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->secondary:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->album:Landroid/widget/ImageView;

    .line 191
    .local v14, iv:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumArtIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, art:Ljava/lang/String;
    new-instance v3, Lcom/miui/player/meta/AlbumInfo;

    invoke-direct/range {v3 .. v8}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v3, info:Lcom/miui/player/meta/AlbumInfo;
    sget-object v10, Lcom/miui/player/model/AlbumListAdapter;->sPool:Landroid/util/Pool;

    invoke-interface {v10}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v9

    check-cast v9, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;

    .line 195
    .local v9, request:Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;
    sget v10, Lcom/miui/player/model/AlbumListAdapter;->sAlbumWidth:I

    sget v11, Lcom/miui/player/model/AlbumListAdapter;->sAlbumHeight:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object v12, v3

    invoke-virtual/range {v9 .. v14}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->init(IILcom/miui/player/meta/AlbumInfo;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 196
    invoke-virtual {v9}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 197
    sget-object v10, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    invoke-virtual {v10}, Lmiui/cache/RequestManager;->isStarted()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 198
    sget-object v10, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    invoke-virtual {v10, v9}, Lmiui/cache/RequestManager;->request(Lmiui/cache/RequestManager$Request;)Z

    .line 202
    :cond_1
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 203
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAlbumId()J

    move-result-wide v16

    .line 204
    .local v16, currentalbumid:J
    cmp-long v10, v16, v4

    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentArtistId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 205
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 207
    const v10, 0x7f020058

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 163
    .end local v3           #info:Lcom/miui/player/meta/AlbumInfo;
    .end local v6           #art:Ljava/lang/String;
    .end local v7           #albumName:Ljava/lang/String;
    .end local v8           #artistName:Ljava/lang/String;
    .end local v9           #request:Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;
    .end local v14           #iv:Landroid/widget/ImageView;
    .end local v16           #currentalbumid:J
    .end local v18           #details:Ljava/lang/CharSequence;
    :cond_3
    const v10, 0x7f02000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 177
    .restart local v7       #albumName:Ljava/lang/String;
    .restart local v8       #artistName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdToTrackNum:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/player/model/AlbumListAdapter;->mIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 178
    .local v15, count:Ljava/lang/Integer;
    if-nez v15, :cond_5

    .line 179
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 181
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 182
    .local v20, r:Landroid/content/res/Resources;
    const/high16 v10, 0x7f0a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v12, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #details:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 209
    .end local v15           #count:Ljava/lang/Integer;
    .end local v20           #r:Landroid/content/res/Resources;
    .restart local v3       #info:Lcom/miui/player/meta/AlbumInfo;
    .restart local v6       #art:Ljava/lang/String;
    .restart local v9       #request:Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;
    .restart local v14       #iv:Landroid/widget/ImageView;
    .restart local v16       #currentalbumid:J
    :cond_6
    const v10, 0x7f020056

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 212
    :cond_7
    const/16 v10, 0x8

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 223
    const/4 p1, 0x0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-direct {p0, p1}, Lcom/miui/player/model/AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 227
    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    iget-object v3, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdToTrackNum:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/model/AlbumListAdapter;->collectAlbumInfo(Landroid/content/Context;JLjava/util/Map;)V

    .line 230
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 232
    :cond_2
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;-><init>()V

    .line 120
    .local v1, vh:Lcom/miui/player/model/AlbumListAdapter$ViewHolder;
    const v2, 0x7f0c0011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->primary:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0c0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->secondary:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f0c0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 123
    const v2, 0x7f0c0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->album:Landroid/widget/ImageView;

    .line 124
    const v2, 0x7f0c0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->albumMask:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    return-object v0
.end method
