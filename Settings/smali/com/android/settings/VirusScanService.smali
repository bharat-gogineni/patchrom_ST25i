.class public Lcom/android/settings/VirusScanService;
.super Landroid/app/Service;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VirusScanService$PackageDeleteObserver;,
        Lcom/android/settings/VirusScanService$ScanBinder;,
        Lcom/android/settings/VirusScanService$OnVirusScanListener;
    }
.end annotation


# static fields
.field private static mIsStarted:Z


# instance fields
.field private mAppData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ScanAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

.field private mIsFinish:Z

.field private mIsForceStop:Z

.field private mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;

.field private mRiskDataIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScannedCount:I

.field private mSelectedRiskCount:I

.field private mUninstalledCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/VirusScanService;->mIsStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanService$ScanBinder;-><init>(Lcom/android/settings/VirusScanService;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/VirusScanService;->mIsForceStop:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/VirusScanService;->mIsFinish:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VirusScanService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings/VirusScanService;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/VirusScanService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/VirusScanService;->mIsForceStop:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$OnVirusScanListener;)Lcom/android/settings/VirusScanService$OnVirusScanListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->uninstallApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    return v0
.end method

.method static synthetic access$404(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    return v0
.end method

.method static synthetic access$406(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->startScan()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mScannedCount:I

    return v0
.end method

.method static synthetic access$604(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mScannedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mScannedCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    return v0
.end method

.method static synthetic access$804(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/VirusScanService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings/VirusScanService;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/VirusScanService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings/VirusScanService;->mIsFinish:Z

    return p1
.end method

.method private getAppData()V
    .locals 7

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 267
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 268
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 269
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 270
    new-instance v4, Lcom/android/settings/ScanAppData;

    invoke-direct {v4}, Lcom/android/settings/ScanAppData;-><init>()V

    .line 271
    .local v4, tmpInfo:Lcom/android/settings/ScanAppData;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings/ScanAppData;->mPackageName:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/ScanAppData;->mAppName:Ljava/lang/String;

    .line 273
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings/ScanAppData;->mFullPath:Ljava/lang/String;

    .line 274
    iget-object v5, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v4           #tmpInfo:Lcom/android/settings/ScanAppData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method public static isStarted()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/settings/VirusScanService;->mIsStarted:Z

    return v0
.end method

.method private startScan()V
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/settings/VirusScanService;->mIsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/VirusScanService;->mIsForceStop:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/VirusScanService;->mIsStarted:Z

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/VirusScanService;->mIsForceStop:Z

    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/VirusScanService$1;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanService$1;-><init>(Lcom/android/settings/VirusScanService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    :cond_1
    return-void
.end method

.method private uninstallApps()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    sget-boolean v2, Lcom/android/settings/VirusScanService;->mIsStarted:Z

    if-eqz v2, :cond_1

    .line 165
    iput v6, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    .line 166
    iget-object v2, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    .line 167
    .local v0, data:Lcom/android/settings/ScanAppData;
    iget-object v2, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    sget-object v3, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/settings/ScanAppData;->mChecked:Z

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/ScanAppData;->mPackageName:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/VirusScanService$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/VirusScanService$PackageDeleteObserver;-><init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$1;)V

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_0

    .line 173
    .end local v0           #data:Lcom/android/settings/ScanAppData;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->getAppData()V

    .line 250
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/VirusScanService;->mIsStarted:Z

    .line 262
    return-void
.end method
