.class Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;
.super Ljava/lang/Thread;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAlbumThread"
.end annotation


# instance fields
.field final mAlbumName:Ljava/lang/String;

.field final mArtistName:Ljava/lang/String;

.field final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2635
    iput-object p2, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mTrackName:Ljava/lang/String;

    .line 2636
    iput-object p3, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    .line 2637
    iput-object p4, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    .line 2638
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2642
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    .line 2643
    iget-object v9, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    new-instance v0, Lcom/miui/player/meta/AlbumInfo;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mTrackName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v0}, Lcom/miui/player/network/AlbumDownloader;->download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2645
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2646
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2647
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2648
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2653
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v8           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 2642
    .restart local v6       #bm:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
