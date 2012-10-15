.class public Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
.super Ljava/util/HashMap;
.source "AlbumCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/AlbumCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DBAlbumMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/gallery/data/DBAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBAlbum;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/miui/gallery/data/DBAlbum;)Lcom/miui/gallery/data/DBAlbum;
    .locals 1
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBAlbum;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/miui/gallery/data/DBAlbum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->put(Ljava/lang/String;Lcom/miui/gallery/data/DBAlbum;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    return-object v0
.end method
