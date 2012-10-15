.class Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunnableInfo"
.end annotation


# instance fields
.field public final runnable:Lcom/miui/player/service/RunnableList$RemovableRunnable;

.field final synthetic this$0:Lcom/miui/player/service/AsyncMusicPlayer;

.field public final time:J


# direct methods
.method public constructor <init>(Lcom/miui/player/service/AsyncMusicPlayer;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V
    .locals 2
    .parameter
    .parameter "r"
    .parameter "d"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;->runnable:Lcom/miui/player/service/RunnableList$RemovableRunnable;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;->time:J

    .line 78
    return-void
.end method
