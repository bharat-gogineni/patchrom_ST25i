.class public Lcom/xiaomi/mms/transaction/MxActivationConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MxActivationConnectivityReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static enableReceiver(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 45
    new-instance v2, Landroid/content/ComponentName;

    const-class v0, Lcom/xiaomi/mms/transaction/MxActivationConnectivityReceiver;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 48
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 52
    const-string v0, "MxActivationConnectivityReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectivity listener is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 21
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    .local v0, noConnectivity:Z
    if-nez v0, :cond_1

    .line 24
    invoke-static {p1}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/mms/transaction/PushStatus;->getStatus()Lcom/xiaomi/mms/transaction/PushStatus$Status;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mms/transaction/PushStatus$Status;->DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    if-ne v1, v2, :cond_0

    .line 29
    const-string v1, "MxActivationConnectivityReceiver"

    const-string v2, "push not established, connect now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x1

    invoke-static {p1, v1, v3}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMx(Landroid/content/Context;ZZ)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {p1, v3}, Lcom/xiaomi/mms/transaction/MxActivationConnectivityReceiver;->enableReceiver(Landroid/content/Context;Z)V

    goto :goto_0
.end method
