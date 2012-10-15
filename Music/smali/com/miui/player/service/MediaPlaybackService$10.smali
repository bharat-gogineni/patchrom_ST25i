.class Lcom/miui/player/service/MediaPlaybackService$10;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/MediaPlaybackService;->registerExternalStorageListener()V
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
    .line 905
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0xa

    .line 908
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 911
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 912
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/player/service/MediaPlaybackService$MountCheck;

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v3, v4}, Lcom/miui/player/service/MediaPlaybackService$MountCheck;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    invoke-virtual {v1, v2, v5, v5, v3}, Lcom/miui/player/service/MediaPlaybackService;->loopCheck(Landroid/os/Handler;IILcom/miui/player/service/MediaPlaybackService$CheckAction;)V

    goto :goto_0

    .line 915
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    sget-object v1, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v2, "finish scan"

    invoke-static {v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$10;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/util/FolderProvider;->markForceUpdate()V

    goto :goto_0
.end method
