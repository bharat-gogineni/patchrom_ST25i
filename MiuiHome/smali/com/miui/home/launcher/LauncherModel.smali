.class public Lcom/miui/home/launcher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherModel$LoaderTask;,
        Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;,
        Lcom/miui/home/launcher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static sDelayedUpdateBuffer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mApp:Lcom/miui/home/launcher/LauncherApplication;

.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/miui/home/launcher/DeferredHandler;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedPresetPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadedUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 86
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 393
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/LauncherApplication;Lcom/miui/home/launcher/IconCache;)V
    .locals 1
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/miui/home/launcher/DeferredHandler;

    invoke-direct {v0}, Lcom/miui/home/launcher/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/miui/home/launcher/AllAppsList;

    invoke-direct {v0}, Lcom/miui/home/launcher/AllAppsList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mItems:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mGadgets:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedApps:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    .line 130
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mApp:Lcom/miui/home/launcher/LauncherApplication;

    .line 131
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1200(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 9
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 327
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V

    .line 328
    return-void
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V
    .locals 11
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "reload"

    .prologue
    .line 335
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 336
    iput-wide p4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 337
    move/from16 v0, p6

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 338
    move/from16 v0, p7

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherApplication;

    .line 341
    .local v1, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherProvider;->generateNewId()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 343
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 346
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 349
    const-string v5, "Launcher.Model"

    const-string v6, "Adding item to database (%d, %d) of screen %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-wide v9, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v3, Lcom/miui/home/launcher/LauncherModel$3;

    move/from16 v0, p8

    invoke-direct {v3, v2, v4, p1, v0}, Lcom/miui/home/launcher/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 376
    .local v3, r:Ljava/lang/Runnable;
    sget-object v5, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-eq v5, v6, :cond_0

    if-eqz p8, :cond_1

    .line 377
    :cond_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    sget-object v5, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 144
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    invoke-static/range {p0 .. p7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    goto :goto_0
.end method

.method static applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$2;

    invoke-direct {v1, v0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$2;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "Launcher.Model"

    const-string v3, "Deleting item from database (%d, %d) of screen %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$4;

    invoke-direct {v1, v0, p1, p0}, Lcom/miui/home/launcher/LauncherModel$4;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/ItemInfo;Landroid/content/Context;)V

    .line 449
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$5;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/LauncherModel$5;-><init>(Landroid/content/ContentResolver;Lcom/miui/home/launcher/FolderInfo;)V

    .line 462
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/miui/home/launcher/FolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;J)",
            "Lcom/miui/home/launcher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1782
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/miui/home/launcher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 1783
    .local v0, folderInfo:Lcom/miui/home/launcher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-nez v1, :cond_1

    .line 1785
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    .end local v0           #folderInfo:Lcom/miui/home/launcher/FolderInfo;
    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 1786
    .restart local v0       #folderInfo:Lcom/miui/home/launcher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    :cond_1
    return-object v0
.end method

.method static flashDelayedUpdateItemFlags(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 395
    sget-object v3, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 396
    const/4 v3, 0x0

    .line 405
    :goto_0
    return v3

    .line 398
    :cond_0
    sget-object v3, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 399
    .local v1, info:Lcom/miui/home/launcher/ItemInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "launchCount"

    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->launchCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v3, "itemFlags"

    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    iget-wide v3, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v3, v4, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    goto :goto_1

    .line 404
    .end local v1           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 405
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v1, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v1, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v1, "spanX"

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "spanY"

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v1, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1694
    new-instance v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v4}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 1696
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1697
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1698
    iput v8, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 1700
    iget-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 1702
    const-string v1, "Launcher.Model"

    const-string v2, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 1742
    :goto_0
    return-object v1

    .line 1706
    :cond_0
    const-string v1, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    iget-object v2, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1707
    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1708
    const/4 v1, 0x2

    iput v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    :goto_1
    move-object v1, v4

    .line 1742
    goto :goto_0

    .line 1711
    :cond_1
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1714
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1715
    check-cast v1, Landroid/graphics/Bitmap;

    .line 1716
    iput v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 1733
    :goto_2
    if-nez v1, :cond_5

    .line 1734
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1735
    iput-boolean v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1739
    :cond_2
    :goto_3
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1718
    :cond_3
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1719
    if-eqz v2, :cond_4

    instance-of v1, v2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_4

    .line 1721
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v1, v0

    iput-object v1, v4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1722
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1723
    iget-object v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1725
    iget-object v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v5, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1726
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 1729
    goto :goto_2

    .line 1727
    :catch_0
    move-exception v1

    .line 1728
    const-string v1, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load shortcut icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v3

    goto :goto_2

    .line 1736
    :cond_5
    const-string v2, "android.intent.extra.CUSTOMIZED_ICON_SHORTCUT"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1737
    iget v2, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    goto :goto_3
.end method

.method private makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1457
    if-eqz p1, :cond_2

    .line 1458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1459
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1463
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1464
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1466
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 1469
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v1, "cellX"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v1, "cellY"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v1, "spanX"

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v1, "spanY"

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    iput p6, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 237
    iput p7, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 238
    iput-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 239
    iput-wide p4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 241
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 242
    return-void
.end method

.method private onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1473
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1474
    :try_start_0
    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherModel;->makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1484
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 1485
    return-void

    .line 1484
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLoadShortcuts(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1449
    .local p1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1450
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1451
    .local v1, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 1453
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1454
    return-void
.end method

.method private onRemoveItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1496
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1497
    :try_start_0
    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 1498
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1501
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1502
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->deletePresetArchive()Z

    .line 1506
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherModel;->makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1508
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    monitor-exit v2

    .line 1509
    return-void

    .line 1508
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onRemoveItems(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p1, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1489
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 1490
    .local v1, info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1492
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1493
    return-void
.end method

.method private onRemovePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v1, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1514
    .local v2, uri:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1515
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1518
    .end local v2           #uri:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1519
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1521
    :cond_2
    return-void
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;IIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 177
    iput p4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 178
    iput p5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 179
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 180
    iput p3, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v1, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v1, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 189
    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 165
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 671
    .local v1, oldTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 672
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    const/4 v0, 0x1

    .line 675
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 677
    :cond_1
    return v0
.end method

.method static updateFolderTitleInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 387
    return-void
.end method

.method public static updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 409
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    .line 412
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 192
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 193
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$1;

    invoke-direct {v1, v0, v2, p3}, Lcom/miui/home/launcher/LauncherModel$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 201
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 424
    const-string v1, "Launcher.Model"

    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 428
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 11
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1663
    if-eqz p3, :cond_2

    iget-wide v4, p3, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1664
    .local v4, screenId:J
    :goto_0
    if-eqz p3, :cond_3

    iget v6, p3, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 1665
    .local v6, cellX:I
    :goto_1
    if-eqz p3, :cond_0

    iget v7, p3, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 1666
    .local v7, cellY:I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 1667
    .local v1, info:Lcom/miui/home/launcher/ShortcutInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_4

    :cond_1
    move-object v1, v0

    .line 1690
    .end local v1           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_2
    return-object v1

    .line 1663
    .end local v4           #screenId:J
    .end local v6           #cellX:I
    .end local v7           #cellY:I
    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_0

    .restart local v4       #screenId:J
    :cond_3
    move v6, v7

    .line 1664
    goto :goto_1

    .line 1670
    .restart local v1       #info:Lcom/miui/home/launcher/ShortcutInfo;
    .restart local v6       #cellX:I
    .restart local v7       #cellY:I
    :cond_4
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    .line 1671
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1672
    :try_start_0
    iget v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eq v3, v8, :cond_5

    .line 1673
    iget-object v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1674
    .local v9, component:Landroid/content/ComponentName;
    if-eqz v9, :cond_5

    .line 1675
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1676
    monitor-exit v2

    move-object v1, v0

    goto :goto_2

    .line 1680
    .end local v9           #component:Landroid/content/ComponentName;
    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mLoadedUris:Ljava/util/HashSet;

    iget-object v10, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v10}, Lcom/miui/home/launcher/LauncherModel;->makeUniquelyIntentKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1681
    monitor-exit v2

    move-object v1, v0

    goto :goto_2

    .line 1683
    :cond_6
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1685
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    :cond_7
    iput v8, v1, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    iput v8, v1, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 1688
    const-wide/16 v2, -0x64

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V

    .line 1689
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    goto :goto_2

    .line 1685
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1792
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->dumpState()V

    .line 1798
    :goto_0
    return-void

    .line 1796
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1654
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1656
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1658
    :goto_0
    return-object v2

    .line 1657
    :catch_0
    move-exception v1

    .line 1658
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 11
    .parameter "intent"
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1587
    const/4 v1, 0x0

    .line 1588
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v4}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 1589
    .local v4, info:Lcom/miui/home/launcher/ShortcutInfo;
    const/4 v9, 0x1

    iput v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 1590
    const/16 v9, 0x13

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 1594
    move/from16 v0, p8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1595
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 1596
    iget v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    packed-switch v9, :pswitch_data_0

    .line 1641
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1642
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1646
    :cond_1
    :goto_0
    const/4 v9, 0x2

    iget v10, v4, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-eq v9, v10, :cond_2

    .line 1647
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1648
    invoke-virtual {v4, p3}, Lcom/miui/home/launcher/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    .line 1650
    :cond_2
    return-object v4

    .line 1598
    :pswitch_0
    iput-object p1, v4, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1599
    invoke-virtual {v4, p3}, Lcom/miui/home/launcher/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 1602
    :pswitch_1
    move/from16 v0, p5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1603
    .local v6, packageName:Ljava/lang/String;
    move/from16 v0, p6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1604
    .local v7, resourceName:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1606
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1607
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->isRetained:Z

    .line 1611
    :cond_3
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1612
    .local v8, resources:Landroid/content/res/Resources;
    if-eqz v8, :cond_4

    .line 1613
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1614
    .local v3, id:I
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, p3}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1620
    .end local v3           #id:I
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_4
    :goto_1
    if-nez v1, :cond_1

    .line 1625
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #resourceName:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1626
    const/4 v9, 0x5

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "*"

    invoke-static {v9, v10}, Lmiui/content/res/IconCustomizer;->getCustomizedIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 1628
    .local v2, iconDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_5

    .line 1629
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1630
    iget v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 1633
    .end local v2           #iconDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    if-nez v1, :cond_6

    .line 1634
    move/from16 v0, p7

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1636
    :cond_6
    if-eqz v1, :cond_0

    goto :goto_0

    .line 1616
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v7       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 1596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1530
    const/4 v1, 0x0

    .line 1531
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v2}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 1533
    .local v2, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1534
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1535
    const/4 v2, 0x0

    .line 1577
    .end local v2           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_0
    return-object v2

    .line 1545
    .restart local v2       #info:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1546
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1547
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/miui/home/launcher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1550
    :cond_1
    if-nez v1, :cond_2

    .line 1551
    if-eqz p4, :cond_2

    .line 1552
    invoke-virtual {p0, p4, p5}, Lcom/miui/home/launcher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1556
    :cond_2
    if-nez v1, :cond_3

    .line 1557
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1558
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1560
    :cond_3
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1563
    if-eqz v3, :cond_4

    .line 1564
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1567
    :cond_4
    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1568
    if-eqz p4, :cond_5

    .line 1569
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1573
    :cond_5
    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1574
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1576
    :cond_6
    iput v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    goto :goto_0
.end method

.method public initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 471
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mApp:Lcom/miui/home/launcher/LauncherApplication;

    move-object/from16 p1, v0

    .line 482
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v4, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v16, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-object/from16 v6, v18

    .line 486
    .local v6, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :goto_0
    if-nez v6, :cond_2

    .line 487
    const-string v18, "Launcher.Model"

    const-string v19, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    :goto_1
    return-void

    .line 485
    .end local v6           #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 491
    .restart local v6       #callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    :cond_2
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Got action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 494
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, action:Ljava/lang/String;
    const-string v18, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 496
    .local v11, isAccessControl:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/AllAppsList;->clear()V

    .line 497
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    if-eqz v11, :cond_1b

    .line 501
    :cond_3
    if-eqz v11, :cond_6

    const-string v18, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 503
    .local v14, packageName:Ljava/lang/String;
    :goto_2
    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mLoadedPresetPackages:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_4
    const/16 v17, 0x1

    .line 506
    .local v17, replacing:Z
    :goto_3
    if-eqz v11, :cond_8

    const-string v18, "android.intent.extra.KEY_EVENT"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/high16 v20, 0x200

    and-int v18, v18, v20

    const/high16 v20, 0x200

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/4 v12, 0x1

    .line 509
    .local v12, isAccessControlHide:Z
    :goto_4
    const-string v18, "android.intent.extra.DONT_KILL_APP"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 511
    .local v7, dontKillApp:Z
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xe

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_5
    or-int v7, v7, v18

    .line 515
    :cond_5
    if-eqz v11, :cond_a

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 516
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 517
    monitor-exit v19

    goto/16 :goto_1

    .line 650
    .end local v3           #action:Ljava/lang/String;
    .end local v7           #dontKillApp:Z
    .end local v11           #isAccessControl:Z
    .end local v12           #isAccessControlHide:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #replacing:Z
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 501
    .restart local v3       #action:Ljava/lang/String;
    .restart local v11       #isAccessControl:Z
    :cond_6
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 503
    .restart local v14       #packageName:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 506
    .restart local v17       #replacing:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 512
    .restart local v7       #dontKillApp:Z
    .restart local v12       #isAccessControlHide:Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 520
    :cond_a
    if-eqz v11, :cond_b

    .line 521
    const-string v18, "android.intent.extra.KEY_EVENT"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/high16 v20, 0x200

    and-int v18, v18, v20

    const-string v20, "android.intent.extra.INITIAL_INTENTS"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/high16 v21, 0x200

    and-int v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 525
    monitor-exit v19

    goto/16 :goto_1

    .line 529
    :cond_b
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_d

    .line 531
    :cond_c
    monitor-exit v19

    goto/16 :goto_1

    .line 534
    :cond_d
    invoke-static {v14}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v14, v7}, Lcom/miui/home/launcher/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 547
    :try_start_3
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 574
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_16

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 577
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 578
    .local v10, info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconCache;->remove(Ljava/lang/String;)V

    goto :goto_7

    .line 537
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :catch_0
    move-exception v8

    .line 538
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v18, "Launcher.Model"

    const-string v20, "database didnot ready,ignore this change"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v19

    goto/16 :goto_1

    .line 549
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :cond_10
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 550
    if-nez v17, :cond_11

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 553
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/home/launcher/LauncherModel;->onRemovePackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 556
    :cond_12
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 557
    if-nez v17, :cond_13

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 560
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 562
    :cond_14
    if-eqz v11, :cond_e

    .line 563
    if-eqz v12, :cond_15

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 566
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 582
    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_17

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lcom/miui/home/launcher/LauncherModel$6;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 591
    :cond_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_18

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/miui/home/launcher/LauncherModel$7;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 600
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/miui/home/launcher/LauncherModel$8;-><init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 649
    .end local v7           #dontKillApp:Z
    .end local v12           #isAccessControlHide:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #replacing:Z
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/AllAppsList;->clear()V

    .line 650
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 651
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1a

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->onRemoveItems(Ljava/util/ArrayList;)V

    .line 654
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/home/launcher/LauncherModel;->onLoadShortcuts(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 606
    :cond_1b
    :try_start_4
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1c

    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 608
    :cond_1c
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 610
    .local v15, packages:[Ljava/lang/String;
    if-eqz v15, :cond_1d

    array-length v0, v15

    move/from16 v18, v0

    if-nez v18, :cond_1e

    .line 611
    :cond_1d
    monitor-exit v19

    goto/16 :goto_1

    .line 613
    :cond_1e
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 614
    move-object v5, v15

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_9
    if-ge v9, v13, :cond_1f

    aget-object v14, v5, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    .restart local v14       #packageName:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/miui/home/launcher/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 614
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 620
    :catch_1
    move-exception v8

    .line 621
    .restart local v8       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v18, "Launcher.Model"

    const-string v20, "database didnot ready,ignore this change"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    monitor-exit v19

    goto/16 :goto_1

    .line 625
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .end local v14           #packageName:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_19

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/miui/home/launcher/LauncherModel$9;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 634
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    :cond_20
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 635
    move-object v5, v15

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v13, v5

    .restart local v13       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_a
    if-ge v9, v13, :cond_21

    aget-object v14, v5, v9

    .line 636
    .restart local v14       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/miui/home/launcher/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 635
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 638
    .end local v14           #packageName:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_19

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mHandler:Lcom/miui/home/launcher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/miui/home/launcher/LauncherModel$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lcom/miui/home/launcher/LauncherModel$10;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeferredHandler;->post(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_8
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoader isLaunching="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p2, 0x1

    .line 691
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->isJustRestoreFinished()Z

    move-result v0

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;-><init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    .line 693
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 694
    sget-object v0, Lcom/miui/home/launcher/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    :cond_1
    monitor-exit v1

    .line 697
    return-void

    .line 690
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 700
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel;->mLoaderTask:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->stopLocked()V

    .line 704
    :cond_0
    monitor-exit v1

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopLoaderAsync()V
    .locals 1

    .prologue
    .line 708
    new-instance v0, Lcom/miui/home/launcher/LauncherModel$11;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherModel$11;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1752
    iget-boolean v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_1

    .line 1754
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1756
    if-eqz v2, :cond_0

    .line 1757
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1758
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1759
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 1766
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1767
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to save icon bitmap for info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 1774
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1759
    goto :goto_0

    .line 1763
    :catch_0
    move-exception v1

    goto :goto_0
.end method
