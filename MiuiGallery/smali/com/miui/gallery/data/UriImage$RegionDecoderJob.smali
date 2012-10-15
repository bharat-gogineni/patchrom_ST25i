.class Lcom/miui/gallery/data/UriImage$RegionDecoderJob;
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
    name = "RegionDecoderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/UriImage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/data/UriImage;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;->this$0:Lcom/miui/gallery/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/data/UriImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;-><init>(Lcom/miui/gallery/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .parameter "jc"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;->this$0:Lcom/miui/gallery/data/UriImage;

    #calls: Lcom/miui/gallery/data/UriImage;->prepareInputFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)Z
    invoke-static {v1, p1}, Lcom/miui/gallery/data/UriImage;->access$100(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/util/ThreadPool$JobContext;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;->this$0:Lcom/miui/gallery/data/UriImage;

    #getter for: Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lcom/miui/gallery/data/UriImage;->access$200(Lcom/miui/gallery/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/data/DecodeUtils;->requestCreateBitmapRegionDecoder(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 209
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;->this$0:Lcom/miui/gallery/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    #setter for: Lcom/miui/gallery/data/UriImage;->mWidth:I
    invoke-static {v1, v2}, Lcom/miui/gallery/data/UriImage;->access$302(Lcom/miui/gallery/data/UriImage;I)I

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;->this$0:Lcom/miui/gallery/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    #setter for: Lcom/miui/gallery/data/UriImage;->mHeight:I
    invoke-static {v1, v2}, Lcom/miui/gallery/data/UriImage;->access$402(Lcom/miui/gallery/data/UriImage;I)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
