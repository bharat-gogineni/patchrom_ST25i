.class Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;
.super Ljava/util/AbstractCollection;
.source "CollectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CollectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectionCaster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final mSrcCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster<TS;TD;>;"
    .local p1, src:Ljava/util/Collection;,"Ljava/util/Collection<TS;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;->mSrcCollection:Ljava/util/Collection;

    .line 16
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster<TS;TD;>;"
    new-instance v0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;

    iget-object v1, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;->mSrcCollection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 25
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster<TS;TD;>;"
    iget-object v0, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;->mSrcCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
