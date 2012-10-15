.class Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;
.super Ljava/lang/Object;
.source "ConnectControl.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/bigscreen/ConnectControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/bigscreen/ConnectControl;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/bigscreen/ConnectControl;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/miui/gallery/bigscreen/ConnectControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;-><init>(Lcom/miui/gallery/bigscreen/ConnectControl;)V

    return-void
.end method

.method private remoteDisconnected()V
    .locals 2

    .prologue
    .line 513
    const-string v0, "grab_connect_control"

    const-string v1, "do remoteDisconnected"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$900(Lcom/miui/gallery/bigscreen/ConnectControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$902(Lcom/miui/gallery/bigscreen/ConnectControl;Z)Z

    .line 517
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onPhotoConnectReleased()V

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnectResponse(I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 438
    if-ne v3, p1, :cond_2

    .line 440
    const-string v0, "grab_connect_control"

    const-string v1, "connect is responded ok"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #setter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z
    invoke-static {v0, v3}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$902(Lcom/miui/gallery/bigscreen/ConnectControl;Z)Z

    .line 444
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1000(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    #calls: Lcom/miui/gallery/bigscreen/ConnectControl;->updateList(Lcom/miui/gallery/data/MediaSet;)V
    invoke-static {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1100(Lcom/miui/gallery/bigscreen/ConnectControl;Lcom/miui/gallery/data/MediaSet;)V

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1200(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==the to show photo is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1200(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mCurrentPhoto:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1200(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/miui/gallery/bigscreen/ConnectControl;->showPhoto(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1300(Lcom/miui/gallery/bigscreen/ConnectControl;Ljava/lang/String;)I

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onPhotoConnectResponse(I)V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, -0x4

    if-ne v0, p1, :cond_1

    .line 455
    :cond_3
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect is responded failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mPhotoServerConnected:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$902(Lcom/miui/gallery/bigscreen/ConnectControl;Z)Z

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onPhotoConnectResponse(I)V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "grab_connect_control"

    const-string v1, "onDisconnected."

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->remoteDisconnected()V

    .line 501
    return-void
.end method

.method public onError(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 505
    const-string v0, "grab_connect_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->remoteDisconnected()V

    .line 509
    return-void
.end method

.method public onGetImageData(Ljava/lang/String;II)[B
    .locals 1
    .parameter "filename"
    .parameter "mScreenSizeW"
    .parameter "mScreenSizeH"

    .prologue
    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReleased()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "grab_connect_control"

    const-string v1, "remote show is dispeared, but connected."

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->remoteDisconnected()V

    .line 493
    return-void
.end method

.method public onSetImageData(Ljava/lang/String;[BII)V
    .locals 0
    .parameter "filename"
    .parameter "imageData"
    .parameter "mScreenSizeW"
    .parameter "mScreenSizeH"

    .prologue
    .line 530
    return-void
.end method

.method public onSlideshowTypeList([Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    .locals 5
    .parameter "sstl"

    .prologue
    .line 466
    array-length v1, p1

    .line 467
    .local v1, size:I
    if-lez v1, :cond_0

    .line 469
    const-string v2, "grab_connect_control"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slideshow type list is received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v2, "grab_connect_control"

    const-string v3, "==== show types: "

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mSlideShowTypes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1400(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 475
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mSlideShowTypes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1400(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/util/ArrayList;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v2, "grab_connect_control"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-byte v4, v4, Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;->handle:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mBarConListener:Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
    invoke-static {v2}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$300(Lcom/miui/gallery/bigscreen/ConnectControl;)Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/bigscreen/ConnectControl$PhotoEventListener;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #getter for: Lcom/miui/gallery/bigscreen/ConnectControl;->mSlideShowTypes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$1400(Lcom/miui/gallery/bigscreen/ConnectControl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;->onPhotoSlideShowTypeList(Ljava/util/ArrayList;)V

    .line 483
    return-void
.end method
