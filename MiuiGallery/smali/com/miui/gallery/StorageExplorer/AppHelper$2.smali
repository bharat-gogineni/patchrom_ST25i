.class final Lcom/miui/gallery/StorageExplorer/AppHelper$2;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$folderPath:Ljava/lang/String;

.field final synthetic val$mediaItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$folderPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 242
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, filePath:Ljava/lang/String;
    #calls: Lcom/miui/gallery/StorageExplorer/AppHelper;->shouldMoveToThumbnail(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    #calls: Lcom/miui/gallery/StorageExplorer/AppHelper;->convertToCloudThumbnail(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->access$100(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/lang/String;)V

    .line 241
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 254
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$folderPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;->val$folderPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/lang/String;)V

    .line 257
    :cond_2
    return-void
.end method
