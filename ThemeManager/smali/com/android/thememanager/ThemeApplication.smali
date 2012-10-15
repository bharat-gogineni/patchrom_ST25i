.class public Lcom/android/thememanager/ThemeApplication;
.super Landroid/app/Application;
.source "ThemeApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, device:Ljava/lang/String;
    const-string v2, "mione"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "aries"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 21
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->mkThemeDir(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->initResource(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestoreFromBackup"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, backupFlagFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/thememanager/ThemeHelper;->updateUserPreferenceModifyTime(Landroid/content/Context;JJ)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 33
    :cond_1
    return-void
.end method
