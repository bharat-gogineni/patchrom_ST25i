.class Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;
.super Ljava/lang/Object;
.source "CollectionHelper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorCaster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster<TS;TD;>;"
    .local p1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;->mIterator:Ljava/util/Iterator;

    .line 33
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster<TS;TD;>;"
    iget-object v0, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster<TS;TD;>;"
    iget-object v0, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;,"Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster<TS;TD;>;"
    iget-object v0, p0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster$IteratorCaster;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 49
    return-void
.end method
