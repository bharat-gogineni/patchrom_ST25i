.class public Lcom/miui/gallery/bigscreen/ConnectControl;
.super Ljava/lang/Object;
.source "ConnectControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;,
        Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;,
        Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;,
        Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/miui/gallery/bigscreen/ConnectControl;


# instance fields
.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

.field private mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mCurrentPhoto:Ljava/lang/String;

.field private mDelayConnect:Ljava/lang/Runnable;

.field private mDeviceChangeListener:Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;

.field private mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field private mDeviceOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhotoEventListener:Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;

.field private mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

.field private mPhotoServerConnected:Z

.field private mSlideShowTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    .line 51
    iput-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mSlideShowTypes:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mHandler:Landroid/os/Handler;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;-><init>(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/miui/gallery/bigscreen/ConnectControl$1;)V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceChangeListener:Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;

    .line 98
    new-instance v0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;-><init>(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/miui/gallery/bigscreen/ConnectControl$1;)V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoEventListener:Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;

    .line 99
    new-instance v0, Lcom/miui/gallery/bigscreen/ConnectControl$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/bigscreen/ConnectControl$1;-><init>(Lcom/miui/gallery/bigscreen/ConnectControl;)V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDelayConnect:Ljava/lang/Runnable;

    .line 107
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/miui/gallery/data/MediaSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->updateList(Lcom/miui/gallery/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/bigscreen/ConnectControl;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->showPhoto(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mSlideShowTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/bigscreen/ConnectControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->disconnectBigShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/bigscreen/ConnectControl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->queryDevices(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/duokan/airkan/phone/api/PhotoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/duokan/airkan/phone/api/PhotoManager;)Lcom/duokan/airkan/phone/api/PhotoManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/duokan/airkan/phone/api/DeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoEventListener:Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/bigscreen/ConnectControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/bigscreen/ConnectControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    return p1
.end method

.method private deviceOpened()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private disconnectBigShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    const-string v1, "grab_connect_control"

    const-string v2, "~~~disconnectBigShow"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    invoke-interface {v1}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onRelease()V

    .line 321
    iput-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v1, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    .line 326
    iput-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    .line 327
    iput-boolean v3, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    .line 331
    :cond_1
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-eqz v1, :cond_2

    .line 338
    const-string v1, "grab_connect_control"

    const-string v2, "set device close"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    .line 340
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->close()V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 343
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/bigscreen/ConnectControl;
    .locals 2
    .parameter "activity"

    .prologue
    .line 88
    const-class v1, Lcom/miui/gallery/bigscreen/ConnectControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/bigscreen/ConnectControl;->mInstance:Lcom/miui/gallery/bigscreen/ConnectControl;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-direct {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;-><init>()V

    sput-object v0, Lcom/miui/gallery/bigscreen/ConnectControl;->mInstance:Lcom/miui/gallery/bigscreen/ConnectControl;

    .line 92
    :cond_0
    sget-object v0, Lcom/miui/gallery/bigscreen/ConnectControl;->mInstance:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-direct {v0, p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->setActivity(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 93
    sget-object v0, Lcom/miui/gallery/bigscreen/ConnectControl;->mInstance:Lcom/miui/gallery/bigscreen/ConnectControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private photoServerOpen()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    return v0
.end method

.method private queryDevices(Z)V
    .locals 7
    .parameter "refresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v3, svrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    const/4 v2, 0x0

    .line 350
    .local v2, size:I
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v4, :cond_1

    .line 352
    monitor-exit p0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4, v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->queryDevices(Ljava/util/List;)V

    .line 355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 358
    if-lez v2, :cond_0

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 361
    const-string v5, "grab_connect_control"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new service name:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v4, v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v4, v4, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    .end local v0           #devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 365
    .restart local v0       #devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_2
    if-eqz p1, :cond_4

    .line 366
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 367
    const-string v5, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the device: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    invoke-interface {v4, v0}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onDeviceRefresh(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 371
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    invoke-interface {v4, v0}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onDevicesAvailable(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setActivity(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 111
    return-void
.end method

.method private showAllFiles(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    const-string v2, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the file name is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private showPhoto(Ljava/lang/String;)I
    .locals 3
    .parameter "fileName"

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->photoServerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "grab_connect_control"

    const-string v1, "photo not connected"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 217
    :cond_0
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the photo is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->showPhoto(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private updateList(Lcom/miui/gallery/data/MediaSet;)V
    .locals 4
    .parameter "mediaSet"

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v1, "grab_connect_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateList folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getAllSubFilesPath(Lcom/miui/gallery/data/MediaSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    .local v0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "grab_connect_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the files length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->showAllFiles(Ljava/util/ArrayList;)V

    .line 301
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->cleanList()I

    .line 302
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v1, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->addList(Ljava/util/ArrayList;)I

    .line 303
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

    goto :goto_0
.end method


# virtual methods
.method public connectPhotoServer(Ljava/lang/String;)V
    .locals 4
    .parameter "serName"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->deviceOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 179
    iget-boolean v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "grab_connect_control"

    const-string v3, "connect to another device"

    invoke-static {v1, v3}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-boolean v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    .line 184
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v1, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    .line 189
    :cond_1
    :try_start_0
    const-string v1, "grab_connect_control"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " photo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-direct {p0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->updateList(Lcom/miui/gallery/data/MediaSet;)V

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->connect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    :cond_2
    move v1, v2

    .line 178
    goto :goto_1
.end method

.method public disconWithDelay()V
    .locals 4

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "grab_connect_control"

    const-string v1, "disconWithDelay"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    invoke-interface {v0}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onCancelAnimation()V

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDelayConnect:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "grab_connect_control"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    invoke-interface {v0}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onCancelAnimation()V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDelayConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->disconnectBigShow()V

    goto :goto_0
.end method

.method public getBarControl()Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    return v0
.end method

.method public open(Landroid/view/View;Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V
    .locals 5
    .parameter "deviceBarWidget"
    .parameter "barUIListener"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;

    iget-object v3, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v0, v3, p1, p2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;-><init>(Lcom/miui/gallery/app/GalleryActivity;Landroid/view/View;Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    .line 119
    new-instance v3, Lcom/duokan/airkan/phone/api/DeviceManager;

    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceChangeListener:Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;

    invoke-direct {v3, v0, v4}, Lcom/duokan/airkan/phone/api/DeviceManager;-><init>(Landroid/content/Context;Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;)V

    iput-object v3, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 121
    const-string v3, "grab_connect_control"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call device open. DeviceListener is null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceChangeListener:Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->open()Z

    .line 124
    iput-boolean v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceOpen:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 121
    goto :goto_1
.end method

.method public refreshDevices()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->deviceOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->queryDevices(Z)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    const-string v0, "grab_connect_control"

    const-string v1, "do release"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-boolean v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    move-result v0

    return v0
.end method

.method public reuse(Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V
    .locals 2
    .parameter "barUIListener"

    .prologue
    .line 129
    const-string v0, "grab_connect_control"

    const-string v1, "reuse the connection control"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onUIListenerChange(Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mDelayConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public showType(ZI)I
    .locals 3
    .parameter "isSlideShow"
    .parameter "slideShowType"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->photoServerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    .line 205
    :cond_0
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slide show start, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->showType(ZI)I

    move-result v0

    goto :goto_0
.end method

.method public updateCurrentFolder(Lcom/miui/gallery/data/MediaSet;)V
    .locals 3
    .parameter "mediaSet"

    .prologue
    .line 269
    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentFolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-eq v0, p1, :cond_0

    .line 277
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 278
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->photoServerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->updateList(Lcom/miui/gallery/data/MediaSet;)V

    goto :goto_0
.end method

.method public updateCurrentPhoto(Ljava/lang/String;)V
    .locals 0
    .parameter "curPhoto"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;

    .line 265
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->showPhoto(Ljava/lang/String;)I

    .line 266
    return-void
.end method
