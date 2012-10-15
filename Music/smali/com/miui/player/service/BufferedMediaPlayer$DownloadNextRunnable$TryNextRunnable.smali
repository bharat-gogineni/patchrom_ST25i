.class Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Lcom/miui/player/service/RunnableList$RemovableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TryNextRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRemovable()Z
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-boolean v0, v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->tryToDownload()V

    .line 1375
    return-void
.end method
