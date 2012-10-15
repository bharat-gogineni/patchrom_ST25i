.class final Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;
.super Landroid/database/ContentObserver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/MediaPlaybackService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2763
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    .line 2764
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2765
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 2769
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2771
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v1, "media provider changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMediaObserverHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2773
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMediaObserverHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2775
    return-void
.end method
