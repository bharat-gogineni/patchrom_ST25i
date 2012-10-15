.class public Lcom/android/thememanager/ThemeResourceFolder;
.super Lmiui/app/resourcebrowser/service/local/ZipResourceFolder;
.source "ThemeResourceFolder.java"


# instance fields
.field private mClockPhotoSizeCategory:Ljava/lang/String;

.field private mResourceType:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    const-wide/16 v2, -0x1

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/service/local/ZipResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    .line 23
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 24
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    .line 26
    :cond_0
    return-void
.end method

.method private deleteOldResource()V
    .locals 9

    .prologue
    .line 67
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, dir:Ljava/io/File;
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    sget-object v8, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, files:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 73
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v5, mapIdToVersionPath:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 75
    .local v6, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/thememanager/ThemeHelper;->deleteUnusedThemeTmpFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createZipResource(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)Lmiui/app/resourcebrowser/service/local/ZipResourceInfo;
    .locals 12
    .parameter "context"
    .parameter "filePath"
    .parameter "zipCache"

    .prologue
    .line 36
    invoke-static {p2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 37
    const/4 v3, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object v3

    .line 39
    :cond_1
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-wide/16 v4, -0x1

    .line 41
    .local v4, previewFlags:J
    :goto_1
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 42
    .local v0, cacheFlags:Ljava/lang/Long;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 43
    .local v1, componentFlags:J
    :goto_2
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, p2, p3, v7}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v3

    .line 45
    .local v3, info:Lcom/android/thememanager/ThemeInfo;
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 46
    if-eqz v3, :cond_5

    iget-wide v1, v3, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    .line 47
    :goto_3
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    invoke-static {v6, v7, v1, v2}, Lcom/android/thememanager/ThemeHelper;->matchThemeResource(JJ)Z

    move-result v6

    if-nez v6, :cond_6

    .line 51
    const/4 v3, 0x0

    goto :goto_0

    .line 39
    .end local v0           #cacheFlags:Ljava/lang/Long;
    .end local v1           #componentFlags:J
    .end local v3           #info:Lcom/android/thememanager/ThemeInfo;
    .end local v4           #previewFlags:J
    :cond_3
    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    goto :goto_1

    .line 42
    .restart local v0       #cacheFlags:Ljava/lang/Long;
    .restart local v4       #previewFlags:J
    :cond_4
    const-wide/16 v1, 0x0

    goto :goto_2

    .line 46
    .restart local v1       #componentFlags:J
    .restart local v3       #info:Lcom/android/thememanager/ThemeInfo;
    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 53
    :cond_6
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/thememanager/ThemeInfo;->parsePreviewsInfo(JLmiui/app/resourcebrowser/service/local/ZipResourceCache;)V

    .line 55
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v8, 0x10000

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v8, 0x20000

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 57
    :cond_7
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceFolder;->mClockPhotoSizeCategory:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v10, 0x10000

    cmp-long v6, v8, v10

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v3, v7, v6}, Lcom/android/thememanager/ThemeInfo;->containClockPhotoFrameSize(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 58
    const/4 v3, 0x0

    goto :goto_0

    .line 57
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 60
    :cond_9
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceFolder;->mClockPhotoSizeCategory:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v10, 0x10000

    cmp-long v6, v8, v10

    if-nez v6, :cond_a

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v3, v7, v6}, Lcom/android/thememanager/ThemeInfo;->filterClockPhotoFramePreviews(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto :goto_5
.end method

.method protected onPreLoadData()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mClockPhotoSizeCategory:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceFolder;->deleteOldResource()V

    .line 32
    return-void
.end method
