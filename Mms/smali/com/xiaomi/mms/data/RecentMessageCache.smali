.class public Lcom/xiaomi/mms/data/RecentMessageCache;
.super Ljava/lang/Object;
.source "RecentMessageCache.java"


# static fields
.field private static final PRESENT:Ljava/lang/Object;

.field private static final mMap:Lcom/xiaomi/mms/utils/FixedSizeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/mms/utils/FixedSizeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 9
    new-instance v0, Lcom/xiaomi/mms/utils/FixedSizeMap;

    invoke-direct {v0, v1, v1}, Lcom/xiaomi/mms/utils/FixedSizeMap;-><init>(II)V

    sput-object v0, Lcom/xiaomi/mms/data/RecentMessageCache;->mMap:Lcom/xiaomi/mms/utils/FixedSizeMap;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mms/data/RecentMessageCache;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/String;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 23
    const-class v1, Lcom/xiaomi/mms/data/RecentMessageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mms/data/RecentMessageCache;->mMap:Lcom/xiaomi/mms/utils/FixedSizeMap;

    sget-object v2, Lcom/xiaomi/mms/data/RecentMessageCache;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Lcom/xiaomi/mms/utils/FixedSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized contain(Ljava/lang/String;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 19
    const-class v1, Lcom/xiaomi/mms/data/RecentMessageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mms/data/RecentMessageCache;->mMap:Lcom/xiaomi/mms/utils/FixedSizeMap;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mms/utils/FixedSizeMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
