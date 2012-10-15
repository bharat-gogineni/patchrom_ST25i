.class public Lcom/miui/player/ui/menu/ArtistBrowserMenu;
.super Lcom/miui/player/ui/menu/BaseMenuManager;
.source "ArtistBrowserMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/menu/BaseMenuManager",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

.field private final mKeyColumn:Ljava/lang/String;

.field private mKeyIdx:I


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/ArtistBrowserActivity;ILjava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "msgId"
    .parameter "keyColumn"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/BaseMenuManager;-><init>(Landroid/content/Context;I)V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mKeyIdx:I

    .line 31
    iput-object p1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    .line 32
    iput-object p3, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mKeyColumn:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private static getArtistIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J
    .locals 8
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .local p1, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 137
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v6

    .line 141
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 146
    .local v5, oldPos:I
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, idIdx:I
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [J

    .line 148
    .local v6, ret:[J
    const/4 v0, 0x0

    .line 149
    .local v0, i:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 151
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 152
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-wide v2, v6, v0

    move v0, v1

    .line 149
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 156
    .end local v2           #id:J
    :cond_3
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 158
    array-length v7, v6

    if-eq v0, v7, :cond_0

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public createActionMenu(Landroid/view/Menu;Ljava/util/Set;)V
    .locals 6
    .parameter "menu"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 53
    invoke-static {p2}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;

    move-result-object v0

    .line 58
    .local v0, ctx:Lcom/miui/player/ui/menu/common/MenuContextInfo;
    invoke-interface {v0}, Lcom/miui/player/ui/menu/common/MenuContextInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x5

    const v4, 0x7f090061

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020075

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 67
    const/4 v3, 0x1

    const v4, 0x7f090062

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v3

    const v4, 0x7f020071

    invoke-interface {v3, v4}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 69
    .local v2, sub:Landroid/view/Menu;
    iget-object v3, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v3, v2, v1}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V

    .line 71
    const/16 v3, 0xa

    const v4, 0x7f090045

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020072

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected getContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->getMenuContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getContextInfo()Lcom/miui/player/ui/menu/common/MenuContextInfo;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3
    .parameter "obj"

    .prologue
    .line 164
    instance-of v1, p1, Landroid/database/Cursor;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 165
    check-cast v0, Landroid/database/Cursor;

    .line 166
    .local v0, c:Landroid/database/Cursor;
    iget v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mKeyIdx:I

    if-gez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mKeyColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mKeyIdx:I

    .line 169
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mKeyIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 172
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V
    .locals 15
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-super/range {p0 .. p2}, Lcom/miui/player/ui/menu/BaseMenuManager;->handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;

    move-result-object v12

    .line 80
    .local v12, ctx:Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
    invoke-virtual {v12}, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v13, v12, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 85
    .local v13, cursor:Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 90
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_0

    .line 94
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 115
    :pswitch_1
    const-string v1, "dst_playlist"

    const-wide/16 v5, -0x1

    invoke-virtual {v14, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 116
    .local v3, playlistId:J
    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 117
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getArtistIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v11

    .line 118
    .local v11, artists:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v1, v11}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForArtists(Landroid/content/Context;[J)[J

    move-result-object v2

    .line 119
    .local v2, list:[J
    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 123
    .end local v2           #list:[J
    .end local v11           #artists:[J
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/ArtistBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 97
    .end local v3           #playlistId:J
    :pswitch_2
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getArtistIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v11

    .line 98
    .restart local v11       #artists:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v1, v11}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForArtists(Landroid/content/Context;[J)[J

    move-result-object v2

    .line 99
    .restart local v2       #list:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    .line 100
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/ArtistBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 104
    .end local v2           #list:[J
    .end local v11           #artists:[J
    :pswitch_3
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getArtistIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v11

    .line 105
    .restart local v11       #artists:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v1, v11}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForArtists(Landroid/content/Context;[J)[J

    move-result-object v2

    .line 106
    .restart local v2       #list:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v1, v2}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 107
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/ArtistBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 111
    .end local v2           #list:[J
    .end local v11           #artists:[J
    :pswitch_4
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    const/4 v5, 0x4

    invoke-static {v1, p0, v5, v14}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/ui/OperationDialog;->show()V

    goto :goto_0

    .line 127
    :pswitch_5
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getArtistIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v11

    .line 128
    .restart local v11       #artists:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v1, v11}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForArtists(Landroid/content/Context;[J)[J

    move-result-object v2

    .line 129
    .restart local v2       #list:[J
    if-eqz v2, :cond_3

    array-length v8, v2

    .line 130
    .local v8, count:I
    :goto_1
    iget-object v5, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    const/4 v7, 0x0

    const/16 v10, 0xa

    move-object v6, v2

    move-object v9, p0

    invoke-static/range {v5 .. v10}, Lcom/miui/player/ui/DeleteItems;->show(Landroid/app/Activity;[JLjava/util/ArrayList;ILcom/miui/player/ui/DialogCallback;I)V

    goto/16 :goto_0

    .line 129
    .end local v8           #count:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;

    move-result-object v7

    .line 178
    .local v7, ctx:Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
    invoke-virtual {v7}, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v8, v7, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 183
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getLastSelected()Ljava/util/Set;

    move-result-object v9

    .line 184
    .local v9, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 190
    :sswitch_0
    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 192
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 193
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 194
    .local v2, playlistId:J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 195
    invoke-static {v8, v9}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->getArtistIdArr(Landroid/database/Cursor;Ljava/util/Set;)[J

    move-result-object v6

    .line 196
    .local v6, artists:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-static {v0, v6}, Lcom/miui/player/provider/MediaProviderHelper;->queryTrackListForArtists(Landroid/content/Context;[J)[J

    move-result-object v1

    .line 197
    .local v1, list:[J
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 203
    .end local v1           #list:[J
    .end local v2           #playlistId:J
    .end local v6           #artists:[J
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 207
    .end local v10           #uri:Landroid/net/Uri;
    :sswitch_1
    if-eqz p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;->mActivity:Lcom/miui/player/ui/ArtistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
