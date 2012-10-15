.class Lcom/miui/player/ui/AlbumBrowserActivity$2;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    iget-object v0, v0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    iget-object v1, v1, Lcom/miui/player/ui/AlbumBrowserActivity;->mDownloadAlbumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    sget-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    sput-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    .line 343
    :goto_0
    sget-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/player/ui/AlbumBrowserActivity;->sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    invoke-static {v0, v1}, Lcom/miui/player/network/AlbumDownloader;->downloadAll(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sDownloadToken:Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    .line 346
    :cond_0
    return-void

    .line 341
    :cond_1
    sget-object v0, Lcom/miui/player/ui/AlbumBrowserActivity;->sAlbumDownloadListener:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumDownloadAllListener;->setActivity(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    goto :goto_0
.end method
