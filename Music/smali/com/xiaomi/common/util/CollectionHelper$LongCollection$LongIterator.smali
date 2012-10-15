.class Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;
.super Ljava/lang/Object;
.source "CollectionHelper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CollectionHelper$LongCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mCounter:I

.field private final mLen:I

.field private final mSrc:[J


# direct methods
.method public constructor <init>([JI)V
    .locals 1
    .parameter "src"
    .parameter "len"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mSrc:[J

    .line 102
    iput p2, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mLen:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mCounter:I

    .line 104
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mCounter:I

    iget v1, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mLen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mSrc:[J

    iget v1, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->mCounter:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported remove from ArrayIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
