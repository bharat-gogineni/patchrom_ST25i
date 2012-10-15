.class public abstract Lcom/miui/gallery/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/MediaSource$PathId;
    }
.end annotation


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/miui/gallery/data/MediaSource;->mPrefix:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "uri"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "item"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 8
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSource$PathId;",
            ">;",
            "Lcom/miui/gallery/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 79
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/MediaSource$PathId;

    .line 81
    .local v3, pid:Lcom/miui/gallery/data/MediaSource$PathId;
    iget-object v5, v3, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v5}, Lcom/miui/gallery/data/Path;->getObject()Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    .line 82
    .local v2, obj:Lcom/miui/gallery/data/MediaObject;
    if-nez v2, :cond_0

    .line 84
    :try_start_0
    iget-object v5, v3, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/data/MediaSource;->createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 90
    iget v5, v3, Lcom/miui/gallery/data/MediaSource$PathId;->id:I

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    .end local v2           #obj:Lcom/miui/gallery/data/MediaObject;
    invoke-interface {p2, v5, v2}, Lcom/miui/gallery/data/MediaSet$ItemConsumer;->consume(ILcom/miui/gallery/data/MediaItem;)V

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .restart local v2       #obj:Lcom/miui/gallery/data/MediaObject;
    :catch_0
    move-exception v4

    .line 86
    .local v4, th:Ljava/lang/Throwable;
    const-string v5, "MediaSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create media object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 93
    .end local v2           #obj:Lcom/miui/gallery/data/MediaObject;
    .end local v3           #pid:Lcom/miui/gallery/data/MediaSource$PathId;
    .end local v4           #th:Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
