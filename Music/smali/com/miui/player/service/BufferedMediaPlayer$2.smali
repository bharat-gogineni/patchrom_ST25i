.class Lcom/miui/player/service/BufferedMediaPlayer$2;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer;

.field final synthetic val$appointName:Ljava/lang/String;

.field final synthetic val$details:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

    iput-object p3, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$appointName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$details:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 835
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v2, v2, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$appointName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->val$details:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;->onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$2;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 841
    return-void
.end method
