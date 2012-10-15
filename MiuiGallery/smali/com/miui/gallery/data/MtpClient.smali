.class public Lcom/miui/gallery/data/MtpClient;
.super Ljava/lang/Object;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/MtpClient$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoredDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MtpClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionIntent:Landroid/app/PendingIntent;

.field private final mRequestPermissionDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    .line 70
    new-instance v1, Lcom/miui/gallery/data/MtpClient$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/data/MtpClient$1;-><init>(Lcom/miui/gallery/data/MtpClient;)V

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object p1, p0, Lcom/miui/gallery/data/MtpClient;->mContext:Landroid/content/Context;

    .line 168
    const-string v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/data/MtpClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/data/MtpClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isCamera(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 149
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 150
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 152
    .local v2, intf:Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 158
    .end local v2           #intf:Landroid/hardware/usb/UsbInterface;
    :goto_1
    return v3

    .line 150
    .restart local v2       #intf:Landroid/hardware/usb/UsbInterface;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v2           #intf:Landroid/hardware/usb/UsbInterface;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 5
    .parameter "usbDevice"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, deviceName:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/data/MtpClient;->isCamera(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/miui/gallery/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 193
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    .line 196
    .local v0, connection:Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :cond_3

    .line 197
    new-instance v2, Landroid/mtp/MtpDevice;

    invoke-direct {v2, p1}, Landroid/mtp/MtpDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 198
    .local v2, mtpDevice:Landroid/mtp/MtpDevice;
    invoke-virtual {v2, v0}, Landroid/mtp/MtpDevice;->open(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v2           #mtpDevice:Landroid/mtp/MtpDevice;
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/miui/gallery/data/MtpClient$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevice(I)Landroid/mtp/MtpDevice;
    .locals 3
    .parameter "id"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v3, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 282
    .local v1, usbDevice:Landroid/hardware/usb/UsbDevice;
    iget-object v2, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 283
    invoke-direct {p0, v1}, Lcom/miui/gallery/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    goto :goto_0

    .line 288
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #usbDevice:Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 287
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getObject(Ljava/lang/String;II)[B
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "objectSize"

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 404
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 405
    const/4 v1, 0x0

    .line 407
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 332
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 333
    const/4 v1, 0x0

    .line 335
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectList(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .parameter "deviceName"
    .parameter "storageId"
    .parameter "objectHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 368
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_1

    .line 390
    :cond_0
    return-object v5

    .line 371
    :cond_1
    if-nez p3, :cond_2

    .line 373
    const/4 p3, -0x1

    .line 375
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, p2, v6, p3}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v1

    .line 376
    .local v1, handles:[I
    if-eqz v1, :cond_0

    .line 380
    array-length v4, v1

    .line 381
    .local v4, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v5, objectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 383
    aget v6, v1, v2

    invoke-virtual {v0, v6}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v3

    .line 384
    .local v3, info:Landroid/mtp/MtpObjectInfo;
    if-nez v3, :cond_3

    .line 385
    const-string v6, "MtpClient"

    const-string v7, "getObjectInfo failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getStorageList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "deviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpStorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 300
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_1

    .line 318
    :cond_0
    return-object v5

    .line 303
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v4

    .line 304
    .local v4, storageIds:[I
    if-eqz v4, :cond_0

    .line 308
    array-length v3, v4

    .line 309
    .local v3, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .local v5, storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpStorageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 311
    aget v6, v4, v1

    invoke-virtual {v0, v6}, Landroid/mtp/MtpDevice;->getStorageInfo(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v2

    .line 312
    .local v2, info:Landroid/mtp/MtpStorageInfo;
    if-nez v2, :cond_2

    .line 313
    const-string v6, "MtpClient"

    const-string v7, "getStorageInfo failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getThumbnail(Ljava/lang/String;I)[B
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 419
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 420
    const/4 v1, 0x0

    .line 422
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public importFile(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "destPath"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 437
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_0

    .line 438
    const/4 v1, 0x0

    .line 440
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeListener(Lcom/miui/gallery/data/MtpClient$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/miui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
