.class Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;
.super Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveBitmapRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;-><init>()V

    .line 233
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 239
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 245
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 246
    .local v3, result:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 247
    check-cast v0, Landroid/graphics/Bitmap;

    .line 249
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v4, v4, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, outputStream:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 251
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 252
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->notifyDownload()V

    .line 253
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 254
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
