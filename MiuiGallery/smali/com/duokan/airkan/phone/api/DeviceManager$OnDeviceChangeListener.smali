.class public interface abstract Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceChangeListener"
.end annotation


# virtual methods
.method public abstract onBTDeviceAutoConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end method

.method public abstract onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end method

.method public abstract onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
.end method

.method public abstract onOpened()V
.end method
