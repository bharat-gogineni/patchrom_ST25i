.class public Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;
.super Ljava/lang/Object;
.source "AsyncLoadTaskStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;
    }
.end annotation


# instance fields
.field private mLowTaskStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLowTaskNum:I

.field private mMaxTaskNum:I

.field private mRunningTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private mState:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

.field private mTaskStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPriority:I

.field private mThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkThreadNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->STOPPED:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mState:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreads:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mWorkThreadNum:I

    .line 23
    iput v1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mMaxTaskNum:I

    .line 24
    iput v1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mMaxLowTaskNum:I

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mTaskStack:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mLowTaskStack:Ljava/util/LinkedList;

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreadPriority:I

    .line 44
    return-void
.end method

.method private popNextTask()Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, task:Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
    :goto_0
    if-nez v3, :cond_5

    .line 111
    iget-object v5, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v5

    .line 112
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mTaskStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mTaskStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;

    move-object v3, v0

    .line 116
    :cond_0
    if-nez v3, :cond_1

    .line 117
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mLowTaskStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mLowTaskStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;

    move-object v3, v0

    .line 123
    :cond_1
    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->getId()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 126
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    if-nez v2, :cond_4

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 138
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 140
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 132
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    const/4 v3, 0x0

    goto :goto_1

    .line 142
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    :cond_5
    return-object v3
.end method

.method private postResult(Ljava/lang/String;)V
    .locals 7
    .parameter "id"

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    iget-object v5, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v5

    .line 148
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 149
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v5

    .line 151
    if-nez v2, :cond_1

    .line 157
    :cond_0
    return-void

    .line 150
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 153
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 154
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;

    .line 155
    .local v3, task:Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->postResult()V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pushBack(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;Ljava/util/LinkedList;I)V
    .locals 7
    .parameter "task"
    .parameter
    .parameter "max"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, stack:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    iget-object v5, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v5

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->getId()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 78
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v5

    .line 106
    :goto_0
    return-void

    .line 86
    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lt v4, p3, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 105
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 90
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 91
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 94
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_3

    .line 95
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 94
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 100
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mWorkThreadNum:I

    if-ge v4, v6, :cond_4

    .line 101
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gallery/AsyncLoadTaskStack"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mWorkThreadNum:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 102
    .local v3, t:Ljava/lang/Thread;
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 105
    .end local v3           #t:Ljava/lang/Thread;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public clearPendingTask()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mTaskStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mLowTaskStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pushBack(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mTaskStack:Ljava/util/LinkedList;

    iget v1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mMaxTaskNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->pushBack(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;Ljava/util/LinkedList;I)V

    .line 68
    return-void
.end method

.method public pushBackAsLow(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mLowTaskStack:Ljava/util/LinkedList;

    iget v1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mMaxLowTaskNum:I

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->pushBack(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;Ljava/util/LinkedList;I)V

    .line 72
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 166
    iget v2, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreadPriority:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    sget-object v2, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->RUNNING:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    iput-object v2, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mState:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    .line 168
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mState:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    sget-object v3, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->STOPPED:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    if-eq v2, v3, :cond_1

    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, task:Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->popNextTask()Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->load()V

    .line 174
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->postResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #task:Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
    :cond_1
    return-void
.end method

.method public setMaxLowTaskNum(I)V
    .locals 1
    .parameter "maxNum"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mMaxLowTaskNum:I

    .line 57
    return-void
.end method

.method public setMaxNum(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 48
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxLowTaskNum(I)V

    .line 49
    return-void
.end method

.method public setMaxTaskNum(I)V
    .locals 1
    .parameter "maxNum"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mMaxTaskNum:I

    .line 53
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0
    .parameter "thread_priority"

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mThreadPriority:I

    .line 30
    return-void
.end method

.method public setWorkThreadNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->mWorkThreadNum:I

    .line 38
    return-void
.end method
