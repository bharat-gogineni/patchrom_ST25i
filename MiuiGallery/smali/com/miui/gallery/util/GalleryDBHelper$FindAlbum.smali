.class Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;
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
    name = "FindAlbum"
.end annotation


# instance fields
.field private mBucketId:Ljava/lang/String;

.field private mResult:Lcom/miui/gallery/data/DBAlbum;

.field final synthetic this$0:Lcom/miui/gallery/util/GalleryDBHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/GalleryDBHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "bucketId"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->mBucketId:Ljava/lang/String;

    .line 436
    return-void
.end method


# virtual methods
.method public execute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "sqliteDatabase"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    const/4 v8, 0x0

    .line 446
    .local v8, c:Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 447
    iput-object v5, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->mResult:Lcom/miui/gallery/data/DBAlbum;

    .line 460
    :cond_0
    return-void

    .line 451
    :cond_1
    const-string v1, "album"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, " * "

    aput-object v0, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/TableColumn;

    iget-object v0, v0, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->mBucketId:Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 454
    if-eqz v8, :cond_0

    .line 456
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    invoke-direct {v0, v8}, Lcom/miui/gallery/data/DBAlbum;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->mResult:Lcom/miui/gallery/data/DBAlbum;

    goto :goto_0
.end method

.method public getResult()Lcom/miui/gallery/data/DBAlbum;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->mResult:Lcom/miui/gallery/data/DBAlbum;

    return-object v0
.end method
