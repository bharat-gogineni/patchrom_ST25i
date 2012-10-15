.class Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;
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
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    return-void
.end method

.method private needContentReload()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 850
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$700(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    .local v1, i:I
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$800(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 851
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$900(Lcom/miui/gallery/app/PhotoDataAdapter;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    rem-int/lit8 v5, v1, 0x20

    aget-object v4, v4, v5

    if-nez v4, :cond_1

    .line 854
    :cond_0
    :goto_1
    return v3

    .line 850
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$900(Lcom/miui/gallery/app/PhotoDataAdapter;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v5}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1000(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v5

    rem-int/lit8 v5, v5, 0x20

    aget-object v0, v4, v5

    .line 854
    .local v0, current:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;
    invoke-static {v5}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/Path;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 860
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    .line 861
    .local v0, info:Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1300(Lcom/miui/gallery/app/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    .line 862
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 863
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/miui/gallery/data/Path;

    .line 864
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1000(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 865
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$700(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 866
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$800(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 867
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 868
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
