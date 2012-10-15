.class Lcom/duokan/airkan/phone/api/DeviceManager$1;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/DeviceManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/DeviceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-static {p2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    move-result-object v1

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$002(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    .line 226
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v1, 0x1

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$102(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z

    .line 227
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$400(Lcom/duokan/airkan/phone/api/DeviceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceManager$1$1;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/DeviceManager$1$1;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$400(Lcom/duokan/airkan/phone/api/DeviceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duokan/airkan/phone/api/DeviceManager$1$2;

    invoke-direct {v1, p0}, Lcom/duokan/airkan/phone/api/DeviceManager$1$2;-><init>(Lcom/duokan/airkan/phone/api/DeviceManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mAirkanClientService:Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$002(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/aidl/IAirkanClientService;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    .line 245
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    const/4 v1, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mIsBoundSuccess:Z
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$102(Lcom/duokan/airkan/phone/api/DeviceManager;Z)Z

    .line 246
    return-void
.end method
