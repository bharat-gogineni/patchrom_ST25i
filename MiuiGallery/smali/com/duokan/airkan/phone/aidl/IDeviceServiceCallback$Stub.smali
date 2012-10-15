.class public abstract Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDeviceServiceCallback.java"

# interfaces
.implements Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 50
    .local v0, _arg0:[Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->onServiceInform([Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:[Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :sswitch_2
    const-string v2, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 64
    .local v0, _arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    goto :goto_1

    .line 70
    .end local v0           #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :sswitch_3
    const-string v2, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    sget-object v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 78
    .restart local v0       #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    goto :goto_2

    .line 84
    .end local v0           #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :sswitch_4
    const-string v2, "com.duokan.airkan.phone.aidl.IDeviceServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    sget-object v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 92
    .restart local v0       #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->onDeviceConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    goto :goto_3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
