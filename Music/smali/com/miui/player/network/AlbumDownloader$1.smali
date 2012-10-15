.class final Lcom/miui/player/network/AlbumDownloader$1;
.super Landroid/os/AsyncTask;
.source "AlbumDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/AlbumDownloader;->downloadAll(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/player/meta/AlbumInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$listener:Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 317
    iget-object v5, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/player/network/AlbumDownloader;->prepareAlbumList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 318
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/meta/AlbumInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 337
    :goto_0
    return-object v5

    .line 322
    :cond_1
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to download album, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, count:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/AlbumInfo;

    .line 325
    .local v3, info:Lcom/miui/player/meta/AlbumInfo;
    invoke-virtual {p0}, Lcom/miui/player/network/AlbumDownloader$1;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/player/network/AlbumDownloader;->allowAlbumDownload(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 326
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 329
    :cond_4
    iget-object v5, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/miui/player/network/AlbumDownloader;->download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 331
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, "%d: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-static {v5, v6, v7}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    .line 333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 334
    new-array v5, v10, [Lcom/miui/player/meta/AlbumInfo;

    aput-object v3, v5, v9

    invoke-virtual {p0, v5}, Lcom/miui/player/network/AlbumDownloader$1;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 337
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #info:Lcom/miui/player/meta/AlbumInfo;
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/AlbumDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/AlbumDownloader$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/miui/player/meta/AlbumInfo;)V
    .locals 2
    .parameter "infoArr"

    .prologue
    .line 342
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 343
    .local v0, info:Lcom/miui/player/meta/AlbumInfo;
    iget-object v1, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$listener:Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/miui/player/network/AlbumDownloader$1;->val$listener:Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;

    invoke-interface {v1, v0}, Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;->onUpdate(Lcom/miui/player/meta/AlbumInfo;)V

    .line 346
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, [Lcom/miui/player/meta/AlbumInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/AlbumDownloader$1;->onProgressUpdate([Lcom/miui/player/meta/AlbumInfo;)V

    return-void
.end method
