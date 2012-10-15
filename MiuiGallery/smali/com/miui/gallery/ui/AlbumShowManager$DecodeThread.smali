.class Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;
.super Ljava/lang/Thread;
.source "AlbumShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumShowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumShowManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumShowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;->this$0:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumShowManager;Lcom/miui/gallery/ui/AlbumShowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;-><init>(Lcom/miui/gallery/ui/AlbumShowManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 74
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 77
    .local v3, curSlotIndex:I
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;->this$0:Lcom/miui/gallery/ui/AlbumShowManager;

    #getter for: Lcom/miui/gallery/ui/AlbumShowManager;->mQueue:Lcom/miui/gallery/util/QueueInt;
    invoke-static {v6}, Lcom/miui/gallery/ui/AlbumShowManager;->access$100(Lcom/miui/gallery/ui/AlbumShowManager;)Lcom/miui/gallery/util/QueueInt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/util/QueueInt;->take()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 82
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;->this$0:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v6, v3}, Lcom/miui/gallery/ui/AlbumShowManager;->getCacheIndexBySlot(I)I

    move-result v0

    .line 83
    .local v0, cacheIndex:I
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;->this$0:Lcom/miui/gallery/ui/AlbumShowManager;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v6, v0

    .line 84
    .local v2, curItem:Lcom/miui/gallery/ui/AlbumDisplayItem;
    iget-object v5, v2, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    .line 88
    .local v5, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v5, :cond_0

    .line 93
    iget v6, v2, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    if-ne v6, v3, :cond_1

    iget v6, v2, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 99
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;->this$0:Lcom/miui/gallery/ui/AlbumShowManager;

    #calls: Lcom/miui/gallery/ui/AlbumShowManager;->decodeInThread(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;
    invoke-static {v6, v5}, Lcom/miui/gallery/ui/AlbumShowManager;->access$200(Lcom/miui/gallery/ui/AlbumShowManager;Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, cur:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;->this$0:Lcom/miui/gallery/ui/AlbumShowManager;

    #calls: Lcom/miui/gallery/ui/AlbumShowManager;->insertBitmapBySlot(ILandroid/graphics/Bitmap;)V
    invoke-static {v6, v3, v1}, Lcom/miui/gallery/ui/AlbumShowManager;->access$300(Lcom/miui/gallery/ui/AlbumShowManager;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    .end local v0           #cacheIndex:I
    .end local v1           #cur:Landroid/graphics/Bitmap;
    .end local v2           #curItem:Lcom/miui/gallery/ui/AlbumDisplayItem;
    .end local v5           #item:Lcom/miui/gallery/data/MediaItem;
    :catch_0
    move-exception v4

    .line 79
    .local v4, e:Ljava/lang/InterruptedException;
    goto :goto_0
.end method
