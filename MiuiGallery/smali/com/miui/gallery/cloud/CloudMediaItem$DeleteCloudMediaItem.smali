.class public Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;
.super Ljava/lang/Object;
.source "CloudMediaItem.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteCloudMediaItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/CloudMediaItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/CloudMediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;->this$0:Lcom/miui/gallery/cloud/CloudMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .prologue
    .line 249
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "microthumbfile"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 252
    const-string v3, "thumbnailFile"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 253
    const-string v3, "downloadFile"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 254
    const-string v3, "localFlag"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 257
    .local v0, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;->this$0:Lcom/miui/gallery/cloud/CloudMediaItem;

    iget-object v6, v6, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    invoke-static {v0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    .line 266
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
