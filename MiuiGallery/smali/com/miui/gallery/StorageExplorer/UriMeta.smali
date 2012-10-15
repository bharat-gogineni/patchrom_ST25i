.class public Lcom/miui/gallery/StorageExplorer/UriMeta;
.super Lcom/miui/gallery/StorageExplorer/BaseMeta;
.source "UriMeta.java"


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public getThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pixelSize"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/UriMeta;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
