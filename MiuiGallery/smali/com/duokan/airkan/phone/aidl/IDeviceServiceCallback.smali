.class public interface abstract Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
.super Ljava/lang/Object;
.source "IDeviceServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceInform([Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
