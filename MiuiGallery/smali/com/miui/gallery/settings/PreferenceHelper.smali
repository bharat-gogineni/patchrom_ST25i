.class public Lcom/miui/gallery/settings/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static sLastVisitedFolderPath:Ljava/lang/String;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    .line 66
    return-void
.end method

.method public static alertedOnlyInitialCloud()Z
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "alerted_only_initial_cloud"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getDefaultEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterMinSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "filter_min_size"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastFindBrokensTime()J
    .locals 4

    .prologue
    .line 219
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_find_brokens_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSlowScanTime()J
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_slowscan_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastVisitedFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    sget-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_visited_folder"

    sget-object v2, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 137
    :cond_1
    sget-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastVisitedType()I
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last-visited-type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isSyncCompletelyFinish()Z
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sync_completely_finish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onlySyncInWifi()Z
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sync_only_in_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static removeCloudSettings()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_slowscan_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_gallery_space_full"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_history_power_on"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_only_in_wifi"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alerted_only_sync_history_power_on"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_completely_finish"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_find_brokens_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alerted_only_initial_cloud"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public static sIsShowHidden()Z
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_hidden_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAlertedOnlyInitialCloud(Z)V
    .locals 2
    .parameter "alerted"

    .prologue
    .line 190
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alerted_only_initial_cloud"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.method public static setCloudGallerySpaceFull(Z)V
    .locals 2
    .parameter "isFull"

    .prologue
    .line 168
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_gallery_space_full"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method

.method public static setLastFindBrokensTime(J)V
    .locals 2
    .parameter "lastTime"

    .prologue
    .line 215
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_find_brokens_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method

.method public static setLastSlowScanTime(J)V
    .locals 2
    .parameter "lastTime"

    .prologue
    .line 160
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_slowscan_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method

.method public static setLastVisitedFolderPath(Ljava/lang/String;)V
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 124
    sget-object v0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sput-object p0, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_visited_folder"

    sget-object v2, Lcom/miui/gallery/settings/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :cond_0
    return-void
.end method

.method public static setLastVisitedType(I)V
    .locals 2
    .parameter "lastVisitedType"

    .prologue
    .line 104
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last-visited-type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public static setSyncCompletelyFinish(Z)V
    .locals 2
    .parameter "finish"

    .prologue
    .line 198
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_completely_finish"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method


# virtual methods
.method public getAllAlbumsSortBy()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "all-album-sort-by"

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRecentAlbumsSortBy()I
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "recent-album-sort-by"

    const/4 v2, -0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlideshowInterval()I
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x2

    .line 71
    .local v0, interval:I
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "slideshow_interval"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAutoCreateRecentAlbum()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_create_recent_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowHidden()Z
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "show_hidden_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSlideshowRepeat()Z
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "slideshow_repeat_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAllAlbumsSortBy(I)V
    .locals 2
    .parameter "sortBy"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "all-album-sort-by"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method public setRecentAlbumsSortBy(I)V
    .locals 2
    .parameter "sortBy"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/miui/gallery/settings/PreferenceHelper;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "recent-album-sort-by"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method
