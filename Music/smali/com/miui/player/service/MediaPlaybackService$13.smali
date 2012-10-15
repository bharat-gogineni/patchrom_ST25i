.class Lcom/miui/player/service/MediaPlaybackService$13;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$13;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2752
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2753
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$13;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/util/FolderProvider;->markForceUpdate()V

    .line 2754
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$13;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/util/PlaylistRecoverer;->instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/util/PlaylistRecoverer;->markForceRecover()V

    .line 2755
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$13;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.MEDIA_PROVIDER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2757
    :cond_0
    return-void
.end method
