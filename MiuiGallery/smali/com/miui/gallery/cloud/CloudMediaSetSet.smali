.class public Lcom/miui/gallery/cloud/CloudMediaSetSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "CloudMediaSetSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_SELECTION:Ljava/lang/String;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final sValidGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMediaSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/miui/gallery/data/ChangeNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "groupId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 26
    const-string v0, "( (%s = ?) AND (%s = ?) )"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "localFlag"

    aput-object v2, v1, v4

    const-string v2, "serverStatus"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->BUCKET_SELECTION:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->sValidGroupIds:Ljava/util/ArrayList;

    .line 37
    sget-object v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->sValidGroupIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->sValidGroupIds:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/gallery/cloud/CloudMediaSetSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mMediaSets:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/miui/gallery/data/ChangeNotifier;

    sget-object v1, Lcom/miui/gallery/provider/GalleryCloudProvider;->BASE_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    .line 68
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private createCloudMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 87
    const-string v1, "/com.miui.gallery.cloud.provider/all"

    invoke-static {v1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 88
    .local v0, path:Lcom/miui/gallery/data/Path;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/CloudMediaSet;

    return-object v1
.end method

.method private loadBucketEntries()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 92
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/cloud/CloudMediaSetSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/miui/gallery/cloud/CloudMediaSetSet;->BUCKET_SELECTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GROUP BY 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    const-string v9, "custom"

    aput-object v9, v4, v5

    const-string v5, "groupId ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 98
    const-string v0, "CloudMediaSetSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open local database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v8, 0x0

    .line 122
    :cond_0
    :goto_0
    return-object v8

    .line 102
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;>;"
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    new-instance v6, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;

    invoke-direct {v6}, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;-><init>()V

    .line 106
    .local v6, bucketEntry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    .line 108
    sget-object v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->sValidGroupIds:Ljava/util/ArrayList;

    iget v1, v6, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 118
    .end local v6           #bucketEntry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 119
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 113
    .restart local v6       #bucketEntry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    :cond_4
    :try_start_1
    const-string v0, "CloudMediaSetSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cloud group id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    .end local v6           #bucketEntry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    :cond_5
    if-eqz v7, :cond_0

    .line 119
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public getAllAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mMediaSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected loadSubMediaSets()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 127
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudMediaSetSet;->loadBucketEntries()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;>;"
    if-nez v0, :cond_1

    .line 129
    const-string v7, "CloudMediaSetSet"

    const-string v8, "return empty media sets"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :cond_0
    return-object v5

    .line 133
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v5, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;

    .line 136
    .local v1, entry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    iget v7, v1, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    invoke-direct {p0, v7}, Lcom/miui/gallery/cloud/CloudMediaSetSet;->createCloudMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    .line 137
    .local v4, mediaSet:Lcom/miui/gallery/data/MediaSet;
    if-eqz v4, :cond_2

    const/4 v7, 0x1

    :goto_1
    const-string v9, "Should not return null media set"

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v7, v8

    .line 137
    goto :goto_1

    .line 142
    .end local v1           #entry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    .end local v4           #mediaSet:Lcom/miui/gallery/data/MediaSet;
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, n:I
    :goto_2
    if-ge v2, v6, :cond_0

    .line 143
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->reload()J

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public notifyContentChanged()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/miui/gallery/data/MediaSet;->notifyContentChanged()V

    .line 166
    return-void
.end method

.method public declared-synchronized reload()J
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/miui/gallery/cloud/CloudMediaSetSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mDataVersion:J

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaSetSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mMediaSets:Ljava/util/ArrayList;

    .line 154
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
