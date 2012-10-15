.class public Lcom/miui/player/util/LoopChecker;
.super Ljava/lang/Object;
.source "LoopChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/util/LoopChecker$CheckAction;
    }
.end annotation


# instance fields
.field private final MSG_ID:I

.field private final mAction:Lcom/miui/player/util/LoopChecker$CheckAction;

.field private final mDelay:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/player/util/LoopChecker$CheckAction;I)V
    .locals 1
    .parameter "action"
    .parameter "delay"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/player/util/LoopChecker;->MSG_ID:I

    .line 13
    new-instance v0, Lcom/miui/player/util/LoopChecker$1;

    invoke-direct {v0, p0}, Lcom/miui/player/util/LoopChecker$1;-><init>(Lcom/miui/player/util/LoopChecker;)V

    iput-object v0, p0, Lcom/miui/player/util/LoopChecker;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/miui/player/util/LoopChecker;->mAction:Lcom/miui/player/util/LoopChecker$CheckAction;

    .line 28
    iput p2, p0, Lcom/miui/player/util/LoopChecker;->mDelay:I

    .line 29
    return-void
.end method

.method public static check(Lcom/miui/player/util/LoopChecker$CheckAction;II)V
    .locals 1
    .parameter "action"
    .parameter "retryCount"
    .parameter "retryDelay"

    .prologue
    .line 43
    if-lez p1, :cond_0

    .line 44
    new-instance v0, Lcom/miui/player/util/LoopChecker;

    invoke-direct {v0, p0, p2}, Lcom/miui/player/util/LoopChecker;-><init>(Lcom/miui/player/util/LoopChecker$CheckAction;I)V

    invoke-virtual {v0, p1}, Lcom/miui/player/util/LoopChecker;->doCheck(I)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method doCheck(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    .line 32
    iget-object v1, p0, Lcom/miui/player/util/LoopChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object v1, p0, Lcom/miui/player/util/LoopChecker;->mAction:Lcom/miui/player/util/LoopChecker$CheckAction;

    invoke-interface {v1}, Lcom/miui/player/util/LoopChecker$CheckAction;->handle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    add-int/lit8 p1, p1, -0x1

    .line 35
    if-lez p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/miui/player/util/LoopChecker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 37
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/util/LoopChecker;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/player/util/LoopChecker;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 40
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
