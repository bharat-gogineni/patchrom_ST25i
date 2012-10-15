.class public Lcom/miui/gallery/cloud/PowerChangedRequestSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerChangedRequestSyncReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    const-string v1, "PowerChangedRequestSyncReceiver"

    const-string v2, "onReceive broadcast"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    const-string v1, "PowerChangedRequestSyncReceiver"

    const-string v2, "ACTION_POWER_CONNECTED."

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sPlugged:Z

    .line 22
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->isSyncCompletelyFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    const-string v1, "PowerChangedRequestSyncReceiver"

    const-string v2, "sync not completely finish, request sync."

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "PowerChangedRequestSyncReceiver"

    const-string v2, "ACTION_POWER_DISCONNECTED."

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sPlugged:Z

    goto :goto_0
.end method
