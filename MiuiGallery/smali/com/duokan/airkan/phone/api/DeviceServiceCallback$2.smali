.class Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;
.super Ljava/lang/Object;
.source "DeviceServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

.field final synthetic val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/DeviceServiceCallback;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "DSC"

    const-string v1, "to call removeDevice"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;->this$0:Lcom/duokan/airkan/phone/api/DeviceServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->mDeviceManager:Lcom/duokan/airkan/phone/api/DeviceManager;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/DeviceServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/DeviceServiceCallback;)Lcom/duokan/airkan/phone/api/DeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceServiceCallback$2;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager;->removeDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 61
    return-void
.end method
