.class public Lcom/miui/player/service/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# instance fields
.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field mServcie:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/miui/player/service/ConnectionListener$1;

    invoke-direct {v0, p0}, Lcom/miui/player/service/ConnectionListener$1;-><init>(Lcom/miui/player/service/ConnectionListener;)V

    iput-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mConnReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public registerConnReceiver(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/miui/player/service/ConnectionListener;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    iput-object p1, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 18
    return-void
.end method

.method public unregisterConnReceiver()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/service/ConnectionListener;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/ConnectionListener;->mServcie:Lcom/miui/player/service/MediaPlaybackService;

    .line 25
    :cond_0
    return-void
.end method
