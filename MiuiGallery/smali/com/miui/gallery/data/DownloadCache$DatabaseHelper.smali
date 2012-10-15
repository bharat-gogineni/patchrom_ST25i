.class final Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/DownloadCache;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->this$0:Lcom/miui/gallery/data/DownloadCache;

    .line 262
    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 263
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 267
    sget-object v5, Lcom/miui/gallery/data/DownloadEntry;->SCHEMA:Lcom/miui/gallery/common/EntrySchema;

    invoke-virtual {v5, p1}, Lcom/miui/gallery/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 269
    iget-object v5, p0, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->this$0:Lcom/miui/gallery/data/DownloadCache;

    #getter for: Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;
    invoke-static {v5}, Lcom/miui/gallery/data/DownloadCache;->access$100(Lcom/miui/gallery/data/DownloadCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 270
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 276
    :cond_0
    return-void

    .line 273
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 274
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/io/File;)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 281
    sget-object v0, Lcom/miui/gallery/data/DownloadEntry;->SCHEMA:Lcom/miui/gallery/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 283
    return-void
.end method
