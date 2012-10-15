.class Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/DownloadCache$TaskProxy;->get(Lcom/miui/gallery/util/ThreadPool$JobContext;)Lcom/miui/gallery/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/DownloadCache$TaskProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    #getter for: Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mTask:Lcom/miui/gallery/data/DownloadCache$DownloadTask;
    invoke-static {v0}, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->access$400(Lcom/miui/gallery/data/DownloadCache$TaskProxy;)Lcom/miui/gallery/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DownloadCache$DownloadTask;->removeProxy(Lcom/miui/gallery/data/DownloadCache$TaskProxy;)V

    .line 390
    iget-object v1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    #setter for: Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    invoke-static {v0, v2}, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->access$802(Lcom/miui/gallery/data/DownloadCache$TaskProxy;Z)Z

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
