.class public Lcom/miui/player/model/TrackListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "TrackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackListAdapter$TrackBrowser;,
        Lcom/miui/player/model/TrackListAdapter$ViewHolder;,
        Lcom/miui/player/model/TrackListAdapter$MemberElementConverter;,
        Lcom/miui/player/model/TrackListAdapter$TrackElementConverter;
    }
.end annotation


# static fields
.field public static final MEMBER_COLUMNS:[Ljava/lang/String;

.field public static final NOWPLAYING_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final TRACK_COLUMNS:[Ljava/lang/String;


# instance fields
.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mDownloadedFileSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDurationIdx:I

.field mIsNowPlaying:Z

.field mMemberIdIdx:I

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

.field mOnlineIdIdx:I

.field private final mSortableListView:Landroid/widget/SortableListView;

.field mTitleIdx:I

.field private final mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const-class v0, Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "online_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "provider_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "play_order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->MEMBER_COLUMNS:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "online_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackListAdapter;->NOWPLAYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/model/TrackListAdapter$TrackBrowser;ILandroid/database/Cursor;[Ljava/lang/String;[IZLmiui/widget/AlphabetFastIndexer;Landroid/widget/SortableListView;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "fastIndexer"
    .parameter "slv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/model/TrackListAdapter$TrackBrowser;",
            "I",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[IZ",
            "Lmiui/widget/AlphabetFastIndexer;",
            "Landroid/widget/SortableListView;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p10, controller:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/Long;>;"
    const-string v8, "title"

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/miui/player/model/TrackListAdapter;->mDownloadedFileSet:Ljava/util/Set;

    .line 137
    iput-object p2, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    .line 138
    invoke-direct {p0, p4}, Lcom/miui/player/model/TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 139
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    .line 140
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Landroid/widget/SortableListView;

    .line 141
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 142
    return-void
.end method

.method public static createCursorConverter([Ljava/lang/String;)Lcom/miui/player/model/SectionCursor$CursorConverter;
    .locals 3
    .parameter "columns"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, ec:Lcom/miui/player/model/SectionCursor$ElementConverter;
    array-length v1, p0

    sget-object v2, Lcom/miui/player/model/TrackListAdapter;->TRACK_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 102
    new-instance v0, Lcom/miui/player/model/TrackListAdapter$TrackElementConverter;

    .end local v0           #ec:Lcom/miui/player/model/SectionCursor$ElementConverter;
    invoke-direct {v0}, Lcom/miui/player/model/TrackListAdapter$TrackElementConverter;-><init>()V

    .line 107
    .restart local v0       #ec:Lcom/miui/player/model/SectionCursor$ElementConverter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;-><init>(Lcom/miui/player/model/SectionCursor$ElementConverter;I)V

    :goto_1
    return-object v1

    .line 103
    :cond_1
    array-length v1, p0

    sget-object v2, Lcom/miui/player/model/TrackListAdapter;->MEMBER_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 104
    new-instance v0, Lcom/miui/player/model/TrackListAdapter$MemberElementConverter;

    .end local v0           #ec:Lcom/miui/player/model/SectionCursor$ElementConverter;
    invoke-direct {v0}, Lcom/miui/player/model/TrackListAdapter$MemberElementConverter;-><init>()V

    .restart local v0       #ec:Lcom/miui/player/model/SectionCursor$ElementConverter;
    goto :goto_0

    .line 107
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mTitleIdx:I

    .line 147
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mArtistIdx:I

    .line 148
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mDurationIdx:I

    .line 150
    :try_start_0
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mMemberIdIdx:I

    .line 156
    const-string v1, "online_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mOnlineIdIdx:I

    .line 158
    iget-object v1, p0, Lcom/miui/player/model/TrackListAdapter;->mDownloadedFileSet:Ljava/util/Set;

    invoke-static {v1}, Lcom/miui/player/model/TrackListAdapter;->updateDownloadedFileSet(Ljava/util/Set;)V

    .line 160
    :cond_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0
.end method

.method private static updateDownloadedFileSet(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 293
    const-string v6, "mp3"

    invoke-static {v6}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 294
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 296
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 297
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 298
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 187
    invoke-super/range {p0 .. p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 189
    iget v13, p0, Lcom/miui/player/model/TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, title:Ljava/lang/String;
    iget v13, p0, Lcom/miui/player/model/TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, artist:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;

    .line 193
    .local v11, vh:Lcom/miui/player/model/TrackListAdapter$ViewHolder;
    iget-object v13, v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->primaryItem:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v13, v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget v13, p0, Lcom/miui/player/model/TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 198
    .local v2, audioId:J
    const/4 v4, 0x1

    .line 199
    .local v4, isLocal:Z
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 200
    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mp3"

    invoke-static {v10, v13, v14}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, name:Ljava/lang/String;
    iget-object v13, p0, Lcom/miui/player/model/TrackListAdapter;->mDownloadedFileSet:Ljava/util/Set;

    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 204
    .end local v6           #name:Ljava/lang/String;
    :cond_0
    iget-object v14, v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    const/16 v13, 0x8

    :goto_0
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v5, v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 207
    .local v5, iv:Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 208
    .local v9, onlineId:Ljava/lang/String;
    iget v13, p0, Lcom/miui/player/model/TrackListAdapter;->mOnlineIdIdx:I

    if-ltz v13, :cond_1

    .line 209
    iget v13, p0, Lcom/miui/player/model/TrackListAdapter;->mOnlineIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 211
    :cond_1
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v9}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 212
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :goto_1
    iget-object v5, v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 218
    const-wide/16 v7, -0x1

    .line 220
    .local v7, nowplayingId:J
    iget-boolean v13, p0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v13, :cond_a

    .line 221
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v13

    int-to-long v7, v13

    .line 237
    :goto_2
    iget-object v13, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v13}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isIndicateNowplaying()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 238
    iget-boolean v13, p0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v13, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v13, v7

    if-eqz v13, :cond_4

    :cond_2
    iget-boolean v13, p0, Lcom/miui/player/model/TrackListAdapter;->mIsNowPlaying:Z

    if-nez v13, :cond_3

    cmp-long v13, v2, v7

    if-eqz v13, :cond_4

    :cond_3
    if-eqz v9, :cond_c

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 241
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 243
    const v13, 0x7f020057

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :cond_5
    :goto_3
    iget-object v5, v11, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->adjustButton:Landroid/widget/ImageView;

    .line 253
    if-eqz v5, :cond_6

    .line 254
    const/16 v12, 0x8

    .line 255
    .local v12, visibility:I
    iget-object v13, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v13}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isEditing()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 256
    const/4 v12, 0x0

    .line 260
    :goto_4
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    .end local v12           #visibility:I
    :cond_6
    iget-object v13, p0, Lcom/miui/player/model/TrackListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    if-eqz v13, :cond_7

    .line 264
    iget-object v13, p0, Lcom/miui/player/model/TrackListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 267
    :cond_7
    return-void

    .line 204
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v7           #nowplayingId:J
    .end local v9           #onlineId:Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 214
    .restart local v5       #iv:Landroid/widget/ImageView;
    .restart local v9       #onlineId:Ljava/lang/String;
    :cond_9
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 223
    .restart local v7       #nowplayingId:J
    :cond_a
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v7

    goto :goto_2

    .line 245
    :cond_b
    const v13, 0x7f020055

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 248
    :cond_c
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 258
    .restart local v12       #visibility:I
    :cond_d
    const/16 v12, 0x8

    goto :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v0}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isWorking()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 272
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 273
    const/4 p1, 0x0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v0, p1}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, p1}, Lcom/miui/player/model/TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 278
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 279
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/player/model/TrackListAdapter;->setViewHolder(Landroid/view/View;)V

    .line 166
    return-object v0
.end method

.method public setViewHolder(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 170
    new-instance v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/TrackListAdapter$ViewHolder;-><init>()V

    .line 171
    .local v1, vh:Lcom/miui/player/model/TrackListAdapter$ViewHolder;
    const v2, 0x7f0c005c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    .local v0, iv:Landroid/widget/ImageView;
    iput-object v0, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->adjustButton:Landroid/widget/ImageView;

    .line 173
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Landroid/widget/SortableListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/TrackListAdapter;->mTrackBrowser:Lcom/miui/player/model/TrackListAdapter$TrackBrowser;

    invoke-interface {v2}, Lcom/miui/player/model/TrackListAdapter$TrackBrowser;->isSortable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/miui/player/model/TrackListAdapter;->mSortableListView:Landroid/widget/SortableListView;

    invoke-virtual {v2}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    :cond_0
    const v2, 0x7f0c003e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->primaryItem:Landroid/widget/TextView;

    .line 178
    const v2, 0x7f0c003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    .line 179
    const v2, 0x7f0c00b0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    .line 180
    const v2, 0x7f0c0010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 181
    const v2, 0x7f0c006f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/TrackListAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    return-void
.end method
