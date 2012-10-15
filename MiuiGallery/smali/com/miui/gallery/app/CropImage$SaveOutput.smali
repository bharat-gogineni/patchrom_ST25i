.class Lcom/miui/gallery/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/miui/gallery/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 269
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 14
    .parameter "jc"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 273
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-virtual {v10}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 275
    .local v3, extra:Landroid/os/Bundle;
    new-instance v7, Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    .local v7, rect:Landroid/graphics/Rect;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v8, result:Landroid/content/Intent;
    const-string v10, "cropped-rect"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 283
    .local v6, outputted:Z
    if-eqz v3, :cond_7

    .line 284
    const-string v10, "output"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 285
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_2

    const/4 v5, 0x1

    .line 286
    .local v5, isReturnUri:Z
    :goto_0
    const-string v10, "return-data"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 287
    .local v4, isReturnData:Z
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;
    invoke-static {v10}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;)Lcom/miui/gallery/app/SaveWallPaper;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 288
    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v8, 0x0

    .line 315
    .end local v4           #isReturnData:Z
    .end local v5           #isReturnUri:Z
    .end local v8           #result:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v8

    .line 285
    .restart local v8       #result:Landroid/content/Intent;
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 289
    .restart local v4       #isReturnData:Z
    .restart local v5       #isReturnUri:Z
    :cond_3
    const/4 v6, 0x1

    .line 290
    if-nez v1, :cond_4

    .line 291
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    const/4 v11, 0x0

    const/4 v12, 0x0

    #calls: Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    invoke-static {v10, v7, v11, v12}, Lcom/miui/gallery/app/CropImage;->access$400(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    :cond_4
    if-eqz v5, :cond_5

    .line 295
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->saveBitmapToUri(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v10, p1, v1, v9}, Lcom/miui/gallery/app/CropImage;->access$500(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    .line 297
    :cond_5
    if-eqz v4, :cond_6

    .line 298
    const-string v10, "data"

    invoke-virtual {v8, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    :cond_6
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;
    invoke-static {v10}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;)Lcom/miui/gallery/app/SaveWallPaper;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 301
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;
    invoke-static {v10}, Lcom/miui/gallery/app/CropImage;->access$300(Lcom/miui/gallery/app/CropImage;)Lcom/miui/gallery/app/SaveWallPaper;

    move-result-object v10

    invoke-virtual {v10, p1, v1, v7}, Lcom/miui/gallery/app/SaveWallPaper;->saveOutput(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 302
    const/4 v8, 0x0

    goto :goto_1

    .line 307
    .end local v4           #isReturnData:Z
    .end local v5           #isReturnUri:Z
    .end local v9           #uri:Landroid/net/Uri;
    :cond_7
    if-nez v6, :cond_1

    .line 308
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v8, 0x0

    goto :goto_1

    .line 309
    :cond_8
    if-nez v1, :cond_9

    .line 310
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    const/4 v11, 0x0

    const/4 v12, 0x0

    #calls: Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    invoke-static {v10, v7, v11, v12}, Lcom/miui/gallery/app/CropImage;->access$400(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 312
    :cond_9
    iget-object v10, p0, Lcom/miui/gallery/app/CropImage$SaveOutput;->this$0:Lcom/miui/gallery/app/CropImage;

    #calls: Lcom/miui/gallery/app/CropImage;->saveToMediaProvider(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v10, p1, v1}, Lcom/miui/gallery/app/CropImage;->access$600(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 313
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/CropImage$SaveOutput;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
