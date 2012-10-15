.class Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;
.super Ljava/lang/Object;
.source "AlbumDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/AlbumDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadAlbumRunnable"
.end annotation


# instance fields
.field mAlbum:Lcom/miui/player/meta/AlbumInfo;

.field final mContext:Landroid/content/Context;

.field final mOnlineId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "album"
    .parameter "onlineId"

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;->mContext:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;->mAlbum:Lcom/miui/player/meta/AlbumInfo;

    .line 263
    iput-object p3, p0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;->mOnlineId:Ljava/lang/String;

    .line 264
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 268
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;->mAlbum:Lcom/miui/player/meta/AlbumInfo;

    iget-object v4, p0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;->mOnlineId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/miui/player/network/AlbumDownloader;->download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 268
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
