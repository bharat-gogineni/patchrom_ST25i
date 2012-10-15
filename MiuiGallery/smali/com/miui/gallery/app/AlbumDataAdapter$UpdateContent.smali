.class Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumDataAdapter;
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
.field private final mUpdateInfo:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    .line 317
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
    .line 311
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 323
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    if-nez v10, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object v13

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    .line 325
    .local v3, info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-wide v11, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    iput-wide v11, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J

    .line 326
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    iget v11, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    if-eq v10, v11, :cond_4

    .line 327
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    iput v11, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    .line 328
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    invoke-interface {v10, v11}, Lcom/miui/gallery/ui/AlbumViewModelListener;->onSizeChanged(I)V

    .line 329
    :cond_2
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    if-le v10, v11, :cond_3

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    iput v11, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    .line 330
    :cond_3
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    if-le v10, v11, :cond_4

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    iput v11, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    .line 333
    :cond_4
    iget-object v6, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 335
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    if-eqz v6, :cond_0

    .line 336
    iget v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 337
    .local v8, start:I
    iget v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v11, v11, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 339
    .local v0, end:I
    const/4 v7, 0x0

    .line 340
    .local v7, pageChanged:Z
    move v1, v8

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 341
    rem-int/lit16 v2, v1, 0x3e8

    .line 342
    .local v2, index:I
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J

    iget-wide v11, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    aput-wide v11, v10, v2

    .line 343
    iget v10, v3, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    sub-int v10, v1, v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/data/MediaItem;

    .line 344
    .local v9, updateItem:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v9}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    .line 345
    .local v4, itemVersion:J
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J

    aget-wide v10, v10, v2

    cmp-long v10, v10, v4

    if-eqz v10, :cond_6

    .line 346
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J

    aput-wide v4, v10, v2

    .line 347
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    aput-object v9, v10, v2

    .line 348
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v10, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 349
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

    invoke-interface {v10, v1}, Lcom/miui/gallery/ui/AlbumViewModelListener;->onWindowContentChanged(I)V

    .line 351
    :cond_5
    const/4 v7, 0x1

    .line 340
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    .end local v2           #index:I
    .end local v4           #itemVersion:J
    .end local v9           #updateItem:Lcom/miui/gallery/data/MediaItem;
    :cond_7
    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mNotifyFirstPage:Z
    invoke-static {v10}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$300(Lcom/miui/gallery/app/AlbumDataAdapter;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 356
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v10, v10, Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

    invoke-interface {v10}, Lcom/miui/gallery/ui/AlbumViewModelListener;->onFirstPageReady()V

    .line 357
    iget-object v10, p0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    const/4 v11, 0x1

    #setter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mNotifyFirstPage:Z
    invoke-static {v10, v11}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$302(Lcom/miui/gallery/app/AlbumDataAdapter;Z)Z

    goto/16 :goto_0
.end method
