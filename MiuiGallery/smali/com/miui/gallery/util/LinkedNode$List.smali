.class public Lcom/miui/gallery/util/LinkedNode$List;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/LinkedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/util/LinkedNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/miui/gallery/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/miui/gallery/util/LinkedNode;

    invoke-direct {v0}, Lcom/miui/gallery/util/LinkedNode;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    return-void
.end method


# virtual methods
.method public getFirst()Lcom/miui/gallery/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    #getter for: Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {v0}, Lcom/miui/gallery/util/LinkedNode;->access$100(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    #getter for: Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {v0}, Lcom/miui/gallery/util/LinkedNode;->access$100(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getLast()Lcom/miui/gallery/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    #getter for: Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {v0}, Lcom/miui/gallery/util/LinkedNode;->access$000(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    #getter for: Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {v0}, Lcom/miui/gallery/util/LinkedNode;->access$000(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method

.method public insertLast(Lcom/miui/gallery/util/LinkedNode;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<TT;>;"
    .local p1, node:Lcom/miui/gallery/util/LinkedNode;,"TT;"
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    #getter for: Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {v0}, Lcom/miui/gallery/util/LinkedNode;->access$000(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/LinkedNode;->insert(Lcom/miui/gallery/util/LinkedNode;)V

    .line 52
    return-void
.end method

.method public nextOf(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<TT;>;"
    .local p1, node:Lcom/miui/gallery/util/LinkedNode;,"TT;"
    #getter for: Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {p1}, Lcom/miui/gallery/util/LinkedNode;->access$100(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    #getter for: Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {p1}, Lcom/miui/gallery/util/LinkedNode;->access$100(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method

.method public previousOf(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<TT;>;"
    .local p1, node:Lcom/miui/gallery/util/LinkedNode;,"TT;"
    #getter for: Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {p1}, Lcom/miui/gallery/util/LinkedNode;->access$000(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/LinkedNode$List;->mHead:Lcom/miui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    #getter for: Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;
    invoke-static {p1}, Lcom/miui/gallery/util/LinkedNode;->access$000(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    goto :goto_0
.end method
