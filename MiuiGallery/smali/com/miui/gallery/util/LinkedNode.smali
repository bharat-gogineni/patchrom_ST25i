.class public Lcom/miui/gallery/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/LinkedNode$List;
    }
.end annotation


# instance fields
.field private mNext:Lcom/miui/gallery/util/LinkedNode;

.field private mPrev:Lcom/miui/gallery/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    iput-object p0, p0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    return-object v0
.end method

.method public static newList()Lcom/miui/gallery/util/LinkedNode$List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/util/LinkedNode;",
            ">()",
            "Lcom/miui/gallery/util/LinkedNode$List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/miui/gallery/util/LinkedNode$List;

    invoke-direct {v0}, Lcom/miui/gallery/util/LinkedNode$List;-><init>()V

    return-object v0
.end method


# virtual methods
.method public insert(Lcom/miui/gallery/util/LinkedNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    iput-object v0, p1, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    iput-object p1, v0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    .line 31
    iput-object p0, p1, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    .line 33
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    iget-object v1, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    iput-object v1, v0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    iget-object v1, p0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    iput-object v1, v0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mNext:Lcom/miui/gallery/util/LinkedNode;

    iput-object v0, p0, Lcom/miui/gallery/util/LinkedNode;->mPrev:Lcom/miui/gallery/util/LinkedNode;

    .line 40
    return-void
.end method
