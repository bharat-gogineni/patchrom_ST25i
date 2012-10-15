.class Lcom/miui/player/service/MediaPlaybackService$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 388
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/player/service/MediaPlaybackService;->mScreenOn:Z

    .line 394
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "shake_while_screen_on"

    invoke-static {v1, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-boolean v1, v1, Lcom/miui/player/service/MediaPlaybackService;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, v1, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v1}, Lcom/miui/player/service/ShakeListener;->register()V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$4;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, v1, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v1}, Lcom/miui/player/service/ShakeListener;->unregister()V

    goto :goto_0
.end method
