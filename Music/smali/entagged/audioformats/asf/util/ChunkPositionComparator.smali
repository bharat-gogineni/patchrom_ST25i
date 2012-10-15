.class public Lentagged/audioformats/asf/util/ChunkPositionComparator;
.super Ljava/lang/Object;
.source "ChunkPositionComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, result:I
    instance-of v3, p1, Lentagged/audioformats/asf/data/Chunk;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lentagged/audioformats/asf/data/Chunk;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Lentagged/audioformats/asf/data/Chunk;

    .local v0, c1:Lentagged/audioformats/asf/data/Chunk;
    move-object v1, p2

    .line 43
    check-cast v1, Lentagged/audioformats/asf/data/Chunk;

    .line 44
    .local v1, c2:Lentagged/audioformats/asf/data/Chunk;
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v3

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v2, v3

    .line 46
    .end local v0           #c1:Lentagged/audioformats/asf/data/Chunk;
    .end local v1           #c2:Lentagged/audioformats/asf/data/Chunk;
    :cond_0
    return v2
.end method
