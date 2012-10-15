.class public Lcom/miui/gallery/cloud/GallerySyncService;
.super Landroid/app/Service;
.source "GallerySyncService.java"


# static fields
.field private static mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private static sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miui/gallery/cloud/GallerySyncAdapter;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 62
    const-string v0, "GallerySyncService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    sget-object v2, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/miui/gallery/cloud/GallerySyncAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/GallerySyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/gallery/cloud/GallerySyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    .line 30
    :cond_0
    const-string v1, "GallerySyncService"

    const-string v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v1, Lcom/miui/gallery/cloud/GallerySyncService$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/cloud/GallerySyncService$1;-><init>(Lcom/miui/gallery/cloud/GallerySyncService;)V

    sput-object v1, Lcom/miui/gallery/cloud/GallerySyncService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "GallerySyncService"

    const-string v3, "register connectionReceiver"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v1, Lcom/miui/gallery/cloud/GallerySyncService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/cloud/GallerySyncService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    monitor-exit v2

    .line 58
    return-void

    .line 57
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "GallerySyncService"

    const-string v1, "unregister connectionReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    :cond_0
    return-void
.end method
