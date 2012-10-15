.class public Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapterBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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
.field private final mUpdateInfo:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;

    .line 273
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
    .line 268
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 278
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v4, v4, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    if-nez v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v7

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;

    .line 280
    .local v0, info:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-wide v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->version:J

    iput-wide v5, v4, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceVersion:J

    .line 282
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v4

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v4, v4, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mTotalMediaObjectCount:I

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->totalMediaObjectCount:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->canSendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$302(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I

    .line 286
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->totalMediaObjectCount:I

    iput v5, v4, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mTotalMediaObjectCount:I

    .line 288
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->sendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V

    .line 290
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v4, v4, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v5

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v5

    iput v5, v4, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    .line 291
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$400(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v5

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I
    invoke-static {v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$402(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I

    .line 294
    :cond_4
    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v5, v5, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v5, v5, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    if-ge v4, v5, :cond_0

    .line 295
    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$500(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[[Lcom/miui/gallery/data/MediaItem;

    move-result-object v5

    array-length v5, v5

    rem-int v3, v4, v5

    .line 296
    .local v3, pos:I
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSetVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$200(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J

    move-result-object v4

    iget-wide v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->version:J

    aput-wide v5, v4, v3

    .line 297
    iget-object v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v1

    .line 298
    .local v1, itemVersion:J
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$600(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J

    move-result-object v4

    aget-wide v4, v4, v3

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$600(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J

    move-result-object v4

    aput-wide v1, v4, v3

    .line 300
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$700(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    aput-object v5, v4, v3

    .line 301
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$500(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[[Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->covers:[Lcom/miui/gallery/data/MediaItem;

    aput-object v5, v4, v3

    .line 302
    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$800(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v5

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$400(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 303
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->sendOnWindowContentChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V

    goto/16 :goto_0
.end method
