.class public Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
.super Ljava/lang/Object;
.source "ParcelDeviceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/ParcelDeviceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extraText:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/ParcelDeviceData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 1
    .parameter "pdd"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
