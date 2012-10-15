.class public Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;
.super Ljava/lang/Object;
.source "ParcelOfferData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dataip:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public screenHeight:S

.field public screenWidth:S

.field public tcpport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->readFormParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFormParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->dataip:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->tcpport:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->screenWidth:S

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->screenHeight:S

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->mDeviceName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->dataip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->tcpport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->screenWidth:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->screenHeight:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
