.class public Lcom/duokan/airkan/phone/api/DeviceServiceCallback;
.super Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;
.source "DeviceServiceCallback.java"


# instance fields
.field private mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mHandler:Landroid/os/Handler;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/duokan/airkan/phone/api/DeviceServiceCallback;)Lcom/duokan/airkan/phone/api/DeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    return-object v0
.end method


# virtual methods
.method public onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "DSC"

    const-string v1, "onDeviceAdded"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "DSC"

    const-string v1, "device handler is not available"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$1;-><init>(Lcom/duokan/airkan/phone/api/DeviceServiceCallback;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDeviceConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v0, "DSC"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "DSC"

    const-string v1, "video manager not available"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$3;

    invoke-direct {v1, p0, p1}, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$3;-><init>(Lcom/duokan/airkan/phone/api/DeviceServiceCallback;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "DSC"

    const-string v1, "onDeviceRemoved"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "DSC"

    const-string v1, "device handler is not available"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;-><init>(Lcom/duokan/airkan/phone/api/DeviceServiceCallback;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onServiceInform([Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 4
    .parameter "namelist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    const-string v1, "DSC"

    const-string v2, "services: "

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 25
    const-string v1, "DSC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceInform ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DSC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    throw v0
.end method

.method public setAirkanDeviceManager(Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter "deviceManager"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 18
    return-void
.end method
