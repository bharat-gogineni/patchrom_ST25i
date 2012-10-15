.class public Lcom/miui/player/network/OnlineMusicReporter;
.super Ljava/lang/Object;
.source "OnlineMusicReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/OnlineMusicReporter$UserInfoFactory;,
        Lcom/miui/player/network/OnlineMusicReporter$UserInfo;,
        Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,
        Lcom/miui/player/network/OnlineMusicReporter$LogFactory;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sAsyncHandler:Landroid/os/Handler;

.field static sContext:Landroid/content/Context;

.field private static sUserInfoQueue:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/network/OnlineMusicReporter$LogQueue",
            "<",
            "Lcom/miui/player/network/OnlineMusicReporter$UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/miui/player/network/OnlineMusicReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/OnlineMusicReporter;->TAG:Ljava/lang/String;

    .line 147
    sput-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sAsyncHandler:Landroid/os/Handler;

    .line 148
    sput-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sContext:Landroid/content/Context;

    .line 150
    sput-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sUserInfoQueue:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method private static declared-synchronized getAsyncHandler(Landroid/content/Context;)Landroid/os/Handler;
    .locals 4
    .parameter "context"

    .prologue
    .line 112
    const-class v2, Lcom/miui/player/network/OnlineMusicReporter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sAsyncHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "online_reporter"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 117
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v1, Lcom/miui/player/network/OnlineMusicReporter$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/player/network/OnlineMusicReporter$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sAsyncHandler:Landroid/os/Handler;

    .line 144
    .end local v0           #ht:Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sAsyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getUserInfoQueue(Landroid/content/Context;)Lcom/miui/player/network/OnlineMusicReporter$LogQueue;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/miui/player/network/OnlineMusicReporter$LogQueue",
            "<",
            "Lcom/miui/player/network/OnlineMusicReporter$UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const-class v1, Lcom/miui/player/network/OnlineMusicReporter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/player/network/OnlineMusicReporter;->sUserInfoQueue:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "user_info"

    new-instance v4, Lcom/miui/player/network/OnlineMusicReporter$UserInfoFactory;

    invoke-direct {v4}, Lcom/miui/player/network/OnlineMusicReporter$UserInfoFactory;-><init>()V

    const/16 v5, 0xa

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/miui/player/network/OnlineMusicReporter$LogFactory;I)V

    sput-object v0, Lcom/miui/player/network/OnlineMusicReporter;->sUserInfoQueue:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;

    .line 161
    :cond_0
    sget-object v0, Lcom/miui/player/network/OnlineMusicReporter;->sUserInfoQueue:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static postLocalPlayStatus(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->getAsyncHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    .line 49
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void
.end method

.method static postLocalPlayStatusAsync(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 83
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->getUserInfoQueue(Landroid/content/Context;)Lcom/miui/player/network/OnlineMusicReporter$LogQueue;

    move-result-object v2

    .line 84
    .local v2, log:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<Lcom/miui/player/network/OnlineMusicReporter$UserInfo;>;"
    const-string v5, "yyyyMMdd"

    invoke-static {v5}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, today:Ljava/lang/String;
    new-instance v5, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    invoke-direct {v5, v4, v7}, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->append(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->size()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 87
    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    .line 88
    .local v1, info:Lcom/miui/player/network/OnlineMusicReporter$UserInfo;
    iget-object v5, v1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mDate:Ljava/lang/String;

    const-string v6, "yyyyMMdd"

    invoke-static {v5, v6}, Lcom/xiaomi/common/util/DateTimeHelper;->fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 89
    .local v0, date:Ljava/util/Date;
    const/4 v3, 0x1

    .line 90
    .local v3, remove:Z
    if-eqz v0, :cond_1

    .line 91
    iget v5, v1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mTrackCount:I

    invoke-static {p0, v0, v5}, Lcom/miui/player/network/OnlineMusicProxy;->postLocalPlayStatus(Landroid/content/Context;Ljava/util/Date;I)Z

    move-result v3

    .line 94
    :cond_1
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 100
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #info:Lcom/miui/player/network/OnlineMusicReporter$UserInfo;
    .end local v3           #remove:Z
    :cond_2
    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->persist()V

    .line 101
    return-void
.end method

.method public static postOnlinePlayStatus(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)V
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->getAsyncHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    .line 58
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void
.end method

.method static postOnlinePlayStatusAsync(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)V
    .locals 0
    .parameter "context"
    .parameter "status"

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/miui/player/network/OnlineMusicProxy;->postOnlinePlayStatus(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)Z

    .line 105
    return-void
.end method

.method public static postUserStart(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->getAsyncHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    .line 39
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void
.end method

.method static postUserStartAsync(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->getUserInfoQueue(Landroid/content/Context;)Lcom/miui/player/network/OnlineMusicReporter$LogQueue;

    move-result-object v2

    .line 63
    .local v2, log:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<Lcom/miui/player/network/OnlineMusicReporter$UserInfo;>;"
    const-string v5, "yyyyMMdd"

    invoke-static {v5}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, today:Ljava/lang/String;
    new-instance v5, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->append(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 66
    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    .line 67
    .local v1, info:Lcom/miui/player/network/OnlineMusicReporter$UserInfo;
    iget-object v5, v1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mDate:Ljava/lang/String;

    const-string v6, "yyyyMMdd"

    invoke-static {v5, v6}, Lcom/xiaomi/common/util/DateTimeHelper;->fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 68
    .local v0, date:Ljava/util/Date;
    const/4 v3, 0x1

    .line 69
    .local v3, remove:Z
    if-eqz v0, :cond_1

    .line 70
    invoke-static {p0, v0}, Lcom/miui/player/network/OnlineMusicProxy;->postUserStart(Landroid/content/Context;Ljava/util/Date;)Z

    move-result v3

    .line 73
    :cond_1
    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #info:Lcom/miui/player/network/OnlineMusicReporter$UserInfo;
    .end local v3           #remove:Z
    :cond_2
    invoke-virtual {v2}, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->persist()V

    .line 80
    :cond_3
    return-void
.end method
