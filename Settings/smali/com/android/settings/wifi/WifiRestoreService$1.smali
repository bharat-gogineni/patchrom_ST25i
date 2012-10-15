.class Lcom/android/settings/wifi/WifiRestoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiRestoreService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #calls: Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiRestoreService;->access$100(Lcom/android/settings/wifi/WifiRestoreService;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #calls: Lcom/android/settings/wifi/WifiRestoreService;->updateWifiList()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiRestoreService;->access$200(Lcom/android/settings/wifi/WifiRestoreService;)V

    goto :goto_0
.end method
