.class public Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;
.super Ljava/lang/Object;
.source "StorageMediaItem.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/StorageMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteStorageMediaItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/StorageMediaItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/StorageMediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;->this$0:Lcom/miui/gallery/data/StorageMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;->this$0:Lcom/miui/gallery/data/StorageMediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/StorageMediaItem;->getBaseUriToDeleteFromMediaDb()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "lower(%s) = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;->this$0:Lcom/miui/gallery/data/StorageMediaItem;

    invoke-virtual {v6}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StorageMediaItem"

    const-string v2, "get a database operation exception"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
