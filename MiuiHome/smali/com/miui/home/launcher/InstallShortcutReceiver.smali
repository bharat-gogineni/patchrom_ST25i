.class public Lcom/miui/home/launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 30
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherApplication;

    .line 35
    .local v2, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    .line 36
    .local v5, launcher:Lcom/miui/home/launcher/Launcher;
    move-object v3, p2

    .line 37
    .local v3, intentData:Landroid/content/Intent;
    move-object v4, p1

    .line 38
    .local v4, runningContext:Landroid/content/Context;
    if-nez v5, :cond_1

    .line 39
    const-string v0, "InstallShortcutReceiver"

    const-string v1, "Launcher is not running,process later"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/InstallShortcutReceiver$1;-><init>(Lcom/miui/home/launcher/InstallShortcutReceiver;Lcom/miui/home/launcher/LauncherApplication;Landroid/content/Intent;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
