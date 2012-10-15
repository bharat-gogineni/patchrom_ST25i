.class public Lcom/miui/player/ui/menu/OnlineAudioMenu;
.super Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;
.source "OnlineAudioMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/miui/player/ui/OnlineAudioActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/miui/player/ui/menu/OnlineAudioMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/ui/OnlineAudioActivity;I)V
    .locals 0
    .parameter "a"
    .parameter "msgId"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;I)V

    .line 35
    iput-object p1, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    .line 36
    return-void
.end method

.method private getSelectedSongItems(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 5
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    iget-object v4, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v2, v4, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    .line 243
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 244
    .local v1, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    invoke-virtual {v1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v1           #item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected addToPlaylist(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;J)V
    .locals 3
    .parameter "ctx"
    .parameter "playlistId"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v1, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v1, v1, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/miui/player/provider/PlaylistHelper;->addOnlineToPlaylist(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 187
    return-void
.end method

.method protected addToPlaylist(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;JLjava/util/Set;)V
    .locals 3
    .parameter "ctx"
    .parameter "playlistId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p4, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p4}, Lcom/miui/player/ui/menu/OnlineAudioMenu;->getSelectedSongItems(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    iget-object v1, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v2, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, p2, p3}, Lcom/miui/player/provider/PlaylistHelper;->addOnlineToPlaylist(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 194
    return-void
.end method

.method protected collectTracksEditInfo(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;Ljava/util/Set;)[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .locals 2
    .parameter "ctx"
    .parameter "trace"
    .parameter "factory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;",
            "Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;"
        }
    .end annotation

    .prologue
    .line 199
    .local p4, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->TAG:Ljava/lang/String;

    const-string v1, "can not edit id3 in online music list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findLocalAudioId(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    .locals 20
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-object/from16 v17, v0

    .line 134
    .local v17, onlineSongList:Lcom/miui/player/plugin/onlinemusic2/AudioList;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 135
    .local v16, onlineId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 136
    .local v18, path:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 137
    .local v13, i:Lcom/miui/player/plugin/onlinemusic2/Audio;
    invoke-virtual {v13}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v13}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, tr:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, ar:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    :cond_1
    const-string v1, "mp3"

    move-object/from16 v0, v19

    invoke-static {v0, v8, v1}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 147
    .end local v8           #ar:Ljava/lang/String;
    .end local v13           #i:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v19           #tr:Ljava/lang/String;
    :cond_2
    if-nez v18, :cond_4

    .line 148
    const/4 v15, 0x0

    .line 175
    :cond_3
    :goto_0
    return-object v15

    .line 151
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    .line 157
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 159
    .local v15, info:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    if-eqz v12, :cond_3

    .line 160
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    invoke-static {v12}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v11

    .line 162
    .local v11, audioIdx:I
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 163
    .local v9, audioId:J
    new-instance v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;

    .end local v15           #info:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    invoke-direct {v15, v9, v10}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;-><init>(J)V

    .line 164
    .restart local v15       #info:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    iput-wide v9, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mAudioId:J

    .line 165
    const-string v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mTitle:Ljava/lang/String;

    .line 166
    const-string v1, "album"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mAlbum:Ljava/lang/String;

    .line 167
    const-string v1, "artist"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mArtist:Ljava/lang/String;

    .line 168
    const-string v1, "_data"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mData:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v2, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mTitle:Ljava/lang/String;

    iget-object v3, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mArtist:Ljava/lang/String;

    iget-wide v4, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mAudioId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mLocalAudioId:J

    .line 172
    .end local v9           #audioId:J
    .end local v11           #audioIdx:I
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J
    .locals 1
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContextInfo()Lcom/miui/player/ui/menu/common/MenuContextInfo;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineAudioActivity;->getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/OnlineAudioMenu;->getKeyFromItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyFromItem(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 259
    instance-of v0, p1, Lcom/miui/player/plugin/onlinemusic2/Audio;

    if-eqz v0, :cond_0

    .line 260
    check-cast p1, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .end local p1
    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMenuTrace(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;
    .locals 15
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .line 41
    .local v8, onlineSongList:Lcom/miui/player/plugin/onlinemusic2/AudioList;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->isValid()Z

    move-result v13

    if-nez v13, :cond_1

    .line 42
    :cond_0
    const/4 v12, 0x0

    .line 91
    :goto_0
    return-object v12

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    .local v2, hasLocal:Z
    const/4 v3, 0x0

    .line 47
    .local v3, hasOnline:Z
    const/4 v4, 0x0

    .line 49
    .local v4, hasUnfavorite:Z
    invoke-static {}, Lcom/miui/player/meta/MetaManager;->getAllSortedDownloadedMP3Names()[Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, sortedNames:[Ljava/lang/String;
    iget-object v9, v8, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    .line 51
    .local v9, songItems:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 52
    .local v6, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 56
    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, tr:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, ar:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 62
    :cond_3
    const-string v13, "mp3"

    invoke-static {v11, v1, v13}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 67
    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 68
    :cond_4
    if-eqz v10, :cond_8

    invoke-static {v10, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_8

    .line 69
    const/4 v2, 0x1

    .line 75
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 76
    iget-object v13, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v4, 0x1

    .line 79
    :cond_6
    :goto_2
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 84
    .end local v1           #ar:Ljava/lang/String;
    .end local v6           #item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v7           #name:Ljava/lang/String;
    .end local v11           #tr:Ljava/lang/String;
    :cond_7
    new-instance v12, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;

    invoke-direct {v12}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;-><init>()V

    .line 85
    .local v12, trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v13

    iput v13, v12, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mSize:I

    .line 86
    iput-boolean v2, v12, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mHasLocal:Z

    .line 87
    iput-boolean v3, v12, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mHasOnline:Z

    .line 88
    iput-boolean v4, v12, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mHasUnfavorite:Z

    .line 89
    const/4 v13, 0x3

    iput v13, v12, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mType:I

    goto :goto_0

    .line 71
    .end local v12           #trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;
    .restart local v1       #ar:Ljava/lang/String;
    .restart local v6       #item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v11       #tr:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    .line 76
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected getOnlineAudioLocalPath(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 11
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .line 97
    .local v4, onlineSongList:Lcom/miui/player/plugin/onlinemusic2/AudioList;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->isValid()Z

    move-result v10

    if-nez v10, :cond_2

    .line 98
    :cond_0
    const/4 v6, 0x0

    .line 127
    :cond_1
    return-object v6

    .line 101
    :cond_2
    invoke-static {}, Lcom/miui/player/meta/MetaManager;->getAllSortedDownloadedMP3Names()[Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, sortedNames:[Ljava/lang/String;
    iget-object v7, v4, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    .line 103
    .local v7, songItems:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, pathArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 105
    .local v2, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 108
    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, tr:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, ar:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 114
    :cond_4
    const-string v10, "mp3"

    invoke-static {v9, v0, v10}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 119
    if-eqz v8, :cond_3

    invoke-static {v8, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_3

    .line 120
    const-string v10, "mp3"

    invoke-static {v9, v0, v10}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getSelectedSongList(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 2
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/player/plugin/onlinemusic2/AudioList;

    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/OnlineAudioMenu;->getSelectedSongItems(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/player/plugin/onlinemusic2/AudioList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected playAll(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)V
    .locals 6
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/OnlineAudioMenu;->getSelectedSongItems(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    .line 220
    .local v1, songList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    iget-object v0, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v2, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V

    .line 222
    return-void
.end method

.method protected queue(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v0, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v1, v0, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    .line 206
    .local v1, songList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    iget-object v0, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v2, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V

    .line 208
    return-void
.end method

.method protected queue(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;I)V
    .locals 6
    .parameter "ctx"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/OnlineAudioMenu;->getSelectedSongItems(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    .line 213
    .local v1, songList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    iget-object v0, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v2, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V

    .line 215
    return-void
.end method

.method protected removeFromPlaylist(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;JLjava/util/Set;)V
    .locals 6
    .parameter "ctx"
    .parameter "playlistId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p4, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p4}, Lcom/miui/player/ui/menu/OnlineAudioMenu;->getSelectedSongItems(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    .line 227
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v3, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 229
    .local v1, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    invoke-virtual {v1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v1           #item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v5, p0, Lcom/miui/player/ui/menu/OnlineAudioMenu;->mActivity:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-static {v5}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5, p2, p3}, Lcom/miui/player/provider/PlaylistHelper;->removeOnlineMembers(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;J)I

    .line 233
    return-void
.end method
