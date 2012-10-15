.class public Lcom/miui/gallery/data/MtpImage;
.super Lcom/miui/gallery/data/MediaItem;
.source "MtpImage.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDateTaken:J

.field private final mDeviceId:I

.field private mFileName:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMtpContext:Lcom/miui/gallery/data/MtpContext;

.field private final mObjInfo:Landroid/mtp/MtpObjectInfo;

.field private mObjectId:I

.field private mObjectSize:I

.field private final mThreadPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;IILcom/miui/gallery/data/MtpContext;)V
    .locals 6
    .parameter "path"
    .parameter "app"
    .parameter "deviceId"
    .parameter "objectId"
    .parameter "mtpContext"

    .prologue
    .line 69
    invoke-static {p5, p3, p4}, Lcom/miui/gallery/data/MtpDevice;->getObjectInfo(Lcom/miui/gallery/data/MtpContext;II)Landroid/mtp/MtpObjectInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/data/MtpImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/miui/gallery/data/MtpContext;)V

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/miui/gallery/data/MtpContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "objInfo"
    .parameter "mtpContext"

    .prologue
    .line 54
    invoke-static {}, Lcom/miui/gallery/data/MtpImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 55
    invoke-interface {p2}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mContext:Landroid/content/Context;

    .line 56
    iput p3, p0, Lcom/miui/gallery/data/MtpImage;->mDeviceId:I

    .line 57
    iput-object p4, p0, Lcom/miui/gallery/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    .line 58
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectId:I

    .line 59
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectSize:I

    .line 60
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/MtpImage;->mDateTaken:J

    .line 61
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mFileName:Ljava/lang/String;

    .line 62
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/MtpImage;->mImageWidth:I

    .line 63
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/MtpImage;->mImageHeight:I

    .line 64
    invoke-interface {p2}, Lcom/miui/gallery/app/GalleryApp;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 65
    iput-object p5, p0, Lcom/miui/gallery/data/MtpImage;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/data/MtpImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mDeviceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/MtpImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectId:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/data/MtpImage;)Lcom/miui/gallery/data/MtpContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/data/MtpImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectSize:I

    return v0
.end method


# virtual methods
.method public Import()Z
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    iget v1, p0, Lcom/miui/gallery/data/MtpImage;->mDeviceId:I

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/MtpContext;->copyFile(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;)Z

    move-result v0

    return v0
.end method

.method public getContentUriForExternal()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/data/MtpImage;->getContentUriForGallery()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentUriForGallery()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/data/MtpImage;->mPath:Lcom/miui/gallery/data/Path;

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/GalleryProvider;->getUriFor(Landroid/content/Context;Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateForTimeClusteringInMs()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/miui/gallery/data/MtpImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 6

    .prologue
    .line 157
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v2

    .line 159
    .local v2, details:Lcom/miui/gallery/data/MediaDetails;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, context:Landroid/content/Context;
    iget-wide v3, p0, Lcom/miui/gallery/data/MtpImage;->mDateTaken:J

    const v5, 0x21515

    invoke-static {v0, v3, v4, v5}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, dateString:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 162
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/data/MtpImage;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 163
    const/4 v3, 0x5

    iget v4, p0, Lcom/miui/gallery/data/MtpImage;->mImageWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 164
    const/4 v3, 0x6

    iget v4, p0, Lcom/miui/gallery/data/MtpImage;->mImageHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 165
    const/16 v3, 0xa

    iget v4, p0, Lcom/miui/gallery/data/MtpImage;->mObjectSize:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 166
    return-object v2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mImageHeight:I

    return v0
.end method

.method public getImageData()[B
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/data/MtpImage;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MtpContext;->getMtpClient()Lcom/miui/gallery/data/MtpClient;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/data/MtpImage;->mDeviceId:I

    invoke-static {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/data/MtpImage;->mObjectId:I

    iget v3, p0, Lcom/miui/gallery/data/MtpImage;->mObjectSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/data/MtpClient;->getObject(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x840

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mImageWidth:I

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/miui/gallery/data/MtpImage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/MtpImage$1;-><init>(Lcom/miui/gallery/data/MtpImage;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/miui/gallery/data/MtpImage$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/MtpImage$2;-><init>(Lcom/miui/gallery/data/MtpImage;)V

    return-object v0
.end method

.method public updateContent(Landroid/mtp/MtpObjectInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectId:I

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/data/MtpImage;->mDateTaken:J

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/MtpImage;->mObjectId:I

    .line 123
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/MtpImage;->mDateTaken:J

    .line 124
    invoke-static {}, Lcom/miui/gallery/data/MtpImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/MtpImage;->mDataVersion:J

    .line 126
    :cond_1
    return-void
.end method
