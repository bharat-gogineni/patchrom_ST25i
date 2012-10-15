.class public abstract Lcom/miui/gallery/data/Clustering;
.super Ljava/lang/Object;
.source "Clustering.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCluster(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end method

.method public getClusterCover(I)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getClusterName(I)Ljava/lang/String;
.end method

.method public abstract getNumberOfClusters()I
.end method

.method public abstract run(Lcom/miui/gallery/data/MediaSet;)V
.end method
