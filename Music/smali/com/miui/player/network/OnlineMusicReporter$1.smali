.class final Lcom/miui/player/network/OnlineMusicReporter$1;
.super Landroid/os/Handler;
.source "OnlineMusicReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/OnlineMusicReporter;->getAsyncHandler(Landroid/content/Context;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 122
    sget-object v0, Lcom/miui/player/network/OnlineMusicReporter;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/miui/player/network/OnlineMusicReporter;->TAG:Ljava/lang/String;

    const-string v1, "sContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 127
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad msg type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    sget-object v0, Lcom/miui/player/network/OnlineMusicReporter;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/player/network/OnlineMusicReporter;->postUserStartAsync(Landroid/content/Context;)V

    goto :goto_0

    .line 132
    :pswitch_1
    sget-object v0, Lcom/miui/player/network/OnlineMusicReporter;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/player/network/OnlineMusicReporter;->postLocalPlayStatusAsync(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :pswitch_2
    sget-object v1, Lcom/miui/player/network/OnlineMusicReporter;->sContext:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    invoke-static {v1, v0}, Lcom/miui/player/network/OnlineMusicReporter;->postOnlinePlayStatusAsync(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
