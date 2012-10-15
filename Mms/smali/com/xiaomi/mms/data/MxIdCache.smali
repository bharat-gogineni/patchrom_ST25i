.class public Lcom/xiaomi/mms/data/MxIdCache;
.super Ljava/lang/Object;
.source "MxIdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mms/data/MxIdCache$1;,
        Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;,
        Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    }
.end annotation


# static fields
.field private static final mStatusListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mms/data/MxIdCache;->map:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static addStatusListener(Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 111
    sget-object v1, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "listener already added to cache"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .locals 2
    .parameter "address"

    .prologue
    .line 48
    const-class v0, Lcom/xiaomi/mms/data/MxIdCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/xiaomi/mms/data/MxIdCache;->get(Ljava/lang/String;Z)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Ljava/lang/String;Z)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .locals 7
    .parameter "address"
    .parameter "allowExpired"

    .prologue
    .line 53
    const-class v2, Lcom/xiaomi/mms/data/MxIdCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/xiaomi/mms/data/MxIdCache;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    .line 54
    .local v0, cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v0, :cond_1

    iget-wide v3, v0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    if-eqz p1, :cond_1

    .line 58
    .end local v0           #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .restart local v0       #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    .end local v0           #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getOrQuery(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .locals 8
    .parameter "context"
    .parameter "address"

    .prologue
    .line 33
    const-class v3, Lcom/xiaomi/mms/data/MxIdCache;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lcom/xiaomi/mms/data/MxIdCache;->get(Ljava/lang/String;Z)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    move-result-object v0

    .line 34
    .local v0, cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 39
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.mms.mx.ACTION_QUERY_PRESENCE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_address"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    monitor-exit v3

    return-object v0

    .line 33
    .end local v0           #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized offline(Ljava/lang/String;)V
    .locals 10
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 62
    const-class v5, Lcom/xiaomi/mms/data/MxIdCache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/xiaomi/mms/data/MxIdCache;->map:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    .line 63
    .local v1, item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 65
    iget-boolean v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->online:Z

    if-nez v4, :cond_0

    iget-wide v6, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 67
    .local v3, notify:Z
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->online:Z

    .line 68
    invoke-virtual {v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->updateExpire()V

    .line 69
    if-eqz v3, :cond_3

    .line 70
    sget-object v6, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    sget-object v4, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;

    .line 72
    .local v2, l:Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;
    iget-object v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    invoke-interface {v2, v4, p0}, Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;->onMxIdOffline(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .end local v1           #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .end local v3           #notify:Z
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 74
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .restart local v3       #notify:Z
    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #notify:Z
    :cond_3
    monitor-exit v5

    return-void
.end method

.method public static declared-synchronized online(Ljava/lang/String;)V
    .locals 10
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    .line 80
    const-class v5, Lcom/xiaomi/mms/data/MxIdCache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/xiaomi/mms/data/MxIdCache;->map:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    .line 81
    .local v1, item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 83
    iget-boolean v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->online:Z

    if-eqz v4, :cond_0

    iget-wide v6, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 85
    .local v3, notify:Z
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->online:Z

    .line 86
    invoke-virtual {v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->updateExpire()V

    .line 87
    if-eqz v3, :cond_3

    .line 88
    sget-object v6, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    sget-object v4, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;

    .line 90
    .local v2, l:Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;
    iget-object v4, v1, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    invoke-interface {v2, v4, p0}, Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;->onMxIdOnline(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    .end local v1           #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .end local v3           #notify:Z
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 83
    .restart local v1       #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 92
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #notify:Z
    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #notify:Z
    :cond_3
    monitor-exit v5

    return-void
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "mid"

    .prologue
    .line 98
    const-class v2, Lcom/xiaomi/mms/data/MxIdCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/xiaomi/mms/data/MxIdCache;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    .line 99
    .local v0, item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    .end local v0           #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;-><init>(Ljava/lang/String;Lcom/xiaomi/mms/data/MxIdCache$1;)V

    .line 101
    .restart local v0       #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    sget-object v1, Lcom/xiaomi/mms/data/MxIdCache;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit v2

    return-void

    .line 104
    :cond_0
    :try_start_1
    iput-object p1, v0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->updateExpire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v0           #item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static removeStatusListener(Lcom/xiaomi/mms/data/MxIdCache$MxCacheStatusListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 122
    sget-object v2, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    monitor-enter v2

    .line 123
    :try_start_0
    sget-object v1, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 124
    .local v0, index:I
    if-gez v0, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "listener not in cached"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    .restart local v0       #index:I
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/mms/data/MxIdCache;->mStatusListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    return-void
.end method
