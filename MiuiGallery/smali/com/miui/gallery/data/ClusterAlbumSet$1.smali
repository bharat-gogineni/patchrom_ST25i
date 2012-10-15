.class Lcom/miui/gallery/data/ClusterAlbumSet$1;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/ClusterAlbumSet;->updateClustersContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/ClusterAlbumSet;

.field final synthetic val$existing:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/ClusterAlbumSet;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/gallery/data/ClusterAlbumSet$1;->this$0:Lcom/miui/gallery/data/ClusterAlbumSet;

    iput-object p2, p0, Lcom/miui/gallery/data/ClusterAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/miui/gallery/data/MediaItem;)V
    .locals 2
    .parameter "index"
    .parameter "item"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method
