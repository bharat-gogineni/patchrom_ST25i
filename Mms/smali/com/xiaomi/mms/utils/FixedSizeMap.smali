.class public Lcom/xiaomi/mms/utils/FixedSizeMap;
.super Ljava/util/LinkedHashMap;
.source "FixedSizeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private mMaxSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "maxSize"

    .prologue
    .line 11
    .local p0, this:Lcom/xiaomi/mms/utils/FixedSizeMap;,"Lcom/xiaomi/mms/utils/FixedSizeMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    iput p2, p0, Lcom/xiaomi/mms/utils/FixedSizeMap;->mMaxSize:I

    .line 13
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/xiaomi/mms/utils/FixedSizeMap;,"Lcom/xiaomi/mms/utils/FixedSizeMap<TK;TV;>;"
    .local p1, kvEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/xiaomi/mms/utils/FixedSizeMap;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/mms/utils/FixedSizeMap;->mMaxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
