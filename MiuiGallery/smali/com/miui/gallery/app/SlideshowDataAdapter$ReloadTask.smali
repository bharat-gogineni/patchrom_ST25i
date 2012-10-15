.class Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/SlideshowDataAdapter;Lcom/miui/gallery/app/SlideshowDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8
    .parameter "jc"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 98
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$100(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$200(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    .line 101
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    goto :goto_1

    .line 107
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$100(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 107
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #setter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z
    invoke-static {v2, v6}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$402(Lcom/miui/gallery/app/SlideshowDataAdapter;Z)Z

    .line 111
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #calls: Lcom/miui/gallery/app/SlideshowDataAdapter;->loadItem()Lcom/miui/gallery/data/MediaItem;
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$500(Lcom/miui/gallery/app/SlideshowDataAdapter;)Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 113
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$400(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 115
    :try_start_4
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 116
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    iget-object v4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mNextOutput:I
    invoke-static {v4}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$700(Lcom/miui/gallery/app/SlideshowDataAdapter;)I

    move-result v4

    #setter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v2, v4}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$602(Lcom/miui/gallery/app/SlideshowDataAdapter;I)I

    .line 117
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 121
    :cond_3
    if-nez v1, :cond_5

    .line 122
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 123
    :try_start_5
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$800(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    const/4 v4, 0x0

    #setter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v2, v4}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$202(Lcom/miui/gallery/app/SlideshowDataAdapter;Z)Z

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 129
    :cond_5
    invoke-virtual {v1, v7}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/miui/gallery/util/ThreadPool$Job;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 133
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 134
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 135
    :try_start_6
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    new-instance v4, Lcom/miui/gallery/app/SlideshowPage$Slide;

    iget-object v5, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v5}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$600(Lcom/miui/gallery/app/SlideshowDataAdapter;)I

    move-result v5

    invoke-direct {v4, v1, v5, v0}, Lcom/miui/gallery/app/SlideshowPage$Slide;-><init>(Lcom/miui/gallery/data/MediaItem;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #getter for: Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$300(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 138
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 140
    :cond_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 142
    :cond_7
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    invoke-static {v2}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$604(Lcom/miui/gallery/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    .line 140
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method
