.class Lcom/miui/player/service/ConnectionListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/ConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConnectivityInit:Z

.field final synthetic this$0:Lcom/miui/player/service/ConnectionListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/ConnectionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/player/service/ConnectionListener$1;->this$0:Lcom/miui/player/service/ConnectionListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/ConnectionListener$1;->mConnectivityInit:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    iget-object v4, p0, Lcom/miui/player/service/ConnectionListener$1;->this$0:Lcom/miui/player/service/ConnectionListener;

    iget-object v1, v4, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 35
    .local v1, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-boolean v0, p0, Lcom/miui/player/service/ConnectionListener$1;->mConnectivityInit:Z

    .line 40
    .local v0, connectivityInit:Z
    iput-boolean v2, p0, Lcom/miui/player/service/ConnectionListener$1;->mConnectivityInit:Z

    .line 41
    if-eqz v0, :cond_0

    .line 44
    const-string v4, "noConnectivity"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->updateMetaOnConnChanged(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
