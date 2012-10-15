.class public Lcom/duokan/airkan/phone/api/PhotoManager;
.super Lcom/duokan/airkan/phone/api/ConnectionManager;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;,
        Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;,
        Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;,
        Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
    }
.end annotation


# static fields
.field private static Max_Presend_Offset:I

.field public static bufferHandleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static list4Pull:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/photo/SendoutFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceHandle:I

.field public static volatile waitingShowHandle:I


# instance fields
.field private CONNECT_RSP_TIMER:I

.field private OFFER_TIMER:I

.field private TAG:Ljava/lang/String;

.field private volatile dataConnected:Z

.field private dataip:Ljava/lang/String;

.field private filelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/photo/SendoutFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field internalListener:Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

.field private isSwitched2Video:Z

.field private volatile lastSentHandle:I

.field private volatile linkConnected:Z

.field private mBlockCounts:I

.field private mCallback:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

.field private mConnectTimer:Ljava/util/Timer;

.field private mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

.field private mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field private mFileName:Ljava/lang/String;

.field private mFirstFileName:Ljava/lang/String;

.field private mImageData:[B

.field private mIs2Connect:Z

.field private volatile mIsConnected:Z

.field private mIsFirstPhoto:Z

.field private mIsPhotoSendServiceBoundSuccess:Z

.field private mOfferTimer:Ljava/util/Timer;

.field private mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

.field private mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

.field private mPhotoSendServiceCallback:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

.field private mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

.field private mQuerySlideShowType:Z

.field private volatile mReleaseFromLoc:Z

.field private volatile mRequestWasSent:Z

.field private objHandler:Landroid/os/Handler;

.field private photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

.field private remoteH:I

.field private remoteW:I

.field private volatile sendingHandle:I

.field private sleepInterval:I

.field private sliderShow:Z

.field private slidershowtypelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;",
            ">;"
        }
    .end annotation
.end field

.field private tcpport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->Max_Presend_Offset:I

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;)V
    .locals 6
    .parameter "context"
    .parameter "appName"
    .parameter "deviceManager"
    .parameter "listener"

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, p2, p3}, Lcom/duokan/airkan/phone/api/ConnectionManager;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 62
    const-string v0, "PhotoManager"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->objHandler:Landroid/os/Handler;

    .line 67
    const/16 v0, 0x780

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    .line 68
    const/16 v0, 0x438

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    .line 69
    const-string v0, "10.1.1.104"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    .line 70
    const v0, 0xecc1

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    .line 71
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    .line 72
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    .line 73
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    .line 74
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    .line 78
    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    .line 79
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 80
    const/16 v0, 0x64

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    .line 81
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->internalListener:Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

    .line 83
    iput v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->CONNECT_RSP_TIMER:I

    .line 84
    iput v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->OFFER_TIMER:I

    .line 91
    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 92
    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    .line 99
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    .line 100
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    .line 101
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    .line 102
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    .line 103
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    .line 104
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    .line 105
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mQuerySlideShowType:Z

    .line 106
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 107
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    .line 109
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    .line 110
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    .line 111
    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    .line 112
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    .line 414
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$1;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$1;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceCallback:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

    .line 501
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$2;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$2;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

    .line 520
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$3;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$3;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCallback:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    .line 184
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/duokan/airkan/common/Log;->setLevel(I)V

    .line 185
    iput-object p4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    .line 186
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->registerCallback()V

    .line 188
    if-eqz p3, :cond_0

    .line 189
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->internalListener:Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;

    invoke-virtual {p3, v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->setInternalListenerPhoto(Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;)V

    .line 190
    iput-object p3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 193
    :cond_0
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    .line 194
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    .line 195
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    .line 196
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    .line 197
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    .line 198
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    .line 199
    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    .line 200
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    .line 201
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->bindPhotoSendService()V

    .line 205
    return-void
.end method

.method private DataConnect()V
    .locals 8

    .prologue
    .line 1192
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-eqz v3, :cond_2

    .line 1193
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceIP()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    .line 1194
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceText()Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    new-instance v2, Lcom/duokan/airkan/common/MdnsExtraData;

    invoke-direct {v2}, Lcom/duokan/airkan/common/MdnsExtraData;-><init>()V

    .line 1198
    .local v2, mMdnsExtraData:Lcom/duokan/airkan/common/MdnsExtraData;
    invoke-virtual {v2, v1}, Lcom/duokan/airkan/common/MdnsExtraData;->parse(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1221
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #mMdnsExtraData:Lcom/duokan/airkan/common/MdnsExtraData;
    :cond_0
    :goto_0
    return-void

    .line 1202
    .restart local v1       #info:Ljava/lang/String;
    .restart local v2       #mMdnsExtraData:Lcom/duokan/airkan/common/MdnsExtraData;
    :cond_1
    invoke-virtual {v2}, Lcom/duokan/airkan/common/MdnsExtraData;->getPhotoSendPort()I

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    .line 1203
    invoke-virtual {v2}, Lcom/duokan/airkan/common/MdnsExtraData;->getRemoteScreenWidth()I

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    .line 1204
    invoke-virtual {v2}, Lcom/duokan/airkan/common/MdnsExtraData;->getRemoteScreenHeight()I

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    .line 1205
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #mMdnsExtraData:Lcom/duokan/airkan/common/MdnsExtraData;
    :cond_2
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v3, :cond_3

    .line 1209
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    iget v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    iget v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->startPhotoSend(Ljava/lang/String;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :goto_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1218
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->showPhoto(Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1214
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "mPhotoSendService is not available"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private DataDisConnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1224
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v0, :cond_0

    .line 1226
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->stopPhotoSend()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1229
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "data link is disconnected already"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    goto :goto_0

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "data link is disconnected already"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    goto :goto_0
.end method

.method private ShownImageNotExist()V
    .locals 6

    .prologue
    .line 1368
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-nez v0, :cond_0

    .line 1369
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v0, v1, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1371
    if-eqz v0, :cond_1

    .line 1373
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showphoto in ShownImageNotExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "Service not bounded."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_2
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendImage()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/duokan/airkan/phone/api/PhotoManager;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postSendResult(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/duokan/airkan/phone/api/PhotoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    return v0
.end method

.method static synthetic access$1002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I

    return p1
.end method

.method static synthetic access$1100(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->removePhotoSendServiceCallback()V

    return-void
.end method

.method static synthetic access$1500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    return p0
.end method

.method static synthetic access$1700(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    return p1
.end method

.method static synthetic access$1902(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    return p1
.end method

.method static synthetic access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I

    return p1
.end method

.method static synthetic access$202(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->ShownImageNotExist()V

    return-void
.end method

.method static synthetic access$2402(Lcom/duokan/airkan/phone/api/PhotoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    return p1
.end method

.method static synthetic access$2500(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryResult(Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/duokan/airkan/phone/api/PhotoManager;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->send4Pull([I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/duokan/airkan/phone/api/PhotoManager;)Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->unbindPhotoSendService()V

    return-void
.end method

.method static synthetic access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/duokan/airkan/phone/api/PhotoManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->postConnectResult(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/duokan/airkan/phone/api/PhotoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/duokan/airkan/phone/api/PhotoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/duokan/airkan/phone/api/PhotoManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->setConnStatus(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postSavePhotoData(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/duokan/airkan/phone/api/PhotoManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/duokan/airkan/phone/api/PhotoManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B

    return-object p1
.end method

.method private addFile(Ljava/lang/String;S)Lcom/duokan/airkan/photo/SendoutFileInfo;
    .locals 5
    .parameter "path"
    .parameter "handle"

    .prologue
    const/4 v2, 0x0

    .line 393
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    new-instance v1, Lcom/duokan/airkan/photo/SendoutFileInfo;

    invoke-direct {v1}, Lcom/duokan/airkan/photo/SendoutFileInfo;-><init>()V

    .line 396
    .local v1, sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    iput-object p1, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .line 397
    iput-short p2, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    .line 398
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    .line 400
    invoke-static {p1}, Lcom/duokan/airkan/photo/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    const/4 v2, 0x3

    iput-byte v2, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .line 411
    .end local v1           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 402
    .restart local v1       #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_1
    invoke-static {p1}, Lcom/duokan/airkan/photo/MediaFile;->isImageFileType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    const/4 v2, 0x1

    iput-byte v2, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .line 404
    invoke-static {p1}, Lcom/duokan/airkan/photo/MediaFile;->isGIF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const/4 v2, 0x2

    iput-byte v2, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 407
    goto :goto_0

    .end local v1           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_3
    move-object v1, v2

    .line 411
    goto :goto_0
.end method

.method private bindPhotoSendService()V
    .locals 5

    .prologue
    .line 736
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "enter bindPhotoSendService"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    if-nez v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 741
    .local v0, mIsBindCallSuccess:Z
    if-eqz v0, :cond_1

    .line 742
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "bind photosendService."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .end local v0           #mIsBindCallSuccess:Z
    :cond_0
    :goto_0
    return-void

    .line 744
    .restart local v0       #mIsBindCallSuccess:Z
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "bind photosendService failed."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildBufferList()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1253
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1254
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 1255
    :goto_0
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->Max_Presend_Offset:I

    if-ge v0, v2, :cond_2

    .line 1256
    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->fileExist(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_0
    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->fileExist(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferhandlelist size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "filelist size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    monitor-exit v1

    .line 1262
    return-void

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private buildlist4Pull([I)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1274
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1277
    array-length v6, p1

    move v0, v2

    .line 1278
    :goto_0
    if-ge v0, v6, :cond_1

    .line 1279
    aget v1, p1, v0

    if-lt v1, v5, :cond_0

    .line 1280
    aget v1, p1, v0

    sub-int/2addr v1, v5

    aput v1, p1, v0

    .line 1278
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add pull image :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    sget-object v7, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v2

    .line 1286
    :goto_1
    if-ge v3, v6, :cond_4

    move v1, v2

    .line 1287
    :goto_2
    if-ge v1, v5, :cond_2

    .line 1288
    :try_start_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    .line 1289
    iget-short v8, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    aget v9, p1, v3

    if-ne v8, v9, :cond_3

    .line 1290
    new-instance v8, Ljava/io/File;

    iget-object v9, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1291
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add pull image handle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1287
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1298
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1300
    return-void

    .line 1298
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1299
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private cleanOneImage(S)V
    .locals 4
    .parameter

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_0

    .line 1334
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send photoclean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClean(IZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private fileExist(Ljava/lang/Integer;)Z
    .locals 3
    .parameter "handle"

    .prologue
    .line 1265
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1266
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findFileInList(Ljava/lang/String;)S
    .locals 9
    .parameter "filename"

    .prologue
    .line 1303
    iget-object v6, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1304
    :try_start_0
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1305
    .local v4, size:I
    if-lez v4, :cond_2

    .line 1306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 1307
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1310
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 1312
    .local v1, newLastModifiedTime:J
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-wide v7, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    cmp-long v5, v1, v7

    if-eqz v5, :cond_0

    .line 1313
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    invoke-direct {p0, v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->cleanOneImage(S)V

    .line 1314
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iput-wide v1, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    .line 1315
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1317
    :cond_0
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    monitor-exit v6

    .line 1325
    .end local v0           #i:I
    .end local v1           #newLastModifiedTime:J
    :goto_1
    return v5

    .line 1306
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    .end local v0           #i:I
    :cond_2
    int-to-short v5, v4

    invoke-direct {p0, p1, v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->addFile(Ljava/lang/String;S)Lcom/duokan/airkan/photo/SendoutFileInfo;

    move-result-object v3

    .line 1321
    .local v3, sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    if-eqz v3, :cond_3

    .line 1322
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    int-to-short v5, v4

    monitor-exit v6

    goto :goto_1

    .line 1326
    .end local v3           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1325
    .restart local v3       #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    .restart local v4       #size:I
    :cond_3
    const/4 v5, -0x1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private photoClose()V
    .locals 5

    .prologue
    .line 935
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 937
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_1

    .line 938
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClose(I)I

    .line 939
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "closed."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v2, :cond_0

    .line 949
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 952
    :cond_0
    return-void

    .line 941
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 943
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 944
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Release error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private postCleanList()V
    .locals 5

    .prologue
    .line 959
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 961
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 962
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoClean(IZI)I

    .line 969
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 964
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private postConnectResult(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 1427
    :cond_0
    return-void
.end method

.method private postSavePhotoData(Ljava/lang/String;[B)V
    .locals 3
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onSetImageData(Ljava/lang/String;[BII)V

    .line 973
    return-void
.end method

.method private postSendResult(ZI)V
    .locals 7
    .parameter "result"
    .parameter "handle"

    .prologue
    const/4 v4, -0x1

    .line 1147
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    if-nez v1, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iput p2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    .line 1150
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-nez v1, :cond_5

    .line 1151
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manual show send ok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iput v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1153
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v1, p2, :cond_3

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show handle in sendok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1158
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_2

    .line 1159
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showphoto in postSendResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v6

    .line 1165
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1162
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1167
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_3
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v4, v1, :cond_0

    .line 1168
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1169
    :try_start_2
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1170
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "file sendok, try to query next"

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 1172
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1174
    :cond_4
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryNextBufferImage()V

    .line 1175
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1178
    :cond_5
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "slide show send ok"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1180
    :try_start_3
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1181
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pull file sendok, remove it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v1, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    if-ne p2, v1, :cond_6

    .line 1183
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1185
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1186
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendPhoto4Pull()V

    goto/16 :goto_0

    .line 1185
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private postShowPhoto()V
    .locals 8

    .prologue
    .line 899
    sget-object v7, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 901
    :try_start_0
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 902
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->buildBufferList()V

    .line 903
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    if-eqz v1, :cond_1

    .line 904
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-nez v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send first directly"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendFirstImage()V

    .line 908
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 910
    :try_start_1
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 929
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 931
    return-void

    .line 911
    :catch_0
    move-exception v6

    .line 912
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 926
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 927
    .local v6, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 929
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 915
    :cond_1
    :try_start_5
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    sput v1, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 916
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 918
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_2

    .line 920
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showphoto in postShowPhoto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I

    goto :goto_0

    .line 923
    :cond_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method private queryResult(Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    .locals 9
    .parameter "photoQueryData"
    .parameter "sstl"

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1087
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    if-ne v3, v2, :cond_2

    .line 1088
    iget-byte v0, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->slidertypecount:B

    .line 1089
    .local v0, count:I
    if-eqz v0, :cond_2

    .line 1090
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1091
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    .line 1093
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1094
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1095
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slider show tpye "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    iget-object v6, v6, Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->slidershowtypelist:Ljava/util/ArrayList;

    aget-object v5, p2, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v2, p2}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onSlideshowTypeList([Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V

    .line 1102
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    if-ne v3, v2, :cond_3

    .line 1106
    :cond_3
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    if-ne v3, v2, :cond_5

    .line 1107
    sget-object v6, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1109
    :try_start_0
    iget-byte v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->status:B

    if-nez v2, :cond_6

    .line 1110
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1111
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendBufferImage(I)V

    .line 1125
    :cond_4
    :goto_1
    monitor-exit v6

    .line 1127
    :cond_5
    return-void

    .line 1113
    :cond_6
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1114
    iget-short v5, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    if-ne v5, v2, :cond_8

    move v5, v3

    :goto_2
    iget-short v2, p1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    if-ne v2, v8, :cond_9

    move v2, v3

    :goto_3
    or-int/2addr v2, v5

    if-eqz v2, :cond_7

    .line 1115
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove buffer 0 since exist: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1120
    :cond_7
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    if-ne v2, v8, :cond_4

    .line 1122
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryNextBufferImage()V

    goto :goto_1

    .line 1125
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_8
    move v5, v4

    .line 1114
    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_3
.end method

.method private removeCallback()V
    .locals 5

    .prologue
    .line 689
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "removeCallback"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 692
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 693
    invoke-interface {v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->removePhotoCallback()V

    .line 694
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "remove callback done."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    .line 703
    return-void

    .line 696
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 698
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove callback error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removePhotoSendServiceCallback()V
    .locals 4

    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "removePhotoSendServiceCallback"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v1}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->removeCallback()V

    .line 725
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "remove photo send callback done."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove callback error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private send4Pull([I)V
    .locals 4
    .parameter "list"

    .prologue
    .line 1240
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1241
    .local v0, li:[I
    const/4 v1, 0x0

    .line 1242
    .local v1, start2send:Z
    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1243
    :try_start_0
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1244
    const/4 v1, 0x1

    .line 1245
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-direct {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->buildlist4Pull([I)V

    .line 1247
    if-eqz v1, :cond_1

    .line 1248
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->sendPhoto4Pull()V

    .line 1250
    :cond_1
    return-void

    .line 1245
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendBufferImage(I)V
    .locals 8
    .parameter "handle"

    .prologue
    const/4 v4, 0x0

    .line 1058
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    if-ne v0, p1, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer file not exit, send it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendingHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iput p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1064
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v2, v0, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B

    move-result-object v1

    .line 1065
    .local v1, data:[B
    iget-object v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1066
    if-nez v1, :cond_1

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v1, v2, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .end local v1           #data:[B
    int-to-short v2, p1

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1082
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1071
    :catch_0
    move-exception v6

    .line 1072
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1076
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #data:[B
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send image data in sendBufferImage"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    int-to-short v3, p1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData([BIIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private sendFirstImage()V
    .locals 9

    .prologue
    .line 1021
    const/4 v0, -0x1

    sput v0, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 1022
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    iput v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1023
    iget v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 1025
    .local v7, mHandle:I
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v2, v0, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B

    move-result-object v1

    .line 1027
    .local v1, data:[B
    iget-object v8, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1028
    if-nez v1, :cond_1

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v1, v2, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .end local v1           #data:[B
    int-to-short v2, v7

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I

    .line 1036
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent the first image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendingHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1053
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :goto_1
    return-void

    .line 1038
    .restart local v1       #data:[B
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "mPhotoSendService is not available"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1039
    :try_start_3
    monitor-exit v8

    goto :goto_1

    .line 1053
    .end local v1           #data:[B
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1041
    :catch_0
    move-exception v6

    .line 1042
    .local v6, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1046
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #data:[B
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send image data in sendFirstImage"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    int-to-short v3, v7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData([BIIZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private sendImage()V
    .locals 9

    .prologue
    .line 988
    sget v7, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 989
    .local v7, mHandle:I
    iget v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    if-ne v0, v7, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send the inexist image, send it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendingHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iput v7, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sendingHandle:I

    .line 995
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v2, v0, v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B

    move-result-object v1

    .line 996
    .local v1, data:[B
    iget-object v8, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v8

    .line 997
    if-nez v1, :cond_1

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v1, v2, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .end local v1           #data:[B
    int-to-short v2, v7

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 1016
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1004
    :catch_0
    move-exception v6

    .line 1005
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1009
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #data:[B
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send image data in sendImage"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    int-to-short v3, v7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData([BIIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private setConnStatus(Z)V
    .locals 4
    .parameter "conn"

    .prologue
    const/4 v3, 0x0

    .line 1130
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "setConnStatus for connection"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    if-eqz p1, :cond_1

    .line 1132
    const-string v0, "connect status is OK"

    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->cancelConnectRspTimer(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setConnStatus(), mReleaseFromLoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    if-nez v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v0, v3}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 1142
    :goto_1
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    goto :goto_0

    .line 1139
    :cond_2
    iput-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    goto :goto_1
.end method

.method private unbindPhotoSendService()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "enter unbindPhotoSendService"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :try_start_0
    iget v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    if-eqz v1, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->removePhotoSendServiceCallback()V

    .line 758
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z

    .line 762
    :goto_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "to unbind photo send service"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 765
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    .line 767
    :cond_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 760
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "mPhotoSendService not bound."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public Release(Z)I
    .locals 3
    .parameter "isSwitch2Video"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    const/4 p1, 0x0

    .line 366
    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    if-nez v2, :cond_0

    .line 367
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "already released"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    return v0

    .line 371
    :cond_0
    if-eqz p1, :cond_1

    .line 372
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    move v0, v1

    .line 373
    goto :goto_0

    .line 375
    :cond_1
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    .line 378
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "to close the connection"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v2

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "disconnect data sending"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->DataDisConnect()V

    .line 385
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "to close"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->photoClose()V

    .line 388
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->removeCallback()V

    move v0, v1

    .line 389
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method SendImageData([BIIZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4

    const/4 v7, 0x0

    .line 1430
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :try_start_0
    array-length v0, p1

    if-ge v0, v9, :cond_2

    .line 1434
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v0, :cond_1

    .line 1435
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhotoData([BIIZZ)I

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "photo send service not exist"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhotoSendService dead:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    goto :goto_0

    .line 1440
    :cond_2
    const/high16 v8, 0x4

    .line 1441
    :try_start_1
    array-length v0, p1

    div-int v2, v0, v8

    .line 1442
    array-length v0, p1

    rem-int/2addr v0, v8

    .line 1443
    if-eqz v0, :cond_3

    .line 1444
    add-int/lit8 v2, v2, 0x1

    .line 1446
    :cond_3
    array-length v4, p1

    .line 1447
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send photo data in blocks on aidl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v0, :cond_4

    .line 1450
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    move v1, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->MultiBlockDataInfo(IIIIZZ)V

    :goto_1
    move v0, v7

    .line 1455
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1456
    if-le v4, v9, :cond_6

    .line 1457
    new-array v1, v8, [B

    .line 1458
    mul-int v3, v0, v9

    const/4 v5, 0x0

    invoke-static {p1, v3, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1460
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v3, :cond_5

    .line 1461
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v3, v1, v0, v8}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhotoDataM([BII)I

    .line 1475
    :goto_3
    sub-int/2addr v4, v9

    .line 1455
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1452
    :cond_4
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "photo send service not exist"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1483
    :catch_1
    move-exception v0

    .line 1484
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1463
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "photo send service not exist"

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1466
    :cond_6
    new-array v1, v4, [B

    .line 1467
    mul-int v3, v0, v9

    const/4 v5, 0x0

    invoke-static {p1, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v3, :cond_7

    .line 1470
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    invoke-interface {v3, v1, v0, v4}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhotoDataM([BII)I

    goto :goto_3

    .line 1472
    :cond_7
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "photo send service not exist"

    invoke-static {v1, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public addList(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, fl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 273
    .local v3, size:I
    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v5

    .line 274
    :try_start_0
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-short v0, v4

    .line 278
    .local v0, handle:S
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 281
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->addFile(Ljava/lang/String;S)Lcom/duokan/airkan/photo/SendoutFileInfo;

    move-result-object v2

    .line 282
    .local v2, sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    if-eqz v2, :cond_0

    .line 283
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    .line 284
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v0           #handle:S
    .end local v1           #i:I
    .end local v2           #sfi:Lcom/duokan/airkan/photo/SendoutFileInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #handle:S
    goto :goto_0

    .line 288
    .restart local v1       #i:I
    :cond_2
    monitor-exit v5

    .line 289
    const/4 v4, 0x0

    return v4

    .line 288
    .end local v0           #handle:S
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelConnectRspTimer(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1505
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect respond timer is canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method public cancelOfferTimer(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1537
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offer timer is canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public cleanList()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iput-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 345
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 347
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->postCleanList()V

    .line 349
    return v2

    .line 347
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "servicename"
    .parameter "FirstFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter connect, mIsConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-object p2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mFirstFileName:Ljava/lang/String;

    .line 220
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    if-eqz v1, :cond_0

    .line 221
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z

    .line 222
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v1, v5}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onConnectResponse(I)V

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-boolean v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    .line 226
    iput-boolean v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mQuerySlideShowType:Z

    .line 227
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z

    .line 228
    const/4 v1, -0x1

    iput v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I

    .line 229
    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z

    .line 232
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->postConnect(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method

.method public errorProcess(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    .line 1553
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    invoke-interface {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onError(I)V

    .line 1554
    return-void
.end method

.method postConnect(Ljava/lang/String;)V
    .locals 7
    .parameter "srvName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 821
    move-object v3, p1

    .line 822
    .local v3, servicename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 824
    .local v2, i:I
    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z

    if-nez v4, :cond_0

    .line 825
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "already released"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    .line 829
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    if-eqz v4, :cond_2

    .line 830
    add-int/lit8 v2, v2, 0x1

    .line 831
    const/16 v4, 0x1e

    if-lt v2, v4, :cond_1

    .line 860
    :goto_1
    return-void

    .line 834
    :cond_1
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for existing link disconnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :try_start_0
    iget v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v1

    .line 838
    .local v1, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->startConnectRspTimer()V

    .line 842
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->registerCallback()V

    .line 843
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4, v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, deviceType:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 845
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "device not found"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v4, Lcom/duokan/airkan/common/AirkanException;

    const-string v5, "Device not found"

    invoke-direct {v4, v5}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 848
    :cond_3
    const-string v4, "_airkan._tcp.local."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 849
    invoke-super {p0, v3}, Lcom/duokan/airkan/phone/api/ConnectionManager;->connect(Ljava/lang/String;)V

    .line 850
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z

    .line 859
    :goto_2
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->DataConnect()V

    goto :goto_1

    .line 851
    :cond_4
    const-string v4, "BTSpeaker"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 852
    invoke-virtual {p0, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->setSvrName(Ljava/lang/String;)V

    .line 853
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->postconnect2BT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 855
    :cond_5
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "device type is not valid"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance v4, Lcom/duokan/airkan/common/AirkanException;

    const-string v5, "device type is not valid"

    invoke-direct {v4, v5}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method postPhotoShow(I)V
    .locals 8
    .parameter "sst"

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 867
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_3

    .line 868
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To slider show with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-boolean v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v1, :cond_1

    .line 870
    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :try_start_1
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 872
    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 874
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    :cond_1
    :try_start_2
    sget v1, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    iget-boolean v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoShow(IZIIZ)I

    move-result v7

    .line 879
    .local v7, ret:I
    if-nez v7, :cond_2

    .line 880
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send photo show success."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 895
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .end local v7           #ret:I
    :goto_0
    return-void

    .line 874
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 891
    .end local v0           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v6

    .line 892
    .local v6, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo show error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 882
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v0       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    .restart local v7       #ret:I
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send photo show failed."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 884
    .end local v7           #ret:I
    :catch_1
    move-exception v6

    .line 885
    .local v6, e:Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 889
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded, can not photo show."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method

.method postquery(ZZZS)V
    .locals 6
    .parameter "slideshowtype"
    .parameter "currentshow"
    .parameter "availibility"
    .parameter "ahandle"

    .prologue
    const/4 v5, 0x1

    .line 795
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "post query"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    new-instance v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    invoke-direct {v2}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;-><init>()V

    .line 797
    .local v2, photoQueryData:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    if-eqz p1, :cond_0

    .line 798
    iput-byte v5, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    .line 799
    :cond_0
    if-eqz p2, :cond_1

    .line 800
    iput-byte v5, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    .line 801
    :cond_1
    if-eqz p3, :cond_2

    .line 802
    iput-byte v5, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 803
    iput-short p4, v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    .line 806
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 808
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_3

    .line 809
    sget v3, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v1, v3, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoQuery(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;)I

    .line 810
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "call success"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 812
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_3
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v4, "Service not bounded."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method postrequest()V
    .locals 7

    .prologue
    .line 771
    :try_start_0
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/DeviceManager;->getLocalDevicename()Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, mDeviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v3

    .line 774
    .local v3, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v3, :cond_0

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To post request, device name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 778
    :try_start_1
    sget v4, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v3, v4, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoRequest(ILjava/lang/String;)I

    .line 779
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "call photo request success"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 791
    .end local v1           #mDeviceName:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 780
    .restart local v1       #mDeviceName:Ljava/lang/String;
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 787
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #mDeviceName:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_1
    move-exception v0

    .line 788
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send photo request error. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 785
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #mDeviceName:Ljava/lang/String;
    .restart local v3       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v5, "Service not bounded."

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public queryNextBufferImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1343
    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1344
    new-instance v1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    invoke-direct {v1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;-><init>()V

    .line 1345
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query next buffer image: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v0, 0x1

    iput-byte v0, v1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 1348
    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->bufferHandleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, v1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 1353
    if-eqz v0, :cond_1

    .line 1354
    sget v2, Lcom/duokan/airkan/phone/api/PhotoManager;->serviceHandle:I

    invoke-interface {v0, v2, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->photoQuery(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;)I

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "Service not bounded."

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method registerCallback()V
    .locals 5

    .prologue
    .line 672
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "registerCallback"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v2}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    .line 675
    .local v1, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v1, :cond_0

    .line 676
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mCallback:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    invoke-interface {v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->registerPhotoCallback(Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;)V

    .line 677
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "register callback done."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :goto_0
    return-void

    .line 679
    .restart local v1       #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :cond_0
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "Service not bounded."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    .end local v1           #myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register callback error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method registerPhotoSendServiceCallback()V
    .locals 4

    .prologue
    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "registerPhotoSendServiceCallback"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendServiceCallback:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

    invoke-interface {v1, v2}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->registerCallback(Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;)V

    .line 710
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "register photo send callback done."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "Service not bounded."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register photo send callback error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPhoto4Pull()V
    .locals 8

    .prologue
    .line 1390
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-eqz v0, :cond_1

    .line 1391
    sget-object v6, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1392
    :try_start_0
    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I

    iget v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I

    invoke-interface {v1, v0, v2, v3}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onGetImageData(Ljava/lang/String;II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1397
    if-nez v1, :cond_2

    .line 1399
    :try_start_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    sget-object v1, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-object v1, v1, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    sget-object v2, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v2, v2, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    sget-object v3, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v3, v3, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    const/4 v4, 0x0

    sget-object v5, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v5, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    invoke-interface/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;->sendPhoto(Ljava/lang/String;IIZZ)I

    .line 1403
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pull file sendok, send next: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1416
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send pull image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v0, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    monitor-exit v6

    .line 1420
    :cond_1
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1411
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v2, "send image data in sendPhoto4Pull"

    invoke-static {v0, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-byte v2, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-short v3, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    const/4 v4, 0x0

    sget-object v0, Lcom/duokan/airkan/phone/api/PhotoManager;->list4Pull:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/photo/SendoutFileInfo;

    iget-boolean v5, v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->SendImageData([BIIZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public showPhoto(Ljava/lang/String;)I
    .locals 6
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 306
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in showPhoto, file not exist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/4 v2, -0x2

    .line 329
    .end local v1           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, " show photo file name is null"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 315
    const/4 v2, -0x3

    goto :goto_0

    .line 318
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    iget-boolean v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsFirstPhoto:Z

    or-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in showPhoto, show file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->findFileInList(Ljava/lang/String;)S

    move-result v3

    iput v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->index:I

    .line 323
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/PhotoManager;->postShowPhoto()V

    goto :goto_0

    .line 325
    :cond_2
    iget-boolean v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z

    if-nez v3, :cond_0

    .line 326
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v3, "in showPhoto, data link not connected"

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public showType(ZI)I
    .locals 1
    .parameter "isSlideshow"
    .parameter "slideshowType"

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 251
    :cond_0
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z

    .line 252
    iget-boolean v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mIsAuthPassed:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postPhotoShow(I)V

    .line 256
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startConnectRspTimer()V
    .locals 4

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "connect timer start"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;->cancel()Z

    .line 1498
    :cond_0
    :goto_0
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    .line 1499
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->CONNECT_RSP_TIMER:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1500
    return-void

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "start new connect timer"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mConnectTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public startOfferTimer()V
    .locals 4

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "Offer timer start"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;->cancel()Z

    .line 1530
    :cond_0
    :goto_0
    new-instance v0, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;-><init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    .line 1531
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimerTask:Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;

    iget v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->OFFER_TIMER:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1532
    return-void

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;

    const-string v1, "start new Offer timer"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager;->mOfferTimer:Ljava/util/Timer;

    goto :goto_0
.end method
