.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "HomeRecentAlbumDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
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
.field private final mUpdateInfo:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

.field private triggeredOnSizeChanged:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;)V
    .locals 1
    .parameter
    .parameter "info"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->triggeredOnSizeChanged:Z

    .line 286
    iput-object p2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;

    .line 287
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
    .line 281
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 296
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    move-result-object v4

    if-nez v4, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-object v7

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;

    .line 298
    .local v0, info:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-wide v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J
    invoke-static {v4, v5, v6}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$702(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J

    .line 299
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v4

    iget v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->size:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1000(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v4

    iget v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    if-eq v4, v5, :cond_5

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$902(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 301
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1002(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 302
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 303
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v6}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1000(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onSizeChanged(II)V

    .line 305
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->triggeredOnSizeChanged:Z

    .line 307
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$602(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 308
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1200(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1202(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 311
    :cond_5
    iget v4, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$500(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 312
    iget v4, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[[Lcom/miui/gallery/data/MediaItem;

    move-result-object v5

    array-length v5, v5

    rem-int v3, v4, v5

    .line 313
    .local v3, pos:I
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSetVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[J

    move-result-object v4

    iget-wide v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->version:J

    aput-wide v5, v4, v3

    .line 314
    iget-object v4, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v1

    .line 315
    .local v1, itemVersion:J
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mItemVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[J

    move-result-object v4

    aget-wide v4, v4, v3

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mItemVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[J

    move-result-object v4

    aput-wide v1, v4, v3

    .line 317
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1500(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    aput-object v5, v4, v3

    .line 318
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[[Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->covers:[Lcom/miui/gallery/data/MediaItem;

    aput-object v5, v4, v3

    .line 319
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I
    invoke-static {v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1200(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 321
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v4

    iget v5, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    invoke-interface {v4, v5}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onWindowContentChanged(I)V

    goto/16 :goto_0
.end method

.method public triggeredOnSizeChanged()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->triggeredOnSizeChanged:Z

    return v0
.end method
