.class Lcom/miui/gallery/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/miui/gallery/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/data/UriImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/gallery/data/UriImage$BitmapJob;->this$0:Lcom/miui/gallery/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p2, p0, Lcom/miui/gallery/data/UriImage$BitmapJob;->mType:I

    .line 220
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 223
    iget-object v4, p0, Lcom/miui/gallery/data/UriImage$BitmapJob;->this$0:Lcom/miui/gallery/data/UriImage;

    #calls: Lcom/miui/gallery/data/UriImage;->prepareInputFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/miui/gallery/data/UriImage;->access$100(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 241
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget v4, p0, Lcom/miui/gallery/data/UriImage$BitmapJob;->mType:I

    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->getTargetSize(I)I

    move-result v2

    .line 225
    .local v2, targetSize:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 227
    iget-object v4, p0, Lcom/miui/gallery/data/UriImage$BitmapJob;->this$0:Lcom/miui/gallery/data/UriImage;

    #getter for: Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/miui/gallery/data/UriImage;->access$200(Lcom/miui/gallery/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {p1, v4, v1, v2}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v3

    .line 230
    goto :goto_0

    .line 233
    :cond_2
    iget v3, p0, Lcom/miui/gallery/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 234
    invoke-static {v0, v2, v5}, Lcom/miui/gallery/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {v0, v2, v5}, Lcom/miui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/UriImage$BitmapJob;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
