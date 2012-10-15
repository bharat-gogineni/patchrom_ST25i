.class public interface abstract Lcom/miui/gallery/StorageExplorer/FileBucket;
.super Ljava/lang/Object;
.source "FileBucket.java"


# virtual methods
.method public abstract deleteAllMedia()V
.end method

.method public abstract deleteMedias(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getFileCount()I
.end method

.method public abstract getFileMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
.end method

.method public abstract getFolderCount()I
.end method

.method public abstract getImageCount()I
.end method

.method public abstract getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
.end method

.method public abstract getParentPath()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getSortOrder()I
.end method

.method public abstract getVideoCount()I
.end method

.method public abstract isModified()Z
.end method

.method public abstract loadAllMedias()V
.end method

.method public abstract setFilterFlags(I)V
.end method

.method public abstract setSortOrder(I)V
.end method
