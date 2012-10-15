.class public Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;
.super Ljava/lang/Object;
.source "LocalMediaItem.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteLocalMediaItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/LocalMediaItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/LocalMediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;->this$0:Lcom/miui/gallery/data/LocalMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;->this$0:Lcom/miui/gallery/data/LocalMediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/LocalMediaItem;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;->this$0:Lcom/miui/gallery/data/LocalMediaItem;

    iget v6, v6, Lcom/miui/gallery/data/LocalMediaItem;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
