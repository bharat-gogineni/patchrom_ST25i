.class final Lcom/miui/player/ui/AlbumSearchResultActivity$1;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$itemInfo:Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

.field final synthetic val$provider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

.field final synthetic val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$provider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    iput-object p2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$itemInfo:Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    iput-object p3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    iput-object p4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$provider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$itemInfo:Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    invoke-interface {v2, v3}, Lcom/miui/player/plugin/onlineimage/ImageProvider;->requestItem(Lcom/miui/player/plugin/onlineimage/ImageItemInfo;)Z

    .line 361
    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$itemInfo:Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    iget-object v1, v2, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    invoke-virtual {v2, v1}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;->setResult(Ljava/lang/Object;)V

    .line 371
    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;->val$runSync:Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :cond_0
    return-void

    .line 362
    .restart local v1       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/miui/player/ui/AlbumSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/miui/player/ui/AlbumSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
