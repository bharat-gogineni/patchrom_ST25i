.class public Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;
.super Ljava/lang/Object;
.source "ParcelDuokanVideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ci:I

.field public mediaID:J

.field public preferSource:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    .line 10
    iput v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    .line 11
    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    .line 10
    iput v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    .line 11
    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    .line 34
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;-><init>(Landroid/os/Parcel;)V

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
    .locals 2
    .parameter "source"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->mediaID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->ci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelDuokanVideoInfo;->preferSource:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    return-void
.end method
