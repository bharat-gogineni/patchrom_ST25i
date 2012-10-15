.class public Lcom/miui/player/ui/QueryBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

.field private mFilterString:Ljava/lang/String;

.field mQueryCursor:Landroid/database/Cursor;

.field private mServiceConnected:Z

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mServiceConnected:Z

    return-void
.end method

.method private setTitleBar()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 342
    .local v0, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    return-void

    .line 343
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-boolean v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mServiceConnected:Z

    if-nez v4, :cond_0

    .line 238
    :goto_0
    return-object v3

    .line 225
    :cond_0
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "mime_type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "data2"

    aput-object v5, v2, v4

    .line 235
    .local v2, ccols:[Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 236
    .local v6, filter:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 237
    .local v1, search:Landroid/net/Uri;
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    new-instance v4, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v4, v3, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    move-object v3, v4

    goto :goto_0

    .line 235
    .end local v0           #args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    .end local v1           #search:Landroid/net/Uri;
    .end local v6           #filter:Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1
.end method

.method protected handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 172
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/ui/QueryBrowserActivity;->setTitleBar()V

    .line 177
    return-void
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 20
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super/range {p0 .. p1}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 89
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 94
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 95
    .local v17, path:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, id:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v16, v0

    const/4 v2, 0x0

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v16, v2

    .line 99
    .local v16, list:[J
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->finish()V

    .line 162
    .end local v14           #id:Ljava/lang/String;
    .end local v16           #list:[J
    .end local v17           #path:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 102
    .restart local v17       #path:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v13, i:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v2, "album_id"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/player/ui/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 110
    .end local v13           #i:Landroid/content/Intent;
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v13       #i:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/album"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "artist_id"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/player/ui/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 121
    .end local v13           #i:Landroid/content/Intent;
    .end local v17           #path:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mServiceConnected:Z

    .line 122
    const-string v2, "query"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 123
    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    const-string v2, "android.intent.extra.focus"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, focus:Ljava/lang/String;
    const-string v2, "android.intent.extra.artist"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, artist:Ljava/lang/String;
    const-string v2, "android.intent.extra.album"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, album:Ljava/lang/String;
    const-string v2, "android.intent.extra.title"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, title:Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 129
    const-string v2, "audio/"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v18, :cond_5

    .line 130
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 146
    .end local v10           #album:Ljava/lang/String;
    .end local v11           #artist:Ljava/lang/String;
    .end local v12           #focus:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_3
    :goto_1
    const v2, 0x7f030030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->setContentView(I)V

    .line 147
    new-instance v2, Lcom/miui/player/ui/controller/TitleBarController;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    if-nez v2, :cond_4

    .line 151
    new-instance v2, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v5, 0x7f030031

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-array v8, v4, [I

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->launchLoader(Z)V

    goto/16 :goto_0

    .line 131
    .restart local v10       #album:Ljava/lang/String;
    .restart local v11       #artist:Ljava/lang/String;
    .restart local v12       #focus:Ljava/lang/String;
    .restart local v18       #title:Ljava/lang/String;
    :cond_5
    const-string v2, "vnd.android.cursor.item/album"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    if-eqz v10, :cond_3

    .line 133
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 134
    if-eqz v11, :cond_3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_1

    .line 138
    :cond_6
    const-string v2, "vnd.android.cursor.item/artist"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    if-eqz v11, :cond_3

    .line 140
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iput-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/high16 v8, 0x400

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 183
    const v3, 0x7f090044

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mToast:Landroid/widget/Toast;

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, selectedType:Ljava/lang/String;
    const-string v3, "artist"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.player.BROWSER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v3, "artist_id"

    invoke-virtual {v0, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "album"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.player.BROWSER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v3, "album_id"

    invoke-virtual {v0, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    if-ltz p3, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_5

    .line 212
    new-array v1, v7, [J

    aput-wide p4, v1, v6

    .line 213
    .local v1, list:[J
    invoke-static {p0, v1, v6}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 215
    .end local v1           #list:[J
    :cond_5
    const-string v3, "QueryBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position/id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
