.class public Lcom/android/thememanager/service/ThemeManagerService;
.super Landroid/app/Service;
.source "ThemeManagerService.java"


# instance fields
.field private mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lcom/android/thememanager/service/ThemeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/thememanager/service/ThemeManagerService$1;-><init>(Lcom/android/thememanager/service/ThemeManagerService;)V

    iput-object v0, p0, Lcom/android/thememanager/service/ThemeManagerService;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/service/ThemeManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/thememanager/service/ThemeManagerService;->saveLockWallPaper_Impl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveLockWallPaper_Impl(Ljava/lang/String;)Z
    .locals 4
    .parameter "srcImagePath"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, ret:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->mkThemeDir(Landroid/content/Context;)V

    .line 37
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/theme//lock_wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->updateLockWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/thememanager/service/ThemeManagerService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method
