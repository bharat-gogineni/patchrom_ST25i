.class Lcom/duokan/airkan/phone/api/DeviceManager$3;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/DeviceManager;->addDevice(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

.field final synthetic val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$3;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/DeviceManager$3;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$3;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$800(Lcom/duokan/airkan/phone/api/DeviceManager;)Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$3;->val$device:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-interface {v0, v1}, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;->onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 338
    return-void
.end method
