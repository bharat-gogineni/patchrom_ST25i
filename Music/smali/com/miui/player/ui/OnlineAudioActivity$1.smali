.class Lcom/miui/player/ui/OnlineAudioActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "OnlineAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineAudioActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineAudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/miui/player/ui/OnlineAudioActivity$1;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.player.DOWNLOAD_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$1;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$1;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineAudioAdapter;->updateDownloadStatus()V

    .line 224
    :cond_0
    return-void
.end method
