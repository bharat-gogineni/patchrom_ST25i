.class Lcom/miui/home/launcher/InstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/InstallShortcutReceiver;

.field final synthetic val$app:Lcom/miui/home/launcher/LauncherApplication;

.field final synthetic val$intentData:Landroid/content/Intent;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$runningContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/InstallShortcutReceiver;Lcom/miui/home/launcher/LauncherApplication;Landroid/content/Intent;Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->this$0:Lcom/miui/home/launcher/InstallShortcutReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/LauncherApplication;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$intentData:Landroid/content/Intent;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$runningContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 46
    iget-object v3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v2

    .line 47
    .local v2, model:Lcom/miui/home/launcher/LauncherModel;
    if-nez v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 53
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 54
    const-string v3, "InstallShortcutReceiver"

    const-string v4, "Failed to add shortcut because the extra shortcut intent is missing"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 59
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$runningContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$intentData:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 63
    .local v0, info:Lcom/miui/home/launcher/ShortcutInfo;
    if-eqz v0, :cond_3

    .line 64
    iget-object v3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v3, "InstallShortcutReceiver"

    const-string v4, "Failed to add shortcut"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
