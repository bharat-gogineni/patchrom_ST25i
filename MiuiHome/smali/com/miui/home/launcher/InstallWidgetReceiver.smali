.class public Lcom/miui/home/launcher/InstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallWidgetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 21
    const-string v4, "com.miui.home.launcher.action.INSTALL_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 26
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    .line 27
    .local v2, launcher:Lcom/miui/home/launcher/Launcher;
    move-object v1, p2

    .line 28
    .local v1, intentData:Landroid/content/Intent;
    move-object v3, p1

    .line 29
    .local v3, runningContext:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 30
    const-string v4, "InstallWidgetReceiver"

    const-string v5, "Launcher is not running,process later"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_1
    new-instance v4, Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/miui/home/launcher/InstallWidgetReceiver$1;-><init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
