.class Lcom/miui/gallery/data/MtpImage$2;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/MtpImage;->requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/miui/gallery/data/MtpImage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/MtpImage;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/gallery/data/MtpImage$2;->this$0:Lcom/miui/gallery/data/MtpImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lcom/miui/gallery/data/MtpImage$2;->this$0:Lcom/miui/gallery/data/MtpImage;

    #getter for: Lcom/miui/gallery/data/MtpImage;->mMtpContext:Lcom/miui/gallery/data/MtpContext;
    invoke-static {v1}, Lcom/miui/gallery/data/MtpImage;->access$200(Lcom/miui/gallery/data/MtpImage;)Lcom/miui/gallery/data/MtpContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MtpContext;->getMtpClient()Lcom/miui/gallery/data/MtpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/MtpImage$2;->this$0:Lcom/miui/gallery/data/MtpImage;

    #getter for: Lcom/miui/gallery/data/MtpImage;->mDeviceId:I
    invoke-static {v2}, Lcom/miui/gallery/data/MtpImage;->access$000(Lcom/miui/gallery/data/MtpImage;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/data/MtpImage$2;->this$0:Lcom/miui/gallery/data/MtpImage;

    #getter for: Lcom/miui/gallery/data/MtpImage;->mObjectId:I
    invoke-static {v3}, Lcom/miui/gallery/data/MtpImage;->access$100(Lcom/miui/gallery/data/MtpImage;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/data/MtpImage$2;->this$0:Lcom/miui/gallery/data/MtpImage;

    #getter for: Lcom/miui/gallery/data/MtpImage;->mObjectSize:I
    invoke-static {v4}, Lcom/miui/gallery/data/MtpImage;->access$300(Lcom/miui/gallery/data/MtpImage;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/data/MtpClient;->getObject(Ljava/lang/String;II)[B

    move-result-object v0

    .line 99
    .local v0, bytes:[B
    array-length v1, v0

    invoke-static {p1, v0, v5, v1, v5}, Lcom/miui/gallery/data/DecodeUtils;->requestCreateBitmapRegionDecoder(Lcom/miui/gallery/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpImage$2;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
