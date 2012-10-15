.class public Lcom/miui/home/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static sScreenDensity:F


# instance fields
.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mJustRestoreFinished:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mJustRestoreFinished:Z

    return-void
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, appContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherApplication;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .end local v0           #appContext:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .restart local v0       #appContext:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/miui/home/launcher/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 127
    .local v0, launcher:Lcom/miui/home/launcher/Launcher;
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 133
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 134
    .local v0, launcher:Lcom/miui/home/launcher/Launcher;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 38
    invoke-static {p1}, Lcom/miui/home/launcher/ResConfig;->Init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method isJustRestoreFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mJustRestoreFinished:Z

    if-eqz v1, :cond_0

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mJustRestoreFinished:Z

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/miui/home/launcher/LauncherApplication;->sScreenDensity:F

    .line 48
    new-instance v1, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Lcom/miui/home/launcher/LauncherApplication;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 49
    new-instance v1, Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/LauncherApplication;Lcom/miui/home/launcher/IconCache;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method

.method setJustRestoreFinished()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mJustRestoreFinished:Z

    .line 115
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method
