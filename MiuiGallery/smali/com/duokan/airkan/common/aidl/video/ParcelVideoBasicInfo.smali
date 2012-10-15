.class public Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;
.super Ljava/lang/Object;
.source "ParcelVideoBasicInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceName:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public playlength:I

.field public position:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->playlength:I

    .line 10
    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->position:I

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->playlength:I

    .line 10
    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->position:I

    .line 42
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->playlength:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->position:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->title:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->url:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->header:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->deviceName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 61
    iget v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->playlength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoBasicInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
