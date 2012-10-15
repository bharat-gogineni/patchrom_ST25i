.class Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
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
.field mUpdateInfo:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/miui/gallery/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "updateInfo"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    iput-object p2, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;

    .line 877
    return-void
.end method

.method private updateCurrentItem()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1000(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 926
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1002(Lcom/miui/gallery/app/PhotoDataAdapter;I)I

    .line 927
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    .line 928
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->startSlideInAnimation(I)V

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    .line 931
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->startSlideInAnimation(I)V

    goto :goto_0
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
    .line 872
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 881
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;

    .line 882
    .local v4, info:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-wide v8, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v6, v8, v9}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1302(Lcom/miui/gallery/app/PhotoDataAdapter;J)J

    .line 884
    iget v6, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 885
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget v8, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v6, v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1402(Lcom/miui/gallery/app/PhotoDataAdapter;I)I

    .line 886
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$800(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v6, v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$802(Lcom/miui/gallery/app/PhotoDataAdapter;I)I

    .line 887
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1500(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v6, v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1502(Lcom/miui/gallery/app/PhotoDataAdapter;I)I

    .line 890
    :cond_1
    iget v6, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 893
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1102(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;

    .line 894
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->updateCurrentItem()V

    .line 899
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    .line 901
    iget-object v6, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 902
    iget v6, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$700(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 903
    .local v5, start:I
    iget v6, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$800(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 904
    .local v2, end:I
    rem-int/lit8 v1, v5, 0x20

    .line 905
    .local v1, dataIndex:I
    move v3, v5

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 906
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$900(Lcom/miui/gallery/app/PhotoDataAdapter;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v8

    iget-object v6, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v9, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v9, v3, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/MediaItem;

    aput-object v6, v8, v1

    .line 907
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x20

    if-ne v1, v6, :cond_2

    const/4 v1, 0x0

    .line 905
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 896
    .end local v1           #dataIndex:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #start:I
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget v8, v4, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v6, v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1002(Lcom/miui/gallery/app/PhotoDataAdapter;I)I

    goto :goto_0

    .line 910
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/Path;

    move-result-object v6

    if-nez v6, :cond_5

    .line 911
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$900(Lcom/miui/gallery/app/PhotoDataAdapter;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v8}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1000(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v8

    rem-int/lit8 v8, v8, 0x20

    aget-object v0, v6, v8

    .line 912
    .local v0, current:Lcom/miui/gallery/data/MediaItem;
    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    if-nez v0, :cond_6

    move-object v6, v7

    :goto_2
    #setter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;
    invoke-static {v8, v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1102(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;

    .line 915
    .end local v0           #current:Lcom/miui/gallery/data/MediaItem;
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1700(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    .line 916
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider()V
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1800(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    .line 917
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1900(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    .line 918
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    .line 920
    return-object v7

    .line 912
    .restart local v0       #current:Lcom/miui/gallery/data/MediaItem;
    :cond_6
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v6

    goto :goto_2
.end method
