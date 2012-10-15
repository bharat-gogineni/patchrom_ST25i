.class Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;
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
    name = "UpdateAlbum"
.end annotation


# instance fields
.field private mAlbum:Lcom/miui/gallery/data/DBAlbum;

.field final synthetic this$0:Lcom/miui/gallery/util/GalleryDBHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)V
    .locals 0
    .parameter
    .parameter "album"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->this$0:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    .line 620
    return-void
.end method


# virtual methods
.method public execute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "sqliteDatabase"

    .prologue
    const/4 v4, 0x1

    .line 624
    const-string v1, "album"

    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->toContentValue()Landroid/content/ContentValues;

    move-result-object v2

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

    move-result-object v0

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;->mAlbum:Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBAlbum;->getBucketId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 627
    return-void
.end method
