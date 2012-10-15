.class Lcom/xiaomi/common/util/CollectionHelper$LongCollection;
.super Ljava/util/AbstractCollection;
.source "CollectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CollectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLen:I

.field private final mSrc:[J


# direct methods
.method constructor <init>([JI)V
    .locals 1
    .parameter "src"
    .parameter "len"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;->mSrc:[J

    .line 78
    if-gtz p2, :cond_0

    .line 79
    array-length v0, p1

    iput v0, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;->mLen:I

    .line 83
    .end local p2
    :goto_0
    return-void

    .line 81
    .restart local p2
    :cond_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .end local p2
    :goto_1
    iput p2, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;->mLen:I

    goto :goto_0

    .restart local p2
    :cond_1
    array-length p2, p1

    goto :goto_1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;

    iget-object v1, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;->mSrc:[J

    iget v2, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;->mLen:I

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/common/util/CollectionHelper$LongCollection$LongIterator;-><init>([JI)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;->mLen:I

    return v0
.end method
