.class public Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
.super Ljava/lang/Object;
.source "ParcelPhotoQueryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkavailability:B

.field public checkinghandle:S

.field public queryshow:B

.field public queryslidertype:B

.field public showinghandle:S

.field public slidertypecount:B

.field public status:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    .line 8
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 12
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    .line 13
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->slidertypecount:B

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    .line 8
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 12
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    .line 13
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->slidertypecount:B

    .line 34
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->readFormParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFormParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->showinghandle:S

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->status:B

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->slidertypecount:B

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryshow:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkavailability:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->showinghandle:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->status:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->queryslidertype:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->slidertypecount:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    return-void
.end method
