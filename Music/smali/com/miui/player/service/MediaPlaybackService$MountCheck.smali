.class Lcom/miui/player/service/MediaPlaybackService$MountCheck;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/service/MediaPlaybackService$CheckAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 942
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/player/util/SqlUtils;->getCardId(Landroid/content/Context;)I

    move-result v0

    .line 943
    .local v0, cardId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lmiui/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 945
    :cond_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iput v0, v2, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    .line 946
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2, v1}, Lcom/miui/player/service/MediaPlaybackService;->reloadQueue(Z)V

    .line 947
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 948
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$MountCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "meta_changed_track"

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 952
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
