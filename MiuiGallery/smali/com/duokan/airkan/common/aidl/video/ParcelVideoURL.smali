.class public Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;
.super Ljava/lang/Object;
.source "ParcelVideoURL.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public header:Ljava/lang/String;

.field public resolution:B

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 10
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 10
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 48
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
