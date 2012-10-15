.class public Lcom/duokan/airkan/phone/api/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/api/ConnectionManager$OnConnectionStatusChangeListener;
    }
.end annotation


# instance fields
.field protected final AIRKAN_TYPE:Ljava/lang/String;

.field protected final BLUETOOTH_TYPE:Ljava/lang/String;

.field protected mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

.field protected mAppName:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsAuthPassed:Z

.field protected mIsConnecting:Z

.field private mOCSCL:Lcom/duokan/airkan/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

.field protected mServiceHandle:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mHandler:Landroid/os/Handler;

    .line 13
    iput v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    .line 14
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 15
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAppName:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 17
    iput-object v2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mOCSCL:Lcom/duokan/airkan/phone/api/ConnectionManager$OnConnectionStatusChangeListener;

    .line 18
    const-string v0, "_airkan._tcp.local."

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->AIRKAN_TYPE:Ljava/lang/String;

    .line 19
    const-string v0, "BTSpeaker"

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->BLUETOOTH_TYPE:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsConnecting:Z

    .line 27
    invoke-direct {p0}, Lcom/duokan/airkan/phone/api/ConnectionManager;->init()V

    .line 28
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAppName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 2
    .parameter "appName"
    .parameter "adm"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/duokan/airkan/phone/api/ConnectionManager;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    .line 34
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "ACM"

    const-string v1, "device manager is null"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    .line 24
    iput-boolean v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 25
    return-void
.end method


# virtual methods
.method connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsConnecting:Z

    .line 65
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "device manager is null"

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->getService()Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v0

    .line 69
    .local v0, myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/duokan/airkan/phone/api/ConnectionManager$1;

    invoke-direct {v2, p0, v0}, Lcom/duokan/airkan/phone/api/ConnectionManager$1;-><init>(Lcom/duokan/airkan/phone/api/ConnectionManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void

    .line 90
    :cond_1
    const-string v1, "ACM"

    const-string v2, "Service not bounded, can not start authentication.call DeviceManager.open() first and wait for onOpened()."

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/duokan/airkan/common/AirkanException;

    const-string v2, "Service not bounded, can not start authentication.call DeviceManager.open() first and wait for onOpened()."

    invoke-direct {v1, v2}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method connect(Ljava/lang/String;)V
    .locals 0
    .parameter "svrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/phone/api/ConnectionManager;->setSvrName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/api/ConnectionManager;->connect()V

    .line 61
    return-void
.end method

.method onAuthPassed(ZI)V
    .locals 0
    .parameter "passed"
    .parameter "serviceHandle"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mIsAuthPassed:Z

    .line 173
    iput p2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mServiceHandle:I

    .line 174
    return-void
.end method

.method setSvrName(Ljava/lang/String;)V
    .locals 2
    .parameter "svrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/duokan/airkan/common/AirkanException;

    const-string v1, "device manager is null"

    invoke-direct {v0, v1}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v0, p1}, Lcom/duokan/airkan/phone/api/DeviceManager;->setConnectDevice(Ljava/lang/String;)V

    .line 56
    return-void
.end method
