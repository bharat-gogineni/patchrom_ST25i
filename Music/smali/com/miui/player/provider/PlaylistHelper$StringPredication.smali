.class Lcom/miui/player/provider/PlaylistHelper$StringPredication;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Lcom/xiaomi/common/util/CollectionHelper$Predication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/PlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPredication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/common/util/CollectionHelper$Predication",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Audio;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRefCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
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
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, ref:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/miui/player/provider/PlaylistHelper$StringPredication;->mRefCollection:Ljava/util/Collection;

    .line 255
    return-void
.end method


# virtual methods
.method public predicate(Lcom/miui/player/plugin/onlinemusic2/Audio;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/player/provider/PlaylistHelper$StringPredication;->mRefCollection:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic predicate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    check-cast p1, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/provider/PlaylistHelper$StringPredication;->predicate(Lcom/miui/player/plugin/onlinemusic2/Audio;)Z

    move-result v0

    return v0
.end method
