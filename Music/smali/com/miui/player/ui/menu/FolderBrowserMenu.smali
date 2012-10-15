.class public Lcom/miui/player/ui/menu/FolderBrowserMenu;
.super Lcom/miui/player/ui/menu/BaseMenuManager;
.source "FolderBrowserMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/menu/BaseMenuManager",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

.field private final mKeyColumn:Ljava/lang/String;

.field private mKeyIdx:I


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/FolderBrowserActivity;ILjava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "msgId"
    .parameter "keyColumn"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/menu/BaseMenuManager;-><init>(Landroid/content/Context;I)V

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mKeyIdx:I

    .line 30
    iput-object p1, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    .line 31
    iput-object p3, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mKeyColumn:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private static getFolderPathArr(Landroid/database/Cursor;Ljava/util/Set;)[Ljava/lang/String;
    .locals 7
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v5

    .line 178
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 182
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 183
    .local v5, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 185
    .local v0, i:I
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 186
    .local v2, oldPos:I
    const-string v6, "path"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, pathIdx:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 188
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v3, v5, v0

    move v0, v1

    .line 187
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 194
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 196
    array-length v6, v5

    if-eq v0, v6, :cond_0

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v5, v6

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 91
    invoke-static {p2}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;

    move-result-object v0

    .line 96
    .local v0, ctx:Lcom/miui/player/ui/menu/common/MenuContextInfo;
    invoke-interface {v0}, Lcom/miui/player/ui/menu/common/MenuContextInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x5

    const v4, 0x7f090061

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020075

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 105
    const/4 v3, 0x1

    const v4, 0x7f090062

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v3

    const v4, 0x7f020071

    invoke-interface {v3, v4}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 107
    .local v2, sub:Landroid/view/Menu;
    iget-object v3, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v3, v2, v1}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V

    .line 109
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

.method protected getContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->getMenuContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getContextInfo()Lcom/miui/player/ui/menu/common/MenuContextInfo;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getKeyFromItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyFromItem(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 202
    instance-of v1, p1, Landroid/database/Cursor;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 203
    check-cast v0, Landroid/database/Cursor;

    .line 204
    .local v0, c:Landroid/database/Cursor;
    iget v1, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mKeyIdx:I

    if-gez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mKeyColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mKeyIdx:I

    .line 207
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mKeyIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V
    .locals 13
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/menu/BaseMenuManager;->handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V

    .line 117
    invoke-static {p2}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;

    move-result-object v10

    .line 122
    .local v10, ctx:Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;
    invoke-virtual {v10}, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 127
    .local v11, intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 151
    :pswitch_1
    const-string v0, "dst_playlist"

    const-wide/16 v4, -0x1

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    .local v2, playlistId:J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, v10, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getFolderPathArr(Landroid/database/Cursor;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, pathArr:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0, v12}, Lcom/miui/player/util/FolderProvider;->queryTrackListForFolder(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v1

    .line 155
    .local v1, list:[J
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 159
    .end local v1           #list:[J
    .end local v12           #pathArr:[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 133
    .end local v2           #playlistId:J
    :pswitch_2
    iget-object v0, v10, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getFolderPathArr(Landroid/database/Cursor;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v12

    .line 134
    .restart local v12       #pathArr:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0, v12}, Lcom/miui/player/util/FolderProvider;->queryTrackListForFolder(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v1

    .line 135
    .restart local v1       #list:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    .line 136
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 140
    .end local v1           #list:[J
    .end local v12           #pathArr:[Ljava/lang/String;
    :pswitch_3
    iget-object v0, v10, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getFolderPathArr(Landroid/database/Cursor;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v12

    .line 141
    .restart local v12       #pathArr:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0, v12}, Lcom/miui/player/util/FolderProvider;->queryTrackListForFolder(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v1

    .line 142
    .restart local v1       #list:[J
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0, v1}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 147
    .end local v1           #list:[J
    .end local v12           #pathArr:[Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    const/4 v4, 0x4

    invoke-static {v0, p0, v4, v11}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/OperationDialog;->show()V

    goto :goto_0

    .line 163
    :pswitch_5
    iget-object v0, v10, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p2}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getFolderPathArr(Landroid/database/Cursor;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v12

    .line 164
    .restart local v12       #pathArr:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0, v12}, Lcom/miui/player/util/FolderProvider;->queryTrackListForFolder(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v1

    .line 165
    .restart local v1       #list:[J
    if-eqz v1, :cond_3

    array-length v7, v1

    .line 166
    .local v7, count:I
    :goto_1
    iget-object v4, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    const/4 v6, 0x0

    const/16 v9, 0xa

    move-object v5, v1

    move-object v8, p0

    invoke-static/range {v4 .. v9}, Lcom/miui/player/ui/DeleteItems;->show(Landroid/app/Activity;[JLjava/util/ArrayList;ILcom/miui/player/ui/DialogCallback;I)V

    goto/16 :goto_0

    .line 165
    .end local v7           #count:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 131
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
    .locals 10
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getLastSelected()Ljava/util/Set;

    move-result-object v8

    .line 47
    .local v8, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;

    move-result-object v6

    .line 52
    .local v6, ctx:Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;
    invoke-virtual {v6}, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 57
    :sswitch_0
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 59
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_2

    .line 60
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 61
    .local v2, playlistId:J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    iget-object v0, v6, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v8}, Lcom/miui/player/ui/menu/FolderBrowserMenu;->getFolderPathArr(Landroid/database/Cursor;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, pathArr:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0, v7}, Lcom/miui/player/util/FolderProvider;->queryTrackListForFolder(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v1

    .line 64
    .local v1, list:[J
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 71
    .end local v1           #list:[J
    .end local v2           #playlistId:J
    .end local v7           #pathArr:[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 75
    .end local v9           #uri:Landroid/net/Uri;
    :sswitch_1
    if-eqz p2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/util/FolderProvider;->markForceUpdate()V

    .line 77
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->update()V

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/menu/FolderBrowserMenu;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->leaveBatchSelectionMode()Z

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
