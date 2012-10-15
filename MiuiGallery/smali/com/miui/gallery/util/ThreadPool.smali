.class public Lcom/miui/gallery/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ThreadPool$1;,
        Lcom/miui/gallery/util/ThreadPool$Worker;,
        Lcom/miui/gallery/util/ThreadPool$ResourceCounter;,
        Lcom/miui/gallery/util/ThreadPool$CancelListener;,
        Lcom/miui/gallery/util/ThreadPool$JobContextStub;,
        Lcom/miui/gallery/util/ThreadPool$JobContext;,
        Lcom/miui/gallery/util/ThreadPool$Job;
    }
.end annotation


# static fields
.field public static final JOB_CONTEXT_STUB:Lcom/miui/gallery/util/ThreadPool$JobContext;


# instance fields
.field mCpuCounter:Lcom/miui/gallery/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/miui/gallery/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/miui/gallery/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/ThreadPool$JobContextStub;-><init>(Lcom/miui/gallery/util/ThreadPool$1;)V

    sput-object v0, Lcom/miui/gallery/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/miui/gallery/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/miui/gallery/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/util/ThreadPool;->mCpuCounter:Lcom/miui/gallery/util/ThreadPool$ResourceCounter;

    .line 38
    new-instance v0, Lcom/miui/gallery/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/util/ThreadPool;->mNetworkCounter:Lcom/miui/gallery/util/ThreadPool$ResourceCounter;

    .line 81
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/miui/gallery/util/PriorityThreadFactory;

    const-string v8, "thread-pool"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/miui/gallery/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/miui/gallery/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 86
    return-void
.end method


# virtual methods
.method public submit(Lcom/miui/gallery/util/ThreadPool$Job;)Lcom/miui/gallery/util/Future;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/miui/gallery/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, job:Lcom/miui/gallery/util/ThreadPool$Job;,"Lcom/miui/gallery/util/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/miui/gallery/util/FutureListener",
            "<TT;>;)",
            "Lcom/miui/gallery/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, job:Lcom/miui/gallery/util/ThreadPool$Job;,"Lcom/miui/gallery/util/ThreadPool$Job<TT;>;"
    .local p2, listener:Lcom/miui/gallery/util/FutureListener;,"Lcom/miui/gallery/util/FutureListener<TT;>;"
    new-instance v0, Lcom/miui/gallery/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/util/ThreadPool$Worker;-><init>(Lcom/miui/gallery/util/ThreadPool;Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)V

    .line 92
    .local v0, w:Lcom/miui/gallery/util/ThreadPool$Worker;,"Lcom/miui/gallery/util/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-object v0
.end method
