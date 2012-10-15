.class public Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
.super Ljava/lang/Object;
.source "MxIdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mms/data/MxIdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MxIdCacheItem"
.end annotation


# instance fields
.field protected expire:J

.field protected mid:Ljava/lang/String;

.field protected online:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "mid"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    .line 151
    iput-object p1, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/xiaomi/mms/data/MxIdCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->online:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MxIdCacheItem{mid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateExpire()V
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->mid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x493e0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->expire:J

    .line 165
    return-void

    .line 163
    :cond_0
    const-wide/32 v0, 0x1d4c0

    goto :goto_0
.end method
