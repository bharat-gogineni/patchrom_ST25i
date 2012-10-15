.class public Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;
.super Ljava/lang/Thread;
.source "DownloadFromServerThreadBase.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mClient:Lorg/apache/http/client/HttpClient;

.field private mContext:Landroid/content/Context;

.field private mExtToken:Lmiui/net/ExtendedAuthToken;

.field private mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "extToken"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/miui/gallery/cloud/Network;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mClient:Lorg/apache/http/client/HttpClient;

    .line 31
    iput-object p2, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mAccount:Landroid/accounts/Account;

    .line 32
    iput-object p3, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    .line 33
    new-instance v0, Lcom/miui/gallery/cloud/SyncStateManager;

    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncStateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    .line 34
    return-void
.end method


# virtual methods
.method protected download(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;)I
    .locals 1
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public resetSyncStateManager()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    .line 38
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 43
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mAccount:Landroid/accounts/Account;

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mAccount:Landroid/accounts/Account;

    if-nez v1, :cond_2

    .line 71
    :goto_1
    return-void

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    if-nez v1, :cond_3

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 51
    .local v0, accountManager:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mAccount:Landroid/accounts/Account;

    const-string v2, "micgallery"

    const/4 v4, 0x1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v12

    .line 53
    .local v12, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v11, 0x0

    .line 55
    .local v11, extTokenStr:Ljava/lang/String;
    :try_start_0
    invoke-interface {v12}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 61
    invoke-static {v11}, Lmiui/net/ExtendedAuthToken;->parse(Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    .line 64
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v11           #extTokenStr:Ljava/lang/String;
    .end local v12           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_3
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    const-string v1, "DownloadFromServerThreadBase"

    const-string v2, "sd card is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 56
    .restart local v0       #accountManager:Landroid/accounts/AccountManager;
    .restart local v11       #extTokenStr:Ljava/lang/String;
    .restart local v12       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v10

    .line 57
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "DownloadFromServerThreadBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get extToken error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #extTokenStr:Ljava/lang/String;
    .end local v12           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_4
    :try_start_1
    const-string v1, "DownloadFromServerThreadBase"

    const-string v2, "thread is started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mClient:Lorg/apache/http/client/HttpClient;

    iget-object v7, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    iget-object v9, p0, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;->download(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 73
    :catch_1
    move-exception v10

    .line 74
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v1, "DownloadFromServerThreadBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
