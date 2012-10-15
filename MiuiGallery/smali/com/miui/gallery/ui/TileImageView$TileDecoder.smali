.class Lcom/miui/gallery/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
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
.field private mNotifier:Lcom/miui/gallery/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/TileImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/miui/gallery/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    new-instance v0, Lcom/miui/gallery/ui/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/TileImageView$TileDecoder$1;-><init>(Lcom/miui/gallery/ui/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->mNotifier:Lcom/miui/gallery/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/TileImageView;Lcom/miui/gallery/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/miui/gallery/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .parameter "jc"

    .prologue
    .line 681
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    .line 682
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->mNotifier:Lcom/miui/gallery/util/ThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 683
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/miui/gallery/ui/TileImageView;

    monitor-enter v2

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/miui/gallery/ui/TileImageView;->access$700(Lcom/miui/gallery/ui/TileImageView;)Lcom/miui/gallery/ui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    .line 687
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/miui/gallery/ui/TileImageView;

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 690
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/TileImageView;->decodeTile(Lcom/miui/gallery/ui/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView$TileDecoder;->this$0:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/TileImageView;->queueForUpload(Lcom/miui/gallery/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 694
    .end local v0           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
