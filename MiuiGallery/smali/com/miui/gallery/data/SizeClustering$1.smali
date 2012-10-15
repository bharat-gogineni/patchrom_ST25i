.class Lcom/miui/gallery/data/SizeClustering$1;
.super Ljava/lang/Object;
.source "SizeClustering.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/SizeClustering;->run(Lcom/miui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/SizeClustering;

.field final synthetic val$group:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/SizeClustering;[Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/data/SizeClustering$1;->this$0:Lcom/miui/gallery/data/SizeClustering;

    iput-object p2, p0, Lcom/miui/gallery/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/miui/gallery/data/MediaItem;)V
    .locals 6
    .parameter "index"
    .parameter "item"

    .prologue
    .line 58
    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v2

    .line 60
    .local v2, size:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/miui/gallery/data/SizeClustering;->access$000()[J

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 61
    invoke-static {}, Lcom/miui/gallery/data/SizeClustering;->access$000()[J

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aget-object v1, v4, v0

    .line 67
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    if-nez v1, :cond_1

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    iget-object v4, p0, Lcom/miui/gallery/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aput-object v1, v4, v0

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 60
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
