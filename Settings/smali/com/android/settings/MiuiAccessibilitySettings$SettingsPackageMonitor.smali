.class Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "MiuiAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;Lcom/android/settings/MiuiAccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/MiuiAccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 504
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 505
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 510
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 511
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 516
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 517
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/MiuiAccessibilitySettings;->access$300(Lcom/android/settings/MiuiAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 523
    return-void
.end method
