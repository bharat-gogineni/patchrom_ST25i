.class public Lcom/miui/gallery/util/QueueInt;
.super Ljava/lang/Object;
.source "QueueInt.java"


# instance fields
.field mCount:I

.field final mItems:[I

.field final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mPutIndex:I

.field mTakeIndex:I

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mItems:[I

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/QueueInt;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 66
    return-void
.end method

.method private extract()I
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mItems:[I

    .line 55
    .local v0, mItems:[I
    iget v2, p0, Lcom/miui/gallery/util/QueueInt;->mTakeIndex:I

    aget v1, v0, v2

    .line 56
    .local v1, x:I
    iget v2, p0, Lcom/miui/gallery/util/QueueInt;->mTakeIndex:I

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 57
    iget v2, p0, Lcom/miui/gallery/util/QueueInt;->mTakeIndex:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery/util/QueueInt;->inc(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/util/QueueInt;->mTakeIndex:I

    .line 58
    iget v2, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    .line 59
    return v1
.end method

.method private insert(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mItems:[I

    iget v1, p0, Lcom/miui/gallery/util/QueueInt;->mPutIndex:I

    aput p1, v0, v1

    .line 44
    iget v0, p0, Lcom/miui/gallery/util/QueueInt;->mPutIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/QueueInt;->inc(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/QueueInt;->mPutIndex:I

    .line 45
    iget v0, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 121
    iget-object v2, p0, Lcom/miui/gallery/util/QueueInt;->mItems:[I

    .line 122
    .local v2, mItems:[I
    iget-object v3, p0, Lcom/miui/gallery/util/QueueInt;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 123
    .local v3, mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/util/QueueInt;->mTakeIndex:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    .local v1, k:I
    :goto_0
    if-lez v1, :cond_0

    .line 126
    const/4 v4, -0x1

    aput v4, v2, v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/QueueInt;->inc(I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 127
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    .line 128
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/gallery/util/QueueInt;->mPutIndex:I

    .line 129
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/gallery/util/QueueInt;->mTakeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    return-void

    .line 131
    .end local v0           #i:I
    .end local v1           #k:I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method final inc(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 20
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mItems:[I

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method public put(I)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    .local v0, mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 73
    :try_start_0
    iget v1, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    iget-object v2, p0, Lcom/miui/gallery/util/QueueInt;->mItems:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/util/QueueInt;->take()I

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/QueueInt;->put(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/QueueInt;->insert(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/util/QueueInt;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    .local v0, mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 90
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/miui/gallery/util/QueueInt;->mCount:I

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/util/QueueInt;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 92
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/util/QueueInt;->extract()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1
.end method
