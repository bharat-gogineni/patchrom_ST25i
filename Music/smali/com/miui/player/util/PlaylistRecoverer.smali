.class public Lcom/miui/player/util/PlaylistRecoverer;
.super Ljava/lang/Object;
.source "PlaylistRecoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/miui/player/util/PlaylistRecoverer;


# instance fields
.field private final mFilterConditions:Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;

.field private mForceRecover:Z

.field private mUpdateVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/miui/player/util/PlaylistRecoverer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/util/PlaylistRecoverer;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;)V
    .locals 1
    .parameter "context"
    .parameter "conditions"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mUpdateVersion:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    .line 27
    iput-object p2, p0, Lcom/miui/player/util/PlaylistRecoverer;->mFilterConditions:Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/player/util/PlaylistRecoverer;->doRecover(Landroid/content/Context;)Z

    .line 29
    return-void
.end method

.method private doRecover(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/player/util/PlaylistRecoverer;->needRecover(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 73
    :goto_0
    return v8

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 49
    .local v1, c:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 50
    .local v4, res:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidTrackIdArr(Landroid/content/Context;)[J

    move-result-object v6

    .line 51
    .local v6, trackIds:[J
    invoke-static {v6}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, audioSet:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio_id<536870911 AND audio_id NOT IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, where:Ljava/lang/String;
    sget-object v9, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9, v7, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 58
    .local v3, record:I
    if-lez v3, :cond_1

    .line 59
    invoke-static {p1, v6}, Lcom/miui/player/provider/FavoriteCache;->recoverCache(Landroid/content/Context;[J)I

    .line 61
    :cond_1
    invoke-static {v6}, Lcom/miui/player/service/ServiceHelper;->recoverQueue([J)I

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio_id NOT IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, statisticsWhere:Ljava/lang/String;
    sget-object v9, Lcom/miui/player/provider/PlayerStore$Statistics;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9, v5, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    iput-boolean v8, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    .line 69
    iget-object v8, p0, Lcom/miui/player/util/PlaylistRecoverer;->mFilterConditions:Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;

    invoke-virtual {v8, p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->update(Landroid/content/Context;)V

    .line 71
    sget-object v8, Lcom/miui/player/util/PlaylistRecoverer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interval for recover miui db "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    const-class v2, Lcom/miui/player/util/PlaylistRecoverer;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;

    invoke-direct {v0}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;-><init>()V

    .line 137
    .local v0, c:Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;
    invoke-virtual {v0, p0}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->update(Landroid/content/Context;)V

    .line 138
    new-instance v1, Lcom/miui/player/util/PlaylistRecoverer;

    invoke-direct {v1, p0, v0}, Lcom/miui/player/util/PlaylistRecoverer;-><init>(Landroid/content/Context;Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;)V

    sput-object v1, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;

    .line 141
    .end local v0           #c:Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;
    :cond_0
    sget-object v1, Lcom/miui/player/util/PlaylistRecoverer;->sInstance:Lcom/miui/player/util/PlaylistRecoverer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private needRecover(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mFilterConditions:Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;

    invoke-virtual {v0, p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->isChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public markForceRecover()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mForceRecover:Z

    .line 36
    return-void
.end method

.method public recover(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/miui/player/util/PlaylistRecoverer;->doRecover(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mUpdateVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mUpdateVersion:I

    .line 91
    :cond_0
    iget v0, p0, Lcom/miui/player/util/PlaylistRecoverer;->mUpdateVersion:I

    return v0
.end method
