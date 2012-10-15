.class public Lcom/miui/gallery/bigscreen/DeviceBarControl;
.super Ljava/lang/Object;
.source "DeviceBarControl.java"

# interfaces
.implements Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
.implements Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;


# static fields
.field private static mConnectController:Lcom/miui/gallery/bigscreen/ConnectControl;


# instance fields
.field private SEND_ANI_INTERVAL:I

.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mConnectState:I

.field private mCurDevice:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

.field private mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Landroid/view/View;Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V
    .locals 2
    .parameter "activity"
    .parameter "deviceBarWidget"
    .parameter "listener"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectState:I

    .line 36
    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->SEND_ANI_INTERVAL:I

    .line 43
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/bigscreen/ConnectControl;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectController:Lcom/miui/gallery/bigscreen/ConnectControl;

    .line 45
    check-cast p2, Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    .end local p2
    iput-object p2, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setupBarListener(Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;)V

    .line 48
    iput-object p3, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    .line 50
    new-instance v0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;-><init>(Lcom/miui/gallery/bigscreen/DeviceBarControl;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/bigscreen/DeviceBarControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->SEND_ANI_INTERVAL:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/miui/gallery/bigscreen/ConnectControl;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectController:Lcom/miui/gallery/bigscreen/ConnectControl;

    return-object v0
.end method

.method private sendSwitchTV(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceName"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->SEND_ANI_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 313
    return-void
.end method

.method private showThread()V
    .locals 3

    .prologue
    .line 305
    const-string v0, "grab_device_bar_con"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method


# virtual methods
.method public getConnectState()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectState:I

    return v0
.end method

.method public getCurDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mCurDevice:Ljava/lang/String;

    return-object v0
.end method

.method public hasAirkanDevice()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->hasAirkanDevice()Z

    move-result v0

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCancelAnimation()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->cancelAnimation()V

    .line 301
    return-void
.end method

.method public onDeviceClicked(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    const/4 v2, 0x1

    .line 234
    const-string v0, "grab_device_bar_con"

    const-string v1, "onDeviceClicked"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mCurDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mCurDevice:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    :cond_0
    sget-object v0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->MOBILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0, v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->switch2Local(I)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->deviceBarFadeOut()V

    .line 252
    return-void

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->sendSwitchTV(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    const-string v0, "grab_device_bar_con"

    const-string v1, "active release by user"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    invoke-virtual {p0, v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->switch2Local(I)V

    goto :goto_0
.end method

.method public onDeviceRefresh(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 156
    .local p1, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "grab_device_bar_con"

    const-string v1, "onDeviceRefresh"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->refreshDevices(Ljava/util/ArrayList;)V

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showBigScreenButton()V

    .line 163
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceRemoved(Ljava/lang/String;)V
    .locals 3
    .parameter "removeDevice"

    .prologue
    .line 177
    const-string v1, "grab_device_bar_con"

    const-string v2, "onDeviceRemoved"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->contains(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 181
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->removeDevice(Ljava/lang/String;)Z

    move-result v0

    .line 182
    .local v0, activeRemoved:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->setControlActive(Z)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showBigScreenButton()V

    .line 187
    return-void
.end method

.method public onDevicesAdded(Ljava/lang/String;)V
    .locals 2
    .parameter "newDevice"

    .prologue
    .line 167
    const-string v0, "grab_device_bar_con"

    const-string v1, "onDevicesAdded"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->addNewDevice(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showBigScreenButton()V

    .line 173
    return-void
.end method

.method public onDevicesAvailable(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 143
    .local p1, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "grab_device_bar_con"

    const-string v2, "onDevicesAvailable"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 148
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->addNewDevice(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showBigScreenButton()V

    .line 152
    return-void
.end method

.method public onPhotoConnectReleased()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "grab_device_bar_con"

    const-string v1, "onPhotoConnectReleased"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    return-void
.end method

.method public onPhotoConnectResponse(I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 192
    const-string v0, "grab_device_bar_con"

    const-string v1, "onPhotoConnectResponse"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 195
    if-ne v2, p1, :cond_1

    .line 196
    iput v3, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectState:I

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    invoke-interface {v0}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->refreshHidingMessage()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-nez p1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPhotoSlideShowTypeList(Ljava/util/ArrayList;)V
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
    .line 214
    .local p1, slideTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "grab_device_bar_con"

    const-string v2, "onPhotoSlideShowTypeList"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->showThread()V

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    const-string v2, "grab_device_bar_con"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the slide type is: "

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

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectState:I

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->removeActive()V

    .line 288
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->setControlActive(Z)V

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    .line 296
    return-void
.end method

.method public onUIListenerChange(Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    .line 101
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .parameter "visibility"
    .parameter "showAni"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->isShown()Z

    move-result v0

    .line 106
    .local v0, curVisi:Z
    if-nez p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    if-eqz p2, :cond_4

    .line 112
    if-nez p1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->deviceBarFadeIn()V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->deviceBarFadeOut()V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method public showBigScreenButton()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->hasAirkanDevice()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->showBigScreenButton(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public switch2Local(I)V
    .locals 2
    .parameter "activeRelease"

    .prologue
    const/4 v0, 0x1

    .line 255
    iput v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectState:I

    .line 256
    if-ne p1, v0, :cond_0

    .line 257
    sget-object v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectController:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->release()I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mWidget:Lcom/miui/gallery/bigscreen/DeviceBarWidget;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->removeActive()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mCurDevice:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->setControlActive(Z)V

    .line 266
    :cond_1
    return-void
.end method

.method public switch2TV(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceName"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 269
    iput v3, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectState:I

    .line 270
    sget-object v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectController:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->connectPhotoServer(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mConnectController:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->showType(ZI)I

    .line 272
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mCurDevice:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->SEND_ANI_INTERVAL:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->setControlActive(Z)V

    .line 279
    :cond_0
    return-void
.end method
