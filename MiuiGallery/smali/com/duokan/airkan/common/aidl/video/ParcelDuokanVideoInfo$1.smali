.class final Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;
.super Ljava/lang/Object;
.source "ParcelDuokanVideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 16
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 20
    new-array v0, p1, [Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;->newArray(I)[Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;

    move-result-object v0

    return-object v0
.end method
