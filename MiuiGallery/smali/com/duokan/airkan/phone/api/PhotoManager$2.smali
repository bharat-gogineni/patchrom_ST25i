.class Lcom/duokan/airkan/phone/api/PhotoManager$2;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/PhotoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-static {p2}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    move-result-object v1

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1202(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    .line 505
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, 0x1

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 506
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->registerPhotoSendServiceCallback()V

    .line 507
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo send service disconnected"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->removePhotoSendServiceCallback()V
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1400(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    .line 515
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsPhotoSendServiceBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 516
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$2;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mPhotoSendService:Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1202(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    .line 517
    return-void
.end method
