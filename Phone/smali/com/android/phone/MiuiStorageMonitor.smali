.class public Lcom/android/phone/MiuiStorageMonitor;
.super Ljava/lang/Object;
.source "MiuiStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiStorageMonitor$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingExternalStorage:Z

.field private mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/phone/MiuiStorageMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiStorageMonitor$1;-><init>(Lcom/android/phone/MiuiStorageMonitor;)V

    iput-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiverRegistered:Z

    .line 40
    new-instance v0, Lcom/android/phone/MiuiStorageMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiStorageMonitor$2;-><init>(Lcom/android/phone/MiuiStorageMonitor;)V

    iput-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/phone/MiuiStorageMonitor;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mIsUsingExternalStorage:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiStorageMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/phone/MiuiStorageMonitor;->checkStorageSpace()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiStorageMonitor;)Lcom/android/phone/MiuiStorageMonitor$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;

    return-object v0
.end method

.method private checkStorageSpace()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/phone/MiuiStorageMonitor;->isStorageSpaceLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/phone/MiuiStorageMonitor$Listener;->onError(I)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isStorageSpaceLow()Z
    .locals 9

    .prologue
    .line 57
    iget-boolean v5, p0, Lcom/android/phone/MiuiStorageMonitor;->mIsUsingExternalStorage:Z

    if-nez v5, :cond_0

    .line 58
    iget-object v5, p0, Lcom/android/phone/MiuiStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lmiui/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v5

    .line 65
    :goto_0
    return v5

    .line 61
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, stats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 64
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 65
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    const-wide/32 v7, 0x100000

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isUsingExternalStorage()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mIsUsingExternalStorage:Z

    return v0
.end method

.method public startMonitor(Lcom/android/phone/MiuiStorageMonitor$Listener;)I
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/MiuiStorageMonitor;->mIsUsingExternalStorage:Z

    .line 87
    invoke-direct {p0}, Lcom/android/phone/MiuiStorageMonitor;->isStorageSpaceLow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    :goto_0
    return v1

    .line 91
    :cond_0
    if-eqz p1, :cond_2

    .line 92
    iput-object p1, p0, Lcom/android/phone/MiuiStorageMonitor;->mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;

    .line 93
    iget-boolean v3, p0, Lcom/android/phone/MiuiStorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v3, :cond_1

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/phone/MiuiStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    iput-boolean v1, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiverRegistered:Z

    .line 101
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiStorageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-boolean v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iput-boolean v2, p0, Lcom/android/phone/MiuiStorageMonitor;->mReceiverRegistered:Z

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiStorageMonitor;->mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;

    .line 114
    return-void
.end method
