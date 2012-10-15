.class Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

    .line 276
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 282
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    move-result-object v9

    if-nez v9, :cond_1

    .line 309
    :cond_0
    return-object v12

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

    .line 285
    .local v3, info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    iget-wide v10, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J
    invoke-static {v9, v10, v11}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$502(Lcom/miui/gallery/app/HomeCameraDataAdapter;J)J

    .line 286
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v9

    iget v10, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->size:I

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v9

    iget v10, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    if-eq v9, v10, :cond_3

    .line 287
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    iget v10, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->size:I

    iget v11, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->triggerOnSizeChanged(II)V
    invoke-static {v9, v10, v11}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1200(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V

    .line 290
    :cond_3
    iget-object v6, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 292
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    if-eqz v6, :cond_0

    .line 293
    iget v9, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadStart:I

    iget-object v10, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I
    invoke-static {v10}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1000(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 294
    .local v7, start:I
    iget v9, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I
    invoke-static {v10}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 296
    .local v0, end:I
    move v1, v7

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 297
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v9

    rem-int v2, v1, v9

    .line 298
    .local v2, index:I
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J

    move-result-object v9

    iget-wide v10, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->version:J

    aput-wide v10, v9, v2

    .line 299
    iget v9, v3, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadStart:I

    sub-int v9, v1, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/data/MediaItem;

    .line 300
    .local v8, updateItem:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    .line 301
    .local v4, itemVersion:J
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J

    move-result-object v9

    aget-wide v9, v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_4

    .line 302
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J

    move-result-object v9

    aput-wide v4, v9, v2

    .line 303
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1400(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v9

    aput-object v8, v9, v2

    .line 304
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v9, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->isActive(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 305
    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v9

    invoke-interface {v9, v1}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onWindowContentChanged(I)V

    .line 296
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
