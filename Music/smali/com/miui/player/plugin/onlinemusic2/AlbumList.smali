.class public Lcom/miui/player/plugin/onlinemusic2/AlbumList;
.super Lcom/miui/player/plugin/onlinemusic2/MetaList;
.source "AlbumList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Album;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, albums:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Album;>;"
    invoke-direct {p0, p1}, Lcom/miui/player/plugin/onlinemusic2/MetaList;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method
