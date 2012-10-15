.class Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;
.super Ljava/util/LinkedHashMap;
.source "ThumbnailCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 230
    const/4 v0, 0x0

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 231
    iput p1, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->mSize:I

    .line 232
    return-void
.end method


# virtual methods
.method public getThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "key"

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 241
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 242
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 244
    :cond_0
    return-object v0
.end method

.method public putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "key"
    .parameter "thumbnail"

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->mSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
