.class Lcom/duokan/airkan/phone/api/DeviceManager$7;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/DeviceManager;->postconnect2BT(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

.field final synthetic val$mAppName:Ljava/lang/String;

.field final synthetic val$mSvrName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/DeviceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->val$mAppName:Ljava/lang/String;

    iput-object p3, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->val$mSvrName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 439
    :try_start_0
    const-string v3, "ADM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "myService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    invoke-static {v5}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$000(Lcom/duokan/airkan/phone/api/DeviceManager;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAppName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->val$mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSvrName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->val$mSvrName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$000(Lcom/duokan/airkan/phone/api/DeviceManager;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v3

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->val$mAppName:Ljava/lang/String;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->val$mSvrName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->connect2BT(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 441
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 442
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/DeviceManager$7;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v4, 0x1

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mBTSpeakerConnected:Z
    invoke-static {v3, v4}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$902(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z

    .line 443
    const-string v3, "ADM"

    const-string v4, "send authentication request success."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v2           #ret:I
    :goto_0
    return-void

    .line 445
    .restart local v2       #ret:I
    :cond_0
    const-string v3, "ADM"

    const-string v4, "send authentication request failed."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 447
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 449
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 450
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
