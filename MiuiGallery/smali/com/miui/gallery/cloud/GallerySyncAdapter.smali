.class public Lcom/miui/gallery/cloud/GallerySyncAdapter;
.super Lmiui/net/MiCloudSyncAdapterBase;
.source "GallerySyncAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sPlugged:Z

.field public static sProxyHelper:Lcn/kuaipan/kss/implement/HttpClientProxyHelper;


# instance fields
.field private mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

.field private mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "autoInitialize"

    .prologue
    .line 44
    const-string v0, "micgallery"

    invoke-direct {p0, p1, p2, v0}, Lmiui/net/MiCloudSyncAdapterBase;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 45
    new-instance v0, Lcom/miui/gallery/cloud/SyncStateManager;

    iget-object v1, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncStateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    .line 48
    new-instance v0, Lcom/miui/gallery/cloud/GallerySyncAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/GallerySyncAdapter$1;-><init>(Lcom/miui/gallery/cloud/GallerySyncAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method private tryDeleteAccount(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 209
    sget-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccount(Landroid/content/Context;Landroid/accounts/Account;Z)V

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public checkNetState(IZ)V
    .locals 1
    .parameter "checkType"
    .parameter "isBackground"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/SyncStateManager;->checkNetState(IZ)I

    .line 217
    return-void
.end method

.method protected onPerformMiCloudSync()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "onPerformMiCloudSync"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 69
    .local v9, startTime:J
    const/4 v8, 0x0

    .line 71
    .local v8, result:I
    const/4 v11, 0x0

    .line 72
    .local v11, wifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 75
    .local v12, wm:Landroid/net/wifi/WifiManager;
    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "on sync start"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x3

    sget-object v2, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v11

    .line 78
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_0

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_1

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto :goto_0

    .line 85
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->forceStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 88
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/net/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    .line 96
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/net/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result v8

    .line 97
    const/4 v0, 0x2

    if-ne v8, v0, :cond_8

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_4

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_7

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v6

    .line 90
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "interrupted"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/net/ParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_5

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_6

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 101
    :cond_8
    :try_start_5
    invoke-static {}, Lcom/miui/gallery/cloud/Network;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 104
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v0, Lcn/kuaipan/kss/implement/HttpClientProxyHelper;

    invoke-direct {v0}, Lcn/kuaipan/kss/implement/HttpClientProxyHelper;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sProxyHelper:Lcn/kuaipan/kss/implement/HttpClientProxyHelper;

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lmiui/net/ExtendedAuthToken;

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getProxies(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)[Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, proxies:[Ljava/lang/String;
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sProxyHelper:Lcn/kuaipan/kss/implement/HttpClientProxyHelper;

    invoke-virtual {v0, v7}, Lcn/kuaipan/kss/implement/HttpClientProxyHelper;->init([Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v2}, Lmiui/provider/GalleryCloudSyncTagUtils;->insertAccountToDB(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/net/ParseException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v8

    .line 115
    const/4 v0, 0x2

    if-ne v8, v0, :cond_b

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_9

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_9
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_a

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 118
    :cond_b
    :try_start_6
    const-string v0, "SyncStateManager"

    const-string v2, "\u540e\u53f0\u5f00\u59cb\u548c\u670d\u52a1\u5668\u8fdb\u884c\u8054\u7cfb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lmiui/net/ExtendedAuthToken;

    iget-object v4, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/miui/gallery/cloud/SyncFromServer;->syncFromServer(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/net/ParseException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v8

    .line 124
    const/4 v0, 0x2

    if-ne v8, v0, :cond_e

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_c

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_c
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_d

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 127
    :cond_e
    :try_start_7
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lmiui/net/ExtendedAuthToken;

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/cloud/FindBrokens;->tryFindBrokens(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I

    move-result v8

    .line 132
    const/4 v0, 0x2

    if-eq v8, v0, :cond_f

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/net/ParseException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v0

    if-nez v0, :cond_12

    .line 192
    :cond_f
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_10

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_10
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_11

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_11
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 137
    :cond_12
    :try_start_8
    const-string v0, "SyncStateManager"

    const-string v2, "\u540e\u53f0\u5f00\u59cb\u4e0a\u4f20\u7167\u7247"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lmiui/net/ExtendedAuthToken;

    iget-object v4, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/cloud/SyncFromLocal;->syncFromLocal(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I

    move-result v8

    .line 144
    const/4 v0, 0x2

    if-eq v8, v0, :cond_13

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/net/ParseException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result v0

    if-nez v0, :cond_16

    .line 192
    :cond_13
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_14

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_14
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_15

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 149
    :cond_16
    :try_start_9
    const-string v0, "SyncStateManager"

    const-string v2, "\u540e\u53f0\u5f00\u59cb\u4e0b\u8f7d\u7f29\u7565\u56fe"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lmiui/net/ExtendedAuthToken;

    iget-object v4, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/DownloadFromServer;->downloadMicroThumbnailFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)I

    move-result v8

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I

    move-result v8

    .line 156
    const/4 v0, 0x2

    if-eq v8, v0, :cond_17

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/net/ParseException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result v0

    if-nez v0, :cond_1a

    .line 192
    :cond_17
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_18

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_18
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_19

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_19
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 161
    :cond_1a
    :try_start_a
    const-string v0, "SyncStateManager"

    const-string v2, "\u540e\u53f0\u5f00\u59cb\u4e0b\u8f7d\u5927\u56fe"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mExtToken:Lmiui/net/ExtendedAuthToken;

    iget-object v4, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/DownloadFromServer;->downloadThumbnailFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)I

    move-result v8

    .line 165
    invoke-static {}, Lcom/miui/gallery/cloud/ScanWorkerThread;->canStart()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 166
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "start the slow scan"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/miui/gallery/cloud/ScanWorkerThread;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mThread:Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->start()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/net/ParseException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 192
    :cond_1b
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_1c

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_1c
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_1d

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_1d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 171
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #proxies:[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 172
    .local v6, e:Lorg/json/JSONException;
    :try_start_b
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "JSONException"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_1e

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_1e
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_1f

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_1f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 174
    .end local v6           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v6

    .line 175
    .local v6, e:Ljava/net/URISyntaxException;
    :try_start_c
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "URISyntaxException"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_20

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_20
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_21

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 177
    .end local v6           #e:Ljava/net/URISyntaxException;
    :catch_3
    move-exception v6

    .line 178
    .local v6, e:Landroid/accounts/OperationCanceledException;
    :try_start_d
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "OperationCanceledExcetpion"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_22

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_22
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_23

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 179
    .end local v6           #e:Landroid/accounts/OperationCanceledException;
    :catch_4
    move-exception v6

    .line 180
    .local v6, e:Ljava/io/IOException;
    :try_start_e
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_24

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_24
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_25

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_25
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 182
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 183
    .local v6, e:Landroid/net/ParseException;
    :try_start_f
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ParseException"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_26

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_26
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_27

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 185
    .end local v6           #e:Landroid/net/ParseException;
    :catch_6
    move-exception v6

    .line 186
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_10
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_28

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_28
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_29

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_29
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 188
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v6

    .line 190
    .local v6, e:Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 192
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform sync finished, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_2a

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_2a
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_2b

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 203
    :cond_2b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto/16 :goto_0

    .line 192
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perform sync finished, time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->tryDeleteAccount(Landroid/accounts/Account;)V

    .line 194
    if-eqz v11, :cond_2c

    .line 195
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 196
    const/4 v11, 0x0

    .line 198
    :cond_2c
    iget-object v2, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    if-nez v8, :cond_2d

    .line 201
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    .line 203
    :goto_1
    throw v0

    :cond_2d
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gallery/settings/PreferenceHelper;->setSyncCompletelyFinish(Z)V

    goto :goto_1
.end method

.method public onSyncCanceled()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->TAG:Ljava/lang/String;

    const-string v1, "on sync canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/cloud/GallerySyncAdapter;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    .line 223
    invoke-super {p0}, Lmiui/net/MiCloudSyncAdapterBase;->onSyncCanceled()V

    .line 224
    return-void
.end method
