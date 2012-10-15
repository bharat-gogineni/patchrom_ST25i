.class public Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;
.super Ljava/lang/Object;
.source "ParcelPhotoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public handle:S

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->handle:S

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->handle:S

    .line 29
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->readFormParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFormParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->handle:S

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->title:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->handle:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return-void
.end method
