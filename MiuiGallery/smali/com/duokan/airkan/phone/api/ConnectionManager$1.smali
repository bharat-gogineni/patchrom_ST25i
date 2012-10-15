.class Lcom/duokan/airkan/phone/api/ConnectionManager$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/ConnectionManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/ConnectionManager;

.field final synthetic val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/ConnectionManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/ConnectionManager$1;->this$0:Lcom/duokan/airkan/phone/api/ConnectionManager;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/ConnectionManager$1;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/ConnectionManager$1;->val$myService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/ConnectionManager$1;->this$0:Lcom/duokan/airkan/phone/api/ConnectionManager;

    iget-object v4, v4, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAppName:Ljava/lang/String;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/ConnectionManager$1;->this$0:Lcom/duokan/airkan/phone/api/ConnectionManager;

    iget-object v5, v5, Lcom/duokan/airkan/phone/api/ConnectionManager;->mAirkanDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-virtual {v5}, Lcom/duokan/airkan/phone/api/DeviceManager;->getConnectDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;->connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 78
    const-string v3, "ACM"

    const-string v4, "send authentication request success."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v2           #ret:I
    :goto_0
    return-void

    .line 80
    .restart local v2       #ret:I
    :cond_0
    const-string v3, "ACM"

    const-string v4, "send authentication request failed."

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
