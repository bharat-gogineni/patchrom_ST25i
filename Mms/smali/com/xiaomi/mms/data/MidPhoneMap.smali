.class public Lcom/xiaomi/mms/data/MidPhoneMap;
.super Ljava/lang/Object;
.source "MidPhoneMap.java"


# static fields
.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mms/data/MidPhoneMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mid"

    .prologue
    .line 12
    const-class v1, Lcom/xiaomi/mms/data/MidPhoneMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mms/data/MidPhoneMap;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mid"
    .parameter "phone"

    .prologue
    .line 16
    const-class v1, Lcom/xiaomi/mms/data/MidPhoneMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mms/data/MidPhoneMap;->map:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v1

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
