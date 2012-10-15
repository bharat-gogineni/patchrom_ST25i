.class final Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;
.super Ljava/lang/Object;
.source "ParcelPhotoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
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
        "Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 15
    new-instance v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;-><init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 19
    new-array v0, p1, [Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;->newArray(I)[Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;

    move-result-object v0

    return-object v0
.end method
