.class Lcom/miui/gallery/data/FaceClustering$FaceCluster;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceCluster"
.end annotation


# instance fields
.field mCoverFaceIndex:I

.field mCoverItem:Lcom/miui/gallery/data/MediaItem;

.field mCoverRegion:Landroid/graphics/Rect;

.field mName:Ljava/lang/String;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/data/FaceClustering;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/FaceClustering;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->this$0:Lcom/miui/gallery/data/FaceClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/gallery/data/MediaItem;I)V
    .locals 6
    .parameter "item"
    .parameter "faceIndex"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    .line 48
    .local v2, path:Lcom/miui/gallery/data/Path;
    iget-object v4, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getFaces()[Lcom/miui/gallery/data/Face;

    move-result-object v1

    .line 50
    .local v1, faces:[Lcom/miui/gallery/data/Face;
    if-eqz v1, :cond_0

    .line 51
    aget-object v0, v1, p2

    .line 52
    .local v0, face:Lcom/miui/gallery/data/Face;
    iget-object v4, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v4, :cond_1

    .line 53
    iput-object p1, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/miui/gallery/data/MediaItem;

    .line 54
    invoke-virtual {v0}, Lcom/miui/gallery/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 55
    iput p2, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    .line 66
    .end local v0           #face:Lcom/miui/gallery/data/Face;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0       #face:Lcom/miui/gallery/data/Face;
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 58
    .local v3, region:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 60
    iput-object p1, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/miui/gallery/data/MediaItem;

    .line 61
    invoke-virtual {v0}, Lcom/miui/gallery/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 62
    iput p2, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    goto :goto_0
.end method

.method public getCover()Lcom/miui/gallery/data/MediaItem;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/miui/gallery/data/MediaItem;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
