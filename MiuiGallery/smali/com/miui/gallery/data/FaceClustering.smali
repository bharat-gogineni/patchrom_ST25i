.class public Lcom/miui/gallery/data/FaceClustering;
.super Lcom/miui/gallery/data/Clustering;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/FaceClustering$FaceCluster;
    }
.end annotation


# instance fields
.field private mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

.field private mContext:Landroid/content/Context;

.field private mUntaggedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/data/Clustering;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/FaceClustering;->mUntaggedString:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/miui/gallery/data/FaceClustering;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering;->mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClusterCover(I)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering;->mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->getCover()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering;->mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering;->mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/miui/gallery/data/MediaSet;)V
    .locals 5
    .parameter "baseSet"

    .prologue
    .line 87
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 89
    .local v1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Lcom/miui/gallery/data/Face;Lcom/miui/gallery/data/FaceClustering$FaceCluster;>;"
    new-instance v2, Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    iget-object v3, p0, Lcom/miui/gallery/data/FaceClustering;->mUntaggedString:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/data/FaceClustering$FaceCluster;-><init>(Lcom/miui/gallery/data/FaceClustering;Ljava/lang/String;)V

    .line 91
    .local v2, untagged:Lcom/miui/gallery/data/FaceClustering$FaceCluster;
    new-instance v3, Lcom/miui/gallery/data/FaceClustering$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/miui/gallery/data/FaceClustering$1;-><init>(Lcom/miui/gallery/data/FaceClustering;Lcom/miui/gallery/data/FaceClustering$FaceCluster;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v3}, Lcom/miui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V

    .line 110
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 111
    .local v0, m:I
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    new-array v3, v3, [Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    iput-object v3, p0, Lcom/miui/gallery/data/FaceClustering;->mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    .line 112
    invoke-virtual {v2}, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/miui/gallery/data/FaceClustering;->mClusters:[Lcom/miui/gallery/data/FaceClustering$FaceCluster;

    aput-object v2, v3, v0

    .line 115
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
