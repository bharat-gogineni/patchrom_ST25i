.class Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;
.super Ljava/lang/Object;
.source "ConnectControl.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/bigscreen/ConnectControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/bigscreen/ConnectControl;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/bigscreen/ConnectControl;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/miui/gallery/bigscreen/ConnectControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;-><init>(Lcom/miui/gallery/bigscreen/ConnectControl;)V

    return-void
.end method

.method private serviceOpenned()V
    .locals 7

    .prologue
    .line 411
    const-string v1, "grab_connect_control"

    const-string v2, "serviceOpenned"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    const/4 v2, 0x0

    #calls: Lcom/miui/gallery/bigscreen/ConnectControl;->queryDevices(Z)V
    invoke-static {v1, v2}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$400(Lcom/miui/gallery/bigscreen/ConnectControl;Z)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$500(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/duokan/airkan/phone/api/PhotoManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 423
    const-string v1, "grab_connect_control"

    const-string v2, "===> create new photo manager"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    new-instance v3, Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$600(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;
    invoke-static {v5}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$700(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/duokan/airkan/phone/api/DeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoEventListener:Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;
    invoke-static {v6}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$800(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/duokan/airkan/phone/api/PhotoManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;)V

    #setter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoManager:Lcom/duokan/airkan/phone/api/PhotoManager;
    invoke-static {v2, v3}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$502(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/duokan/airkan/phone/api/PhotoManager;)Lcom/duokan/airkan/phone/api/PhotoManager;

    .line 432
    :goto_1
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0           #e:Lcom/duokan/airkan/common/AirkanException;
    :cond_0
    const-string v1, "grab_connect_control"

    const-string v2, "===> photoManager is not null"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onBTDeviceAutoConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 404
    const-string v0, "grab_connect_control"

    const-string v1, "BT device is connected."

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 386
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device is coming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    iget-object v1, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onDevicesAdded(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 395
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device is lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    iget-object v1, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onDeviceRemoved(Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "grab_connect_control"

    const-string v1, "service is connected."

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl$DeviceChangeListener;->serviceOpenned()V

    .line 382
    return-void
.end method
