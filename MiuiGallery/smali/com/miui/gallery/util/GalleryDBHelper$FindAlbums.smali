.class Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindAlbums"
.end annotation


# instance fields
.field private mResult:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/util/GalleryDBHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/GalleryDBHelper;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mSelection:Ljava/lang/String;

    .line 471
    iput-object p3, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mSelectionArgs:[Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method public execute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "sqliteDatabase"

    .prologue
    const/4 v5, 0x0

    .line 480
    const/4 v8, 0x0

    .line 481
    .local v8, c:Landroid/database/Cursor;
    const-string v1, "album"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, " * "

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mSelectionArgs:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 484
    if-eqz v8, :cond_0

    .line 485
    new-instance v0, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-direct {v0}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mResult:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    .line 486
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    new-instance v9, Lcom/miui/gallery/data/DBAlbum;

    invoke-direct {v9, v8}, Lcom/miui/gallery/data/DBAlbum;-><init>(Landroid/database/Cursor;)V

    .line 488
    .local v9, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mResult:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->put(Ljava/lang/String;Lcom/miui/gallery/data/DBAlbum;)Lcom/miui/gallery/data/DBAlbum;

    goto :goto_0

    .line 491
    .end local v9           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    :cond_0
    return-void
.end method

.method public getResult()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbums;->mResult:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    return-object v0
.end method
