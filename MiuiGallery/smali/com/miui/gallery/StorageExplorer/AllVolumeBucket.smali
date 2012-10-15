.class public Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;
.super Ljava/lang/Object;
.source "AllVolumeBucket.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/FileBucket;


# instance fields
.field private mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/StorageExplorer/SortedList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

.field private mStorageHelper:Lcom/miui/gallery/util/StorageHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/StorageHelper;)V
    .locals 2
    .parameter "storageHelper"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    .line 23
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/StorageHelper;

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    .line 24
    new-instance v0, Lcom/miui/gallery/StorageExplorer/SortedList;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-direct {v0, v1}, Lcom/miui/gallery/StorageExplorer/SortedList;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    .line 25
    return-void
.end method


# virtual methods
.method public deleteAllMedia()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 112
    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 117
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getFileMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 103
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/StorageHelper;->getAllVolumesVirtualPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->getSortMethod()I

    move-result v0

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isModified()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .local v0, currentDirDateModified:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v10}, Lcom/miui/gallery/StorageExplorer/SortedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 41
    .local v3, dirInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    iget-object v10, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    iget-wide v11, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v3           #dirInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .local v7, newDirDateModified:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v10}, Lcom/miui/gallery/util/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v5

    .line 46
    .local v5, mountVolumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageVolume;

    .line 47
    .local v8, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50
    .end local v8           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v10, v11, :cond_3

    .line 65
    :cond_2
    :goto_2
    return v9

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 55
    .local v2, currentKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, currentKey:Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 57
    .local v6, newDateModified:Ljava/lang/Long;
    if-eqz v6, :cond_2

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    .line 65
    .end local v1           #currentKey:Ljava/lang/String;
    .end local v6           #newDateModified:Ljava/lang/Long;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public loadAllMedias()V
    .locals 5

    .prologue
    .line 69
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/SortedList;->clear()V

    .line 71
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/util/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 72
    .local v2, mountVolumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 73
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 74
    .local v1, info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/StorageExplorer/SortedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v1           #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    return-void
.end method

.method public setFilterFlags(I)V
    .locals 0
    .parameter "filterFlags"

    .prologue
    .line 28
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 126
    return-void
.end method
