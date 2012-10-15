.class Lcom/miui/gallery/data/FilterSet$1;
.super Ljava/lang/Object;
.source "FilterSet.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/FilterSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/FilterSet;

.field final synthetic val$buf:[Lcom/miui/gallery/data/Path;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/FilterSet;I[Lcom/miui/gallery/data/Path;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/gallery/data/FilterSet$1;->this$0:Lcom/miui/gallery/data/FilterSet;

    iput p2, p0, Lcom/miui/gallery/data/FilterSet$1;->val$total:I

    iput-object p3, p0, Lcom/miui/gallery/data/FilterSet$1;->val$buf:[Lcom/miui/gallery/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/miui/gallery/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 106
    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/data/FilterSet$1;->this$0:Lcom/miui/gallery/data/FilterSet;

    #getter for: Lcom/miui/gallery/data/FilterSet;->mMediaType:I
    invoke-static {v2}, Lcom/miui/gallery/data/FilterSet;->access$000(Lcom/miui/gallery/data/FilterSet;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 107
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/miui/gallery/data/FilterSet$1;->val$total:I

    if-lt p1, v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 109
    .local v0, path:Lcom/miui/gallery/data/Path;
    iget-object v1, p0, Lcom/miui/gallery/data/FilterSet$1;->val$buf:[Lcom/miui/gallery/data/Path;

    aput-object v0, v1, p1

    goto :goto_0
.end method
