.class Lcom/miui/gallery/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/miui/gallery/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/miui/gallery/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/TileImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/miui/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/miui/gallery/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/TileImageView;Lcom/miui/gallery/ui/TileImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/TileImageView$TileUploader;-><init>(Lcom/miui/gallery/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/miui/gallery/ui/GLRoot;Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 7
    .parameter "root"
    .parameter "canvas"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 495
    const/4 v0, 0x1

    .line 498
    .local v0, quota:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/miui/gallery/ui/TileImageView;

    monitor-enter v5

    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView$TileUploader;->this$0:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;
    invoke-static {v2}, Lcom/miui/gallery/ui/TileImageView;->access$300(Lcom/miui/gallery/ui/TileImageView;)Lcom/miui/gallery/ui/TileImageView$TileQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v1

    .line 500
    .local v1, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    if-eqz v1, :cond_1

    if-gtz v0, :cond_2

    .line 509
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 510
    if-eqz v1, :cond_5

    :goto_2
    return v3

    .line 500
    .end local v1           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 502
    .restart local v1       #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :cond_2
    iget v2, v1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    if-ne v2, v6, :cond_0

    .line 503
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/TileImageView$Tile;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    iget v2, v1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    if-ne v2, v6, :cond_3

    move v2, v3

    :goto_3
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 505
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/TileImageView$Tile;->updateContent(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 506
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 504
    goto :goto_3

    :cond_4
    move v2, v4

    .line 509
    goto :goto_1

    :cond_5
    move v3, v4

    .line 510
    goto :goto_2
.end method
