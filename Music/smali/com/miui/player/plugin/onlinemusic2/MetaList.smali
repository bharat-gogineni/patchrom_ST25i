.class public Lcom/miui/player/plugin/onlinemusic2/MetaList;
.super Ljava/lang/Object;
.source "MetaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, this:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"Lcom/miui/player/plugin/onlinemusic2/MetaList<TT;>;"
    .local p1, content:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/MetaList;->mContent:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"Lcom/miui/player/plugin/onlinemusic2/MetaList<TT;>;"
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/MetaList;->mContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 15
    .local p0, this:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"Lcom/miui/player/plugin/onlinemusic2/MetaList<TT;>;"
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/MetaList;->mContent:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 19
    .local p0, this:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"Lcom/miui/player/plugin/onlinemusic2/MetaList<TT;>;"
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/MetaList;->mContent:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/MetaList;->mContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
