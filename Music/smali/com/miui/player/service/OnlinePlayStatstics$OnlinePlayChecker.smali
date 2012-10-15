.class Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;
.super Ljava/lang/Object;
.source "OnlinePlayStatstics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/OnlinePlayStatstics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnlinePlayChecker"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mStatsticsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/service/OnlinePlayStatstics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/player/service/OnlinePlayStatstics;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "stat"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;->mStatsticsRef:Ljava/lang/ref/WeakReference;

    .line 154
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 158
    iget-object v3, p0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;->mStatsticsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/service/OnlinePlayStatstics;

    .line 159
    .local v2, stat:Lcom/miui/player/service/OnlinePlayStatstics;
    if-eqz v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/player/service/OnlinePlayStatstics;->checkPlayStatus(Landroid/content/Context;)J

    move-result-wide v0

    .line 161
    .local v0, remain:J
    sget-object v3, Lcom/miui/player/service/OnlinePlayStatstics;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    .end local v0           #remain:J
    :cond_0
    return-void
.end method
