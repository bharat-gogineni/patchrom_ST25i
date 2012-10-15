.class public Lcom/miui/gallery/util/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# static fields
.field private static sManager:Lcom/miui/gallery/util/StorageHelper;


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/miui/gallery/util/StorageHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 24
    return-void
.end method

.method private findVolumeByDirectory(Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 8
    .parameter "directory"

    .prologue
    const/4 v6, 0x0

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 144
    :cond_0
    :goto_0
    return-object v5

    .line 136
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, tempDir:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/util/StorageHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 138
    .local v4, totalVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 139
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    move-object v5, v6

    .line 144
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/gallery/util/StorageHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    sget-object v0, Lcom/miui/gallery/util/StorageHelper;->sManager:Lcom/miui/gallery/util/StorageHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/miui/gallery/util/StorageHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/StorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/util/StorageHelper;->sManager:Lcom/miui/gallery/util/StorageHelper;

    .line 30
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/StorageHelper;->sManager:Lcom/miui/gallery/util/StorageHelper;

    return-object v0
.end method

.method private isVolumeRoot(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 8
    .parameter "directory"
    .parameter "volumes"

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v5

    .line 106
    :cond_1
    if-eqz p2, :cond_0

    .line 110
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 111
    .local v3, obj:Ljava/lang/Object;
    instance-of v6, v3, Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_2

    .line 112
    const-string v6, "StorageHelper"

    const-string v7, "obj must be instanceof StorageVolume"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v4, v3

    .line 114
    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 115
    .local v4, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    const/4 v5, 0x1

    goto :goto_0

    .line 110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAllVolumesDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllVolumesVirtualPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "/"

    return-object v0
.end method

.method public getMountVolumeList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v6, p0, Lcom/miui/gallery/util/StorageHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 93
    .local v4, totalVolumes:[Landroid/os/storage/StorageVolume;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, mountVolumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 95
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/miui/gallery/util/StorageHelper;->isVolumeMounted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    return-object v3
.end method

.method public getVolumeByDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "directory"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/StorageHelper;->findVolumeByDirectory(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 149
    .local v0, volume:Landroid/os/storage/StorageVolume;
    if-nez v0, :cond_0

    .line 150
    const-string v1, ""

    .line 152
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVolumeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "volumeDir"

    .prologue
    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const-string p1, ""

    .line 171
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 160
    .restart local p1
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/StorageHelper;->findVolumeByDirectory(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 161
    .local v0, storageVolume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d011c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/os/Environment;->isStorageUsb(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d011e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d011d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public hasMountedVolume()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/miui/gallery/util/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllVolume(Ljava/lang/String;)Z
    .locals 1
    .parameter "volumeDir"

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/util/StorageHelper;->getAllVolumesVirtualPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isMountedVolume(Ljava/lang/String;)Z
    .locals 1
    .parameter "directory"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/util/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/util/StorageHelper;->isVolumeRoot(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVolumeMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "storagePath"

    .prologue
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    const-string v0, "mounted"

    iget-object v1, p0, Lcom/miui/gallery/util/StorageHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isVolumeRoot(Ljava/lang/String;)Z
    .locals 1
    .parameter "directory"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/util/StorageHelper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/util/StorageHelper;->isVolumeRoot(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
