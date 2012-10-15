.class public final Lcom/miui/gallery/app/Gallery;
.super Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;
.source "Gallery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;-><init>()V

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 168
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 163
    .restart local v1       #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 165
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    const-string v2, "Gallery"

    const-string v3, "action PICK is not supported"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, type:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    const-string v2, "/image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_2
    const-string v2, "/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "video/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v1           #type:Ljava/lang/String;
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    :cond_6
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/app/StateManager;->isStackEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto :goto_0

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/app/StateManager;->isTopThirdParty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/app/StateManager;->destroy()V

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto :goto_0

    .line 126
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method private prepareDataForPhotoPage(Landroid/content/Intent;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 9
    .parameter "intent"
    .parameter "data"
    .parameter "uri"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    .line 175
    .local v1, dm:Lcom/miui/gallery/data/DataManager;
    const-string v7, "SingleItemOnly"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 177
    .local v6, singleItemOnly:Z
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Lmiui/os/ExtraFileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, folderPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isVideoFromFilePath(Ljava/lang/String;)Z

    move-result v4

    .line 187
    .local v4, isVideo:Z
    invoke-static {p2, v2, v3, v4, v6}, Lcom/miui/gallery/app/PhotoPage;->sPrepareIntentDataForStorageItem(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 192
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #folderPath:Ljava/lang/String;
    .end local v4           #isVideo:Z
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "media-item-path"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 194
    :cond_1
    invoke-virtual {v1, p3}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 195
    .local v5, itemPath:Lcom/miui/gallery/data/Path;
    invoke-virtual {v1, v5}, Lcom/miui/gallery/data/DataManager;->getDefaultSetOf(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 197
    .local v0, albumPath:Lcom/miui/gallery/data/Path;
    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    .line 198
    const-string v7, "media-set-path"

    invoke-virtual {v0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    const-string v7, "media-item-path"

    invoke-virtual {v5}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0           #albumPath:Lcom/miui/gallery/data/Path;
    .end local v5           #itemPath:Lcom/miui/gallery/data/Path;
    :cond_3
    return-void
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 150
    :goto_0
    const-string v1, "get-content"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 152
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/app/StateManager;->setLaunchGalleryOnTop(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 157
    return-void

    .line 147
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 206
    const-string v0, "slideshow"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/miui/gallery/app/StateManager;->setLaunchGalleryOnTop(Z)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 210
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/gallery/data/MediaItem;

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 226
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 227
    if-nez v1, :cond_3

    .line 228
    const v0, 0x7f0d0056

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->finish()V

    goto :goto_0

    .line 233
    :cond_3
    if-nez v0, :cond_4

    .line 234
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 235
    const-string v1, "type-bits"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/StateManager;->setLaunchGalleryOnTop(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 240
    :cond_4
    const-string v4, "vnd.android.cursor.dir"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 242
    const-string v1, "mediaTypes"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 243
    if-eqz v1, :cond_5

    .line 244
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mediaTypes"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 248
    :cond_5
    invoke-virtual {v3, v0}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 249
    const/4 v1, 0x0

    .line 250
    if-eqz v4, :cond_9

    .line 251
    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_9

    instance-of v3, v0, Lcom/miui/gallery/data/MediaSet;

    if-eqz v3, :cond_9

    .line 253
    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    .line 256
    :goto_1
    if-eqz v0, :cond_7

    .line 257
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    const-string v0, "media-path"

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 261
    :cond_6
    const-string v0, "media-path"

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 265
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 268
    :cond_8
    invoke-direct {p0, p1, v2, v0}, Lcom/miui/gallery/app/Gallery;->prepareDataForPhotoPage(Landroid/content/Intent;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 270
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->destroy()V

    .line 271
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/StateManager;->setTopThirdParty(Z)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const-string v1, "Gallery"

    const-string v2, "test Gallery.onCreate() start"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryDBHelper()Lcom/miui/gallery/util/GalleryDBHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "Gallery"

    const-string v2, "fail to init gallery db helper; finish the activity"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v1, 0x7f0d013e

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/Gallery;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->finish()V

    .line 72
    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 p1, 0x0

    .line 75
    if-eqz p1, :cond_1

    .line 76
    const-string v1, "Gallery"

    const-string v2, "Gallery savedInstanceState != null"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 84
    :goto_0
    const-string v1, "Gallery"

    const-string v2, "test Gallery.onCreate() end"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/Gallery;->initializeByIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->onDestroy()V

    .line 280
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 281
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Gallery;->initializeByIntent(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 292
    const-string v0, "Gallery"

    const-string v1, "test Gallery.onResume() start"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->tryDestroyCloudPages()V

    .line 300
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->onResume()V

    .line 303
    const-string v0, "Gallery"

    const-string v1, "test Gallery.onResume() end"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected requestFeatures()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->requestWindowFeature(I)Z

    .line 91
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->requestWindowFeature(I)Z

    .line 92
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->requestWindowFeature(I)Z

    .line 94
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/Gallery;->setContentView(I)V

    .line 95
    return-void
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/Config$GlobalConfig;->onlyShowCloud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/app/Gallery;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
