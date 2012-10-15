.class public Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;
.super Landroid/os/AsyncTask;
.source "AlbumDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/AlbumDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumUrlListGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mMetaInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

.field protected final mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)V
    .locals 0
    .parameter "context"
    .parameter "metaInfo"
    .parameter "searchInfo"

    .prologue
    .line 438
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mContext:Landroid/content/Context;

    .line 440
    iput-object p2, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    .line 441
    iput-object p3, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    .line 442
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
    .locals 2
    .parameter "params"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v0, v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v0, v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    #calls: Lcom/miui/player/network/AlbumDownloader;->requestList(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
    invoke-static {v0, v1}, Lcom/miui/player/network/AlbumDownloader;->access$000(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 429
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    move-result-object v0

    return-object v0
.end method
