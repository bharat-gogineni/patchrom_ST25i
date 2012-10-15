.class public Lcom/miui/gallery/util/GalleryDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;,
        Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;,
        Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;,
        Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;,
        Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;,
        Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;,
        Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;,
        Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;,
        Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;
    }
.end annotation


# static fields
.field public static final BASE_URI_EXTERNAL:Landroid/net/Uri;

.field public static final BASE_URI_INTERNAL:Landroid/net/Uri;

.field public static final mAlbumColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field public static final mCloudColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field public static final mCloudSettingColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/TableColumn;",
            ">;"
        }
    .end annotation
.end field

.field public static sShouldRunScanThread:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_EXTERNAL:Landroid/net/Uri;

    .line 60
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_INTERNAL:Landroid/net/Uri;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/util/GalleryDBHelper;->sShouldRunScanThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    const-string v0, "gallery.db"

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mContext:Landroid/content/Context;

    .line 82
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v5, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "bucket_id"

    const-string v3, "text"

    invoke-direct {v1, v6, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "bucket_path"

    const-string v3, "text"

    invoke-direct {v1, v7, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "recent_visit_time"

    const-string v3, "integer"

    invoke-direct {v1, v8, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "visit_count"

    const-string v3, "integer"

    invoke-direct {v1, v9, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x5

    const-string v3, "is_hidden_recent"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x6

    const-string v3, "is_manually_recent"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x7

    const-string v3, "is_hidden"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/16 v2, 0x8

    const-string v3, "sort_by"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/16 v2, 0x9

    const-string v3, "cover_path"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/16 v2, 0xa

    const-string v3, "sdcard_sort_by"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v5, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const-string v2, "groupId"

    const-string v3, "integer"

    invoke-direct {v1, v6, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const-string v2, "size"

    const-string v3, "integer"

    invoke-direct {v1, v7, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const-string v2, "dateModified"

    const-string v3, "integer"

    invoke-direct {v1, v8, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const-string v2, "mimeType"

    const-string v3, "text"

    invoke-direct {v1, v9, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/4 v2, 0x5

    const-string v3, "title"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/4 v2, 0x6

    const-string v3, "description"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/4 v2, 0x7

    const-string v3, "fileName"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x8

    const-string v3, "dateTaken"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x9

    const-string v3, "duration"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0xa

    const-string v3, "serverId"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0xb

    const-string v3, "serverType"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0xc

    const-string v3, "serverStatus"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0xd

    const-string v3, "serverTag"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0xe

    const-string v3, "exifImageWidth"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0xf

    const-string v3, "exifImageLength"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x10

    const-string v3, "exifOrientation"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x11

    const-string v3, "exifGPSLatitude"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x12

    const-string v3, "exifGPSLongitude"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x13

    const-string v3, "exifMake"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x14

    const-string v3, "exifModel"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x15

    const-string v3, "exifFlash"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x16

    const-string v3, "exifGPSLatitudeRef"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x17

    const-string v3, "exifGPSLongitudeRef"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x18

    const-string v3, "exifExposureTime"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x19

    const-string v3, "exifFNumber"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x1a

    const-string v3, "exifISOSpeedRatings"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x1b

    const-string v3, "exifGPSAltitude"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x1c

    const-string v3, "exifGPSAltitudeRef"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x1d

    const-string v3, "exifGPSTimeStamp"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x1e

    const-string v3, "exifGPSDateStamp"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x1f

    const-string v3, "exifWhiteBalance"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x20

    const-string v3, "exifFocalLength"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x21

    const-string v3, "exifGPSProcessingMethod"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x22

    const-string v3, "exifDateTime"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x23

    const-string v3, "localFlag"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x24

    const-string v3, "thumbnailFile"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x25

    const-string v3, "downloadFile"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x26

    const-string v3, "localFile"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x27

    const-string v3, "sha1"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x28

    const-string v3, "sortBy"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;

    const/16 v2, 0x29

    const-string v3, "microthumbfile"

    const-string v4, "text"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;

    const-string v2, "_id"

    const-string v3, "integer"

    invoke-direct {v1, v5, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;

    const-string v2, "accountName"

    const-string v3, "text"

    invoke-direct {v1, v6, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;

    const-string v2, "accountType"

    const-string v3, "text"

    invoke-direct {v1, v7, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;

    const-string v2, "syncTag"

    const-string v3, "integer"

    invoke-direct {v1, v8, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;

    const-string v2, "isSync"

    const-string v3, "integer"

    invoke-direct {v1, v9, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;

    const/4 v2, 0x5

    const-string v3, "isSyncOnlyOnWifi"

    const-string v4, "integer"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$CloudSettingColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    return-void
.end method

.method public static appendImageDetails(Lcom/miui/gallery/data/MediaDetails;Lcom/miui/gallery/data/MediaItem;)Lcom/miui/gallery/data/MediaDetails;
    .locals 3
    .parameter "details"
    .parameter "mediaItem"

    .prologue
    .line 747
    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 748
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/data/MediaDetails;->extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getHeight()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/data/MediaDetails;->ensureWidthHeight(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;II)V

    .line 750
    return-object p0
.end method

.method public static appendVideoDetails(Lcom/miui/gallery/data/MediaDetails;I)Lcom/miui/gallery/data/MediaDetails;
    .locals 2
    .parameter "details"
    .parameter "duration"

    .prologue
    .line 754
    if-lez p1, :cond_0

    .line 755
    const/16 v0, 0x8

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 758
    :cond_0
    return-object p0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "db"
    .parameter "tableName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/TableColumn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, tableColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/util/TableColumn;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 201
    const-string v3, " %s %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mColumType:Ljava/lang/String;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    if-nez v1, :cond_0

    .line 205
    const-string v2, " PRIMARY KEY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 209
    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_2
    const-string v2, "CREATE TABLE %s (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static findFilePathById(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 687
    const-string v7, ""

    .line 688
    .local v7, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "_data"

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "%s = ?"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 696
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 697
    const-string v0, "GalleryDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 709
    .end local v7           #filePath:Ljava/lang/String;
    .local v8, filePath:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 701
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 705
    :cond_1
    if-eqz v6, :cond_2

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v7

    .line 709
    .end local v7           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 705
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getCloudGroupName(I)Ljava/lang/String;
    .locals 3
    .parameter "groupId"

    .prologue
    .line 768
    packed-switch p0, :pswitch_data_0

    .line 774
    const-string v0, "GalleryDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloudGroupName: group is wrong - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v0, ""

    :goto_0
    return-object v0

    .line 770
    :pswitch_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 772
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 768
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 780
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getDefaultAlbumsSelection([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "defaultAlbums"

    .prologue
    const/4 v6, 0x2

    .line 786
    const-string v0, ""

    .line 787
    .local v0, albumString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 788
    if-lez v1, :cond_0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    :cond_1
    const-string v3, "%s in (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I
    .locals 2
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 724
    const v0, 0x6062c

    .line 728
    .local v0, operation:I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    or-int/lit8 v0, v0, 0x1

    .line 732
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    or-int/lit8 v0, v0, 0x40

    .line 736
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    or-int/lit8 v0, v0, 0x2

    .line 740
    :cond_2
    invoke-static {p2, p3, p4, p5}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    or-int/lit8 v0, v0, 0x10

    .line 743
    :cond_3
    return v0
.end method

.method public static getImageVideoPathType(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 659
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;

    invoke-direct {v0}, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;-><init>()V

    .line 661
    .local v0, result:Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->getExternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 662
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 663
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 664
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    .line 683
    :goto_0
    return-object v0

    .line 665
    :cond_0
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->getInternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 666
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 667
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 668
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0

    .line 669
    :cond_1
    invoke-static {}, Lcom/miui/gallery/data/LocalVideo;->getExternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 670
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 671
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 672
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0

    .line 673
    :cond_2
    invoke-static {}, Lcom/miui/gallery/data/LocalVideo;->getInternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_3

    .line 674
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 675
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 676
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0

    .line 678
    :cond_3
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 679
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 680
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "idColumnName"
    .parameter "id"

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSupportedOperations(Ljava/lang/String;)I
    .locals 2
    .parameter "filePath"

    .prologue
    .line 713
    const/16 v0, 0x484

    .line 715
    .local v0, operation:I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    or-int/lit8 v0, v0, 0x1

    .line 719
    :cond_0
    return v0
.end method

.method public static isInternalMedia(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/internal/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInternalMedia(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 649
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "tableName"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public declared-synchronized executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;->execute(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 2
    .parameter "bucketId"

    .prologue
    .line 371
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Ljava/lang/String;)V

    .line 372
    .local v0, command:Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 373
    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->getResult()Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    return-object v1
.end method

.method public findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 367
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    return-object v0
.end method

.method public findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Ljava/lang/String;[Ljava/lang/String;)V

    .line 386
    .local v0, command:Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 387
    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->getResult()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v1

    return-object v1
.end method

.method public findDefaultAlbums([Ljava/lang/String;)Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    .locals 3
    .parameter "defaultAlbums"

    .prologue
    .line 377
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;

    invoke-direct {p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper;->getDefaultAlbumsSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Ljava/lang/String;[Ljava/lang/String;)V

    .line 380
    .local v0, command:Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 381
    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->getResult()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v1

    return-object v1
.end method

.method public initRecentAlbumManuallyRecent([Ljava/lang/String;)V
    .locals 7
    .parameter "defaultRecentAlbums"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->isDbOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v3, "UPDATE %s SET %s=1 where (%s = 0) AND (%s)"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "album"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x2

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper;->getDefaultAlbumsSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, sqlUpdate:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "tableName"
    .parameter "values"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDbOpened()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 192
    const-string v0, "album"

    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    const-string v0, "cloud"

    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    const-string v0, "cloudSetting"

    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 195
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 338
    const-string v0, "GalleryDBHelper"

    const-string v1, "down grade, data will be clean"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v0, "DROP TABLE IF EXISTS album"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    const-string v0, "DROP TABLE IF EXISTS cloud"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v0, "DROP TABLE IF EXISTS cloudSetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 343
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 21
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 219
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 220
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "database cannot be downgraded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_0
    const/16 v2, 0x11

    move/from16 v0, p2

    if-ge v0, v2, :cond_8

    .line 224
    const/16 v2, 0x9

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    .line 225
    const-string v2, "DROP TABLE IF EXISTS album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v2, "DROP TABLE IF EXISTS cloud"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/util/GalleryDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    :cond_1
    const/16 v2, 0xe

    move/from16 v0, p2

    if-ge v0, v2, :cond_2

    .line 232
    const-string v2, "DROP TABLE IF EXISTS cloud"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    const-string v2, "DROP TABLE IF EXISTS cloudSetting"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v2, "cloud"

    sget-object v3, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 235
    const-string v2, "cloudSetting"

    sget-object v3, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudSettingColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 237
    :cond_2
    const/16 v2, 0xf

    move/from16 v0, p2

    if-ge v0, v2, :cond_3

    .line 239
    const-string v3, "ALTER TABLE %s ADD COLUMN %s %s"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "album"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x2

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mColumType:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, sqlAddColumnSDCardSortBy:Ljava/lang/String;
    const-string v3, "UPDATE %s SET %s=%d"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "album"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v2, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 248
    .local v18, sqlUpdateColumnSDCardSortBy:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    .end local v16           #sqlAddColumnSDCardSortBy:Ljava/lang/String;
    .end local v18           #sqlUpdateColumnSDCardSortBy:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x10

    move/from16 v0, p2

    if-ge v0, v2, :cond_4

    .line 254
    const-string v3, "ALTER TABLE %s ADD COLUMN %s %s"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "cloud"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x2

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mColumType:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 258
    .local v17, sqlAddMicroThumbPath:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE %s SET %s = %s where %s like \'%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "cloud"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x24

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x2

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x25

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x3

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x25

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 265
    .local v20, transThumbnail:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE %s SET %s = %s where %s like \'%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "cloud"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x2

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x25

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v5, 0x3

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    const/16 v6, 0x25

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 271
    .local v19, transMicro:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const/4 v2, 0x1

    sput-boolean v2, Lcom/miui/gallery/util/GalleryDBHelper;->sShouldRunScanThread:Z

    .line 276
    .end local v17           #sqlAddMicroThumbPath:Ljava/lang/String;
    .end local v19           #transMicro:Ljava/lang/String;
    .end local v20           #transThumbnail:Ljava/lang/String;
    :cond_4
    const/16 v2, 0x11

    move/from16 v0, p2

    if-ge v0, v2, :cond_8

    .line 279
    const/4 v13, 0x1

    .line 281
    .local v13, isHasSortBy:Z
    :try_start_0
    const-string v3, "cloud"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "sortBy"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    if-nez v13, :cond_8

    .line 299
    :try_start_1
    const-string v2, "ALTER TABLE %s RENAME TO %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cloud"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_temp_cloud"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, renameTempTableSql:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v2, "cloud"

    sget-object v3, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 307
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v15, sb:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 309
    const/16 v2, 0x28

    if-ne v12, v2, :cond_5

    .line 310
    const-string v2, "NULL, "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 284
    .end local v12           #i:I
    .end local v14           #renameTempTableSql:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 285
    .local v11, e:Landroid/database/SQLException;
    const/4 v13, 0x0

    .line 286
    const-string v2, "GalleryDBHelper"

    const-string v3, "cloud don\'t have sortBy column"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    .end local v11           #e:Landroid/database/SQLException;
    .restart local v12       #i:I
    .restart local v14       #renameTempTableSql:Ljava/lang/String;
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    :cond_5
    :try_start_2
    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_6

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 324
    .end local v12           #i:I
    .end local v14           #renameTempTableSql:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v11

    .line 325
    .restart local v11       #e:Landroid/database/SQLException;
    const-string v2, "GalleryDBHelper"

    const-string v3, "DB update to 17 error"

    invoke-static {v2, v3, v11}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    throw v11

    .line 314
    .end local v11           #e:Landroid/database/SQLException;
    .restart local v12       #i:I
    .restart local v14       #renameTempTableSql:Ljava/lang/String;
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_3
    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 317
    :cond_7
    const-string v2, "INSERT INTO %s SELECT %s FROM %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cloud"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "_temp_cloud"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, copyDataSql:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v2, "DROP TABLE IF EXISTS _temp_cloud"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 334
    .end local v10           #copyDataSql:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #isHasSortBy:Z
    .end local v14           #renameTempTableSql:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :cond_8
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tableName"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "tableName"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
