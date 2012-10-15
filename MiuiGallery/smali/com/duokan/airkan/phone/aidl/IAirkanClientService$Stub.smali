.class public abstract Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;
.super Landroid/os/Binder;
.source "IAirkanClientService.java"

# interfaces
.implements Lcom/duokan/airkan/phone/aidl/IAirkanClientService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IAirkanClientService;
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
    const-string v1, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/airkan/phone/aidl/IAirkanClientService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;

    move-result-object v1

    .line 50
    .local v1, _arg0:Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->registerDeviceCallback(Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v1           #_arg0:Lcom/duokan/airkan/phone/aidl/IDeviceServiceCallback;
    :sswitch_2
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->removeDeviceCallback()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;

    move-result-object v1

    .line 66
    .local v1, _arg0:Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->registerVideoCallback(Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Lcom/duokan/airkan/phone/aidl/IVideoServiceCallback;
    :sswitch_4
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->removeVideoCallback()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    move-result-object v1

    .line 82
    .local v1, _arg0:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->registerPhotoCallback(Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;
    :sswitch_6
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->removePhotoCallback()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    :sswitch_7
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v6, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    invoke-virtual {p0, v6}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->queryDevices(Ljava/util/List;)I

    move-result v8

    .line 99
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 106
    .end local v6           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    .end local v8           #_result:I
    :sswitch_8
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 112
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_9
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->connect2BT(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 124
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_a
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->disconnect(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v1           #_arg0:I
    :sswitch_b
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->release(I)I

    move-result v8

    .line 143
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_c
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;

    .line 160
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    :goto_1
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 162
    .local v7, _arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    .line 168
    .local v4, _arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    :goto_2
    invoke-virtual {p0, v1, v2, v7, v4}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->play(ILcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;Ljava/util/List;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;)I

    move-result v8

    .line 169
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v4           #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v7           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    .end local v8           #_result:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    goto :goto_1

    .line 166
    .restart local v7       #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    goto :goto_2

    .line 175
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
    .end local v4           #_arg3:Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .end local v7           #_arg2:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;>;"
    :sswitch_d
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->playSp(ILjava/lang/String;)I

    move-result v8

    .line 181
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_e
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->stop(I)I

    move-result v8

    .line 191
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_f
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->pause(I)I

    move-result v8

    .line 201
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_10
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->resume(I)I

    move-result v8

    .line 211
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_11
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->seek(II)I

    move-result v8

    .line 223
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v8           #_result:I
    :sswitch_12
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    .line 239
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->query(ILcom/duokan/airkan/common/aidl/video/ParcelQueryData;)I

    move-result v8

    .line 240
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    .end local v8           #_result:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    goto :goto_3

    .line 246
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
    :sswitch_13
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 251
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->setResolution(IB)I

    move-result v8

    .line 252
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    .end local v8           #_result:I
    :sswitch_14
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 263
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->setSource(IB)I

    move-result v8

    .line 264
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 270
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    .end local v8           #_result:I
    :sswitch_15
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 275
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->setVolume(IB)I

    move-result v8

    .line 276
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    .end local v8           #_result:I
    :sswitch_16
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoRequest(ILjava/lang/String;)I

    move-result v8

    .line 288
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_17
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .restart local v1       #_arg0:I
    sget-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;

    .line 299
    .local v2, _arg1:[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoPush(I[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;)I

    move-result v8

    .line 300
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
    .end local v8           #_result:I
    :sswitch_18
    const-string v10, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v2, v9

    .line 312
    .local v2, _arg1:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v5, v9

    .local v5, _arg4:Z
    :goto_5
    move-object v0, p0

    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoShow(IZIIZ)I

    move-result v8

    .line 318
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v8           #_result:I
    :cond_3
    move v2, v0

    .line 310
    goto :goto_4

    .restart local v2       #_arg1:Z
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_4
    move v5, v0

    .line 316
    goto :goto_5

    .line 324
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_19
    const-string v10, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v2, v9

    .line 330
    .restart local v2       #_arg1:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 331
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoClean(IZI)I

    move-result v8

    .line 332
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v8           #_result:I
    :cond_5
    move v2, v0

    .line 328
    goto :goto_6

    .line 338
    .end local v1           #_arg0:I
    :sswitch_1a
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 342
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 343
    sget-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    .line 348
    .local v2, _arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoQuery(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;)I

    move-result v8

    .line 349
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    .end local v8           #_result:I
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    goto :goto_7

    .line 355
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :sswitch_1b
    const-string v0, "com.duokan.airkan.phone.aidl.IAirkanClientService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/phone/aidl/IAirkanClientService$Stub;->photoClose(I)I

    move-result v8

    .line 359
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
