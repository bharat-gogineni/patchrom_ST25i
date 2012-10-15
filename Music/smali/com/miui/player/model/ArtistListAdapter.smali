.class public Lcom/miui/player/model/ArtistListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "ArtistListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/ArtistListAdapter$ViewHolder;,
        Lcom/miui/player/model/ArtistListAdapter$ArtistElementConverter;
    }
.end annotation


# static fields
.field public static ARTIST_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

.field private mArtistIdIdx:I

.field private final mArtistIdToAlbumNum:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtistIdToTrackNum:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistIdx:I

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
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/ArtistListAdapter;->ARTIST_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/ArtistBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "cursor"
    .parameter "layout"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/ui/ArtistBrowserActivity;",
            "Landroid/database/Cursor;",
            "I[",
            "Ljava/lang/String;",
            "[I",
            "Lmiui/widget/AlphabetFastIndexer;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p8, controller:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/Long;>;"
    const-string v8, "artist"

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdToTrackNum:Ljava/util/HashMap;

    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdToAlbumNum:Ljava/util/HashMap;

    .line 63
    iput-object p2, p0, Lcom/miui/player/model/ArtistListAdapter;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    .line 64
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/miui/player/model/ArtistListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 65
    invoke-direct {p0, p3}, Lcom/miui/player/model/ArtistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 66
    return-void
.end method

.method private static collectArtistInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 20
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, artistToTrack:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p2, artistToAlbum:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "artist_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 149
    .local v3, cols:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 150
    .local v12, artistIdIdx:I
    const/4 v9, 0x1

    .line 152
    .local v9, albumIdIdx:I
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p0 .. p0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "artist_id,album_id"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 159
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 161
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->clear()V

    .line 162
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->clear()V

    .line 164
    const-wide/16 v16, -0x1

    .line 165
    .local v16, lastArtistId:J
    const/16 v18, 0x0

    .line 167
    .local v18, numAlbum:I
    const-wide/16 v14, -0x1

    .line 168
    .local v14, lastAlbum:J
    const/16 v19, 0x0

    .line 170
    .local v19, numTrack:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 172
    .local v10, artistId:J
    cmp-long v1, v10, v16

    if-eqz v1, :cond_0

    .line 173
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v19, 0x1

    .line 176
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-wide/from16 v16, v10

    .line 178
    const/16 v18, 0x1

    .line 179
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 170
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    .end local v10           #artistId:J
    .end local v14           #lastAlbum:J
    .end local v16           #lastArtistId:J
    .end local v18           #numAlbum:I
    .end local v19           #numTrack:I
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 181
    .restart local v10       #artistId:J
    .restart local v14       #lastAlbum:J
    .restart local v16       #lastArtistId:J
    .restart local v18       #numAlbum:I
    .restart local v19       #numTrack:I
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 182
    .local v7, albumId:J
    cmp-long v1, v14, v7

    if-eqz v1, :cond_1

    .line 183
    move-wide v14, v7

    .line 184
    add-int/lit8 v18, v18, 0x1

    .line 186
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 190
    .end local v7           #albumId:J
    .end local v10           #artistId:J
    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v1, v16, v1

    if-eqz v1, :cond_3

    .line 191
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v14           #lastAlbum:J
    .end local v16           #lastArtistId:J
    .end local v18           #numAlbum:I
    .end local v19           #numTrack:I
    :cond_4
    return-void
.end method

.method public static createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;

    new-instance v1, Lcom/miui/player/model/ArtistListAdapter$ArtistElementConverter;

    invoke-direct {v1}, Lcom/miui/player/model/ArtistListAdapter$ArtistElementConverter;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;-><init>(Lcom/miui/player/model/SectionCursor$ElementConverter;I)V

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdIdx:I

    .line 71
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdx:I

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;

    .line 92
    .local v9, vh:Lcom/miui/player/model/ArtistListAdapter$ViewHolder;
    iget v10, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdx:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, artist:Ljava/lang/String;
    iget-object v10, v9, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/miui/player/model/ArtistListAdapter;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v11, v0}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget v10, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdIdx:I

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 96
    .local v1, artistid:J
    iget-object v10, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdToAlbumNum:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 97
    .local v6, numalbums:Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 98
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 100
    :cond_0
    iget-object v10, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdToTrackNum:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 101
    .local v7, numsongs:Ljava/lang/Integer;
    if-nez v7, :cond_1

    .line 102
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 105
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {p2, v10, v11, v0}, Lcom/miui/player/ui/UIHelper;->makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, songs_albums:Ljava/lang/String;
    iget-object v10, v9, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentArtistId()J

    move-result-wide v3

    .line 111
    .local v3, currentartistid:J
    iget-object v5, v9, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 112
    .local v5, iv:Landroid/widget/ImageView;
    cmp-long v10, v3, v1

    if-nez v10, :cond_3

    .line 113
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 115
    const v10, 0x7f020057

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :goto_0
    iget-object v10, p0, Lcom/miui/player/model/ArtistListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-virtual {v10, p1, v11}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 124
    return-void

    .line 117
    :cond_2
    const v10, 0x7f020055

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/player/model/ArtistListAdapter;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 p1, 0x0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/ArtistListAdapter;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/ArtistBrowserActivity;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/player/model/ArtistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/player/model/ArtistListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdToTrackNum:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/player/model/ArtistListAdapter;->mArtistIdToAlbumNum:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/miui/player/model/ArtistListAdapter;->collectArtistInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 140
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;-><init>()V

    .line 79
    .local v1, vh:Lcom/miui/player/model/ArtistListAdapter$ViewHolder;
    const v2, 0x7f0c0007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f0c0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->details:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0c0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f0c0069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/ArtistListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object v0
.end method
