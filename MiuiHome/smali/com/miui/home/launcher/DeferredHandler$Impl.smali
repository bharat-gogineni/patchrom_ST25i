.class Lcom/miui/home/launcher/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/DeferredHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/DeferredHandler$Impl;->this$0:Lcom/miui/home/launcher/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/DeferredHandler;Lcom/miui/home/launcher/DeferredHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeferredHandler$Impl;-><init>(Lcom/miui/home/launcher/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/miui/home/launcher/DeferredHandler$Impl;->this$0:Lcom/miui/home/launcher/DeferredHandler;

    #getter for: Lcom/miui/home/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/miui/home/launcher/DeferredHandler;->access$100(Lcom/miui/home/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/DeferredHandler$Impl;->this$0:Lcom/miui/home/launcher/DeferredHandler;

    #getter for: Lcom/miui/home/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/miui/home/launcher/DeferredHandler;->access$100(Lcom/miui/home/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 43
    monitor-exit v2

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/DeferredHandler$Impl;->this$0:Lcom/miui/home/launcher/DeferredHandler;

    #getter for: Lcom/miui/home/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/miui/home/launcher/DeferredHandler;->access$100(Lcom/miui/home/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 46
    .local v0, r:Ljava/lang/Runnable;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 48
    iget-object v1, p0, Lcom/miui/home/launcher/DeferredHandler$Impl;->this$0:Lcom/miui/home/launcher/DeferredHandler;

    #getter for: Lcom/miui/home/launcher/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/miui/home/launcher/DeferredHandler;->access$100(Lcom/miui/home/launcher/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/miui/home/launcher/DeferredHandler$Impl;->this$0:Lcom/miui/home/launcher/DeferredHandler;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeferredHandler;->scheduleNextLocked()V

    .line 50
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 46
    .end local v0           #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method
