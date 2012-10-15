.class Lcom/duokan/airkan/phone/api/DeviceManager$5;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/DeviceManager;->onOpened()V
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
    .line 381
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$5;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$5;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #getter for: Lcom/duokan/airkan/phone/api/DeviceManager;->mODCL:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$800(Lcom/duokan/airkan/phone/api/DeviceManager;)Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;->onOpened()V

    .line 385
    return-void
.end method
