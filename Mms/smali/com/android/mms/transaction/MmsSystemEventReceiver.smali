.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# static fields
.field private static sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsAvailable:Z

.field private mListening:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v1, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;

    iget-object v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/os/Handler;)V

    .line 112
    .local v2, settingsObserver:Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    const-string v3, "always_enable_mms"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    return-void
.end method

.method public static getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    goto :goto_0
.end method

.method private wakeUpService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    const-string v0, "wakeUpService: start transaction service ..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsAvailable:Z

    return v0
.end method

.method public isMmsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_enable_mms"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForMmsAvailability()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mListening:Z

    .line 90
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const-string v0, "Intent received: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const-string v0, "deleted_contents"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 137
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-static {p1, v2, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 144
    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsAvailable:Z

    if-nez v0, :cond_0

    .line 151
    const-string v0, "MMS connectivity becomes available"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iput-boolean v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsAvailable:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->updateMmsAvailability()V

    goto :goto_0

    .line 156
    :cond_3
    iput-boolean v2, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsAvailable:Z

    goto :goto_0
.end method

.method public unlistenForMmsAvailability()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mListening:Z

    .line 94
    return-void
.end method

.method public updateMmsAvailability()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isMmsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    .line 86
    :cond_0
    return-void
.end method
