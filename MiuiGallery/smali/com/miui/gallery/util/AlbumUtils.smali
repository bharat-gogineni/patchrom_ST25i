.class public Lcom/miui/gallery/util/AlbumUtils;
.super Ljava/lang/Object;
.source "AlbumUtils.java"


# static fields
.field public static CAMERA_PATH:Ljava/lang/String;

.field public static EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

.field public static final EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

.field public static INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

.field public static final INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_SAVED_FOLDER_PATH:Ljava/lang/String;

.field private static mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private static sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/handwritings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_SAVED_FOLDER_PATH:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/StorageExplorer/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlbumSetSortMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 147
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->addSortMenu(Landroid/view/Menu;)Landroid/view/SubMenu;

    move-result-object v0

    .line 148
    .local v0, sortMenu:Landroid/view/SubMenu;
    const/4 v1, 0x4

    const/4 v2, 0x2

    const v3, 0x7f0d0124

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 149
    const/4 v1, -0x4

    const/4 v2, 0x3

    const v3, 0x7f0d0125

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 150
    const/4 v1, 0x0

    invoke-interface {v0, v1, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 151
    return-void
.end method

.method public static addAlbumSortMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 139
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->addSortMenu(Landroid/view/Menu;)Landroid/view/SubMenu;

    move-result-object v0

    .line 140
    .local v0, sortMenu:Landroid/view/SubMenu;
    const v1, 0x7f0d0122

    invoke-static {v0, v2, v2, v1}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 141
    const/4 v1, -0x2

    const/4 v2, 0x3

    const v3, 0x7f0d0123

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 142
    const/4 v1, 0x0

    invoke-interface {v0, v1, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 143
    return-void
.end method

.method public static addDefaultAlbums()V
    .locals 13

    .prologue
    .line 73
    const/4 v10, 0x7

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    const/4 v10, 0x2

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    const/4 v10, 0x4

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    const/4 v10, 0x5

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    const/4 v10, 0x6

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_SAVED_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v5, v10

    .line 79
    .local v5, defaultRecentAlbums:[Ljava/lang/String;
    const/16 v10, 0x9

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x2

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x4

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x5

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x6

    sget-object v11, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_SAVED_FOLDER_PATH:Ljava/lang/String;

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-string v11, "/system/media/wallpaper"

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-string v11, "/system/media/lockscreen"

    aput-object v11, v4, v10

    .line 86
    .local v4, defaultAlbums:[Ljava/lang/String;
    sget-object v10, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v10, :cond_0

    .line 125
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v10, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v10, v4}, Lcom/miui/gallery/util/GalleryDBHelper;->findDefaultAlbums([Ljava/lang/String;)Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v3

    .line 92
    .local v3, currentDefaultAlbums:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    invoke-virtual {v3}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 94
    .local v2, albumPathArray:[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, firstIndex:I
    :goto_1
    array-length v10, v4

    if-ge v7, v10, :cond_6

    .line 95
    aget-object v1, v4, v7

    .line 98
    .local v1, albumPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 99
    .local v6, findAlbum:Z
    const/4 v8, 0x0

    .local v8, secondIndex:I
    :goto_2
    array-length v10, v2

    if-ge v8, v10, :cond_1

    .line 100
    aget-object v9, v2, v8

    check-cast v9, Ljava/lang/String;

    .line 101
    .local v9, source:Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 102
    const/4 v6, 0x1

    .line 107
    .end local v9           #source:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 110
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    const-string v10, "/system/media/wallpaper"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "/system/media/lockscreen"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 114
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/miui/gallery/data/DBAlbum;->setIsHidden(Z)V

    .line 119
    :goto_3
    sget-object v10, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v11, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;

    sget-object v12, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v12, v0}, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v10, v11}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 94
    .end local v0           #album:Lcom/miui/gallery/data/DBAlbum;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 99
    .restart local v9       #source:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 116
    .end local v9           #source:Ljava/lang/String;
    .restart local v0       #album:Lcom/miui/gallery/data/DBAlbum;
    :cond_5
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/miui/gallery/data/DBAlbum;->setIsManuallyRecent(Z)V

    goto :goto_3

    .line 124
    .end local v0           #album:Lcom/miui/gallery/data/DBAlbum;
    .end local v1           #albumPath:Ljava/lang/String;
    .end local v6           #findAlbum:Z
    .end local v8           #secondIndex:I
    :cond_6
    sget-object v10, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v10, v5}, Lcom/miui/gallery/util/GalleryDBHelper;->initRecentAlbumManuallyRecent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static addMenuItem(Landroid/view/Menu;III)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 155
    return-void
.end method

.method private static addMenuItem(Landroid/view/Menu;IIII)V
    .locals 2
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconId"

    .prologue
    .line 158
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, p2, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 159
    .local v0, item:Landroid/view/MenuItem;
    if-eqz p4, :cond_0

    .line 160
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 162
    :cond_0
    return-void
.end method

.method private static addSortMenu(Landroid/view/Menu;)Landroid/view/SubMenu;
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    const v1, 0x7f0d011f

    invoke-interface {p0, v2, v2, v2, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 130
    .local v0, sortMenu:Landroid/view/SubMenu;
    const v1, 0x7f0d0120

    invoke-static {v0, v3, v2, v1}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 131
    const/4 v1, -0x1

    const v2, 0x7f0d0121

    invoke-static {v0, v1, v3, v2}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 132
    const/4 v1, 0x3

    const/4 v2, 0x4

    const v3, 0x7f0d0126

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 133
    const/4 v1, -0x3

    const/4 v2, 0x5

    const v3, 0x7f0d0127

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->addMenuItem(Landroid/view/Menu;III)V

    .line 134
    return-object v0
.end method

.method public static findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAlbumSortBy(Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"

    .prologue
    .line 171
    invoke-static {p0}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 172
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_1

    .line 175
    const-string v1, "AlbumUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album is null for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, -0x3

    :goto_0
    return v1

    .line 177
    .restart local p0
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getSortBy()I

    move-result v1

    goto :goto_0
.end method

.method public static getBucketDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"
    .parameter "bucketName"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, id:I
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const v0, 0x7f0d00df

    .line 237
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .end local p1
    :goto_1
    return-object p1

    .line 218
    .restart local p1
    :cond_1
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    const v0, 0x7f0d00e0

    goto :goto_0

    .line 221
    :cond_2
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    const v0, 0x7f0d00e1

    goto :goto_0

    .line 224
    :cond_3
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    const v0, 0x7f0d00e2

    goto :goto_0

    .line 227
    :cond_4
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    const v0, 0x7f0d00e3

    goto :goto_0

    .line 230
    :cond_5
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    const v0, 0x7f0d00e4

    goto :goto_0

    .line 233
    :cond_6
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->MILIAO_SAVED_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const v0, 0x7f0d00e5

    goto :goto_0

    .line 237
    :cond_7
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_1
.end method

.method public static increaseAlbumVisitCount(Ljava/lang/String;)V
    .locals 4
    .parameter "bucketPath"

    .prologue
    .line 245
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 251
    .local v0, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_2

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/DBAlbum;->setRecentVisitTime(J)V

    .line 253
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DBAlbum;->setVisitCount(I)V

    .line 254
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 262
    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V

    .line 263
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadRecentAlbumCache()V

    goto :goto_0

    .line 256
    :cond_2
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v0       #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/DBAlbum;->setRecentVisitTime(J)V

    .line 258
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DBAlbum;->setVisitCount(I)V

    .line 259
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryDBHelper()Lcom/miui/gallery/util/GalleryDBHelper;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    .line 68
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/util/AlbumUtils;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 69
    return-void
.end method

.method private static isAlbumFlag(Ljava/lang/String;I)Z
    .locals 4
    .parameter "filePath"
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 442
    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 446
    :cond_1
    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 447
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_0

    .line 448
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 449
    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v1

    goto :goto_0

    .line 451
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v1

    goto :goto_0
.end method

.method public static isHiddenAlbum(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 415
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    .line 416
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/AllAlbumCache;->getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    .line 417
    .local v1, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v1, :cond_0

    .line 420
    const/4 v2, 0x1

    .line 422
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v2

    goto :goto_0
.end method

.method public static isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z
    .locals 5
    .parameter "dbAlbum"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, result:Z
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/settings/PreferenceHelper;->isAutoCreateRecentAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v3

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v1

    .line 437
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 430
    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v3

    if-ne v1, v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static isRecentAlbum(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 400
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v0

    .line 401
    .local v0, recentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/RecentAlbumCache;->getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prepareOptionsMenu(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "sortBy"

    .prologue
    .line 166
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 167
    return-void
.end method

.method public static reloadAlbumCache()V
    .locals 2

    .prologue
    .line 471
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    .line 476
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    invoke-static {}, Lcom/miui/gallery/data/AlbumCache;->reloadCache()V

    .line 478
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/AllAlbumCache;->reloadCache()Z

    .line 479
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/RecentAlbumCache;->reloadCache()Z

    .line 480
    return-void
.end method

.method public static reloadRecentAlbumCache()V
    .locals 2

    .prologue
    .line 483
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    .line 484
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/RecentAlbumCache;->reloadCache()Z

    .line 485
    return-void
.end method

.method public static removeAlbumFlag(Ljava/lang/String;I)Z
    .locals 5
    .parameter "filePath"
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 363
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 395
    :goto_0
    return v1

    .line 367
    :cond_1
    const/4 v1, 0x0

    .line 368
    .local v1, shouldModifyDatabase:Z
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 369
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_6

    .line 370
    if-ne p1, v4, :cond_3

    .line 371
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    :cond_2
    const/4 v1, 0x1

    .line 374
    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DBAlbum;->setIsHiddenRecent(Z)V

    .line 375
    invoke-virtual {v0, v2}, Lcom/miui/gallery/data/DBAlbum;->setIsManuallyRecent(Z)V

    .line 378
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 379
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    const/4 v1, 0x1

    .line 382
    invoke-virtual {v0, v2}, Lcom/miui/gallery/data/DBAlbum;->setIsHidden(Z)V

    .line 385
    :cond_4
    if-eqz v1, :cond_5

    .line 386
    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v3, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v4, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 393
    :cond_5
    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V

    goto :goto_0

    .line 389
    :cond_6
    const-string v3, "AlbumUtils"

    const-string v4, "Why the album not in database?"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 390
    goto :goto_0
.end method

.method public static removeRecentAlbum(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 280
    .local v0, databaseModified:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 281
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    if-eqz v0, :cond_2

    .line 286
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 288
    :cond_2
    return-void
.end method

.method public static setAlbumFlag(Ljava/lang/String;I)Z
    .locals 7
    .parameter "filePath"
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 317
    sget-object v4, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 357
    :goto_0
    return v2

    .line 321
    :cond_1
    const/4 v2, 0x0

    .line 322
    .local v2, shouldModifyDatabase:Z
    sget-object v4, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v4, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 323
    .local v0, albumFind:Lcom/miui/gallery/data/DBAlbum;
    const/4 v1, 0x1

    .line 324
    .local v1, isUpdateAlbum:Z
    if-nez v0, :cond_2

    .line 325
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #albumFind:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v0       #albumFind:Lcom/miui/gallery/data/DBAlbum;
    const/4 v1, 0x0

    .line 328
    const/4 v2, 0x1

    .line 330
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 331
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v4

    if-eq v4, v6, :cond_3

    .line 332
    const/4 v2, 0x1

    .line 334
    invoke-virtual {v0, v6}, Lcom/miui/gallery/data/DBAlbum;->setIsHidden(Z)V

    .line 337
    :cond_3
    if-ne p1, v6, :cond_5

    .line 338
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v4

    if-eq v4, v6, :cond_5

    .line 339
    :cond_4
    const/4 v2, 0x1

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/data/DBAlbum;->setRecentVisitTime(J)V

    .line 342
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DBAlbum;->setVisitCount(I)V

    .line 343
    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBAlbum;->setIsHiddenRecent(Z)V

    .line 344
    invoke-virtual {v0, v6}, Lcom/miui/gallery/data/DBAlbum;->setIsManuallyRecent(Z)V

    .line 347
    :cond_5
    if-eqz v1, :cond_7

    .line 348
    if-eqz v2, :cond_6

    .line 349
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v4, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v5, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 356
    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V

    goto :goto_0

    .line 352
    :cond_7
    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v4, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;

    sget-object v5, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v0}, Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    goto :goto_1
.end method

.method public static setAlbumSDCardSortBy(Ljava/lang/String;I)V
    .locals 4
    .parameter "filePath"
    .parameter "SDCardSortBy"

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-static {p0}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 200
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/DBAlbum;->setSDCardSortBy(I)V

    .line 203
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v1, "album should not be null here, because increaseAlbumVisitCount() will help insert the album already"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setAlbumSortBy(Ljava/lang/String;I)V
    .locals 4
    .parameter "filePath"
    .parameter "sortBy"

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-static {p0}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 185
    .local v0, album:Lcom/miui/gallery/data/DBAlbum;
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/DBAlbum;->setSortBy(I)V

    .line 188
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    new-instance v2, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;

    sget-object v3, Lcom/miui/gallery/util/AlbumUtils;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string v1, "album should not be null here, because increaseAlbumVisitCount() will help insert the album already"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setRecentAlbum(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 268
    .local v0, databaseModified:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 269
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_1
    if-eqz v0, :cond_2

    .line 274
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 276
    :cond_2
    return-void
.end method

.method private static toggleAlbumFlag(Ljava/lang/String;I)Z
    .locals 2
    .parameter "filePath"
    .parameter "flag"

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, databaseModified:Z
    invoke-static {p0, p1}, Lcom/miui/gallery/util/AlbumUtils;->isAlbumFlag(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-static {p0, p1}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v0

    .line 308
    :goto_0
    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 311
    :cond_0
    return v0

    .line 305
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static toggleHiddenAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 295
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/gallery/util/AlbumUtils;->toggleAlbumFlag(Ljava/lang/String;I)Z

    .line 296
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 297
    return-void
.end method

.method public static toggleRecentAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/util/AlbumUtils;->toggleAlbumFlag(Ljava/lang/String;I)Z

    .line 292
    return-void
.end method
