.class public Lcom/xiaomi/mms/transaction/MxTaskService;
.super Landroid/app/IntentService;
.source "MxTaskService.java"


# instance fields
.field private final REQ_LOCK:Ljava/lang/Object;

.field private mRequest:Lcom/xiaomi/mms/net/SimpleRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "MxTaskService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->REQ_LOCK:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private queryPresence(Ljava/lang/String;)V
    .locals 4
    .parameter "mid"

    .prologue
    .line 103
    invoke-static {}, Lcom/android/mms/MmsApp;->getMyFullMid()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, myMid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "MxTaskService"

    const-string v3, "push channel not ready, skip query presence"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v1, Lmiui/push/Presence;

    sget-object v2, Lmiui/push/Presence$Type;->probe:Lmiui/push/Presence$Type;

    invoke-direct {v1, v2}, Lmiui/push/Presence;-><init>(Lmiui/push/Presence$Type;)V

    .line 109
    .local v1, p:Lmiui/push/Presence;
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lmiui/push/Presence;->setChannelId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v0}, Lmiui/push/Presence;->setFrom(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->constructFullRecipientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/push/Presence;->setTo(Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lmiui/push/ServiceClient;->getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/push/ServiceClient;->sendPresence(Lmiui/push/Presence;)Z

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->REQ_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->mRequest:Lcom/xiaomi/mms/net/SimpleRequest;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->mRequest:Lcom/xiaomi/mms/net/SimpleRequest;

    invoke-interface {v0}, Lcom/xiaomi/mms/net/SimpleRequest;->close()V

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v7, "MxTaskService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v7, "com.xiaomi.mms.mx.ACTION_QUERY_PRESENCE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    const-string v7, "extra_address"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, address:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v1, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 65
    .local v3, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 67
    invoke-static {v1}, Lcom/xiaomi/mms/data/MxIdCache;->get(Ljava/lang/String;)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    move-result-object v2

    .line 68
    .local v2, cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->getMId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 69
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->REQ_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 70
    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/mms/net/CloudRequestFactory;->newGetUserIdRequest(Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->mRequest:Lcom/xiaomi/mms/net/SimpleRequest;

    .line 72
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, mid:Ljava/lang/String;
    const/4 v5, 0x0

    .line 76
    .local v5, getMid:Z
    :try_start_1
    iget-object v7, p0, Lcom/xiaomi/mms/transaction/MxTaskService;->mRequest:Lcom/xiaomi/mms/net/SimpleRequest;

    invoke-static {v7}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->getUid(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/mms/net/exception/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 77
    const/4 v5, 0x1

    .line 84
    :goto_0
    if-eqz v5, :cond_2

    .line 87
    invoke-static {v1, v6}, Lcom/xiaomi/mms/data/MxIdCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v6, :cond_1

    .line 89
    invoke-static {v6, v1}, Lcom/xiaomi/mms/data/MidPhoneMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v6}, Lcom/xiaomi/mms/transaction/MxTaskService;->queryPresence(Ljava/lang/String;)V

    .line 100
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    .end local v5           #getMid:Z
    .end local v6           #mid:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 72
    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .restart local v3       #contact:Lcom/android/mms/data/Contact;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 78
    .restart local v5       #getMid:Z
    .restart local v6       #mid:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 79
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 81
    .local v4, e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    invoke-virtual {v4}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v4           #e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    :cond_2
    const-string v7, "MxTaskService"

    const-string v8, "error when get mid"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    .end local v5           #getMid:Z
    .end local v6           #mid:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->getMId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xiaomi/mms/transaction/MxTaskService;->queryPresence(Ljava/lang/String;)V

    goto :goto_1
.end method
