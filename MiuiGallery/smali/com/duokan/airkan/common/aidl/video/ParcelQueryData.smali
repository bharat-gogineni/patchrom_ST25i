.class public Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;
.super Ljava/lang/Object;
.source "ParcelQueryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ci:I

.field public mediaid:J

.field public pausing:Z

.field public playing:Z

.field public playlength:I

.field public playsource:B

.field public position:I

.field public queryci:B

.field public querylen:B

.field public querymediaid:B

.field public queryplaystatus:B

.field public querypos:B

.field public queryresolution:B

.field public querysource:B

.field public querytitle:B

.field public queryurl:B

.field public queryvolume:B

.field public resolution:B

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public volume:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querylen:B

    .line 8
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querypos:B

    .line 9
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querytitle:B

    .line 10
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryurl:B

    .line 11
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryplaystatus:B

    .line 12
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryresolution:B

    .line 13
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querysource:B

    .line 14
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querymediaid:B

    .line 15
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryci:B

    .line 16
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryvolume:B

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querylen:B

    .line 8
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querypos:B

    .line 9
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querytitle:B

    .line 10
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryurl:B

    .line 11
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryplaystatus:B

    .line 12
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryresolution:B

    .line 13
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querysource:B

    .line 14
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querymediaid:B

    .line 15
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryci:B

    .line 16
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryvolume:B

    .line 47
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelQueryData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querylen:B

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querypos:B

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querytitle:B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryurl:B

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryplaystatus:B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryresolution:B

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querysource:B

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querymediaid:B

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryci:B

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryvolume:B

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playlength:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->position:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->title:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->url:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 66
    .local v1, play:B
    if-nez v1, :cond_0

    .line 67
    iput-boolean v3, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playing:Z

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 72
    .local v0, pause:B
    if-nez v0, :cond_1

    .line 73
    iput-boolean v3, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->pausing:Z

    .line 77
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->resolution:B

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playsource:B

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->mediaid:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->ci:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->volume:B

    .line 82
    return-void

    .line 69
    .end local v0           #pause:B
    :cond_0
    iput-boolean v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playing:Z

    goto :goto_0

    .line 75
    .restart local v0       #pause:B
    :cond_1
    iput-boolean v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->pausing:Z

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querylen:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querypos:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querytitle:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryurl:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryplaystatus:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryresolution:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querysource:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querymediaid:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryci:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-byte v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryvolume:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playlength:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->position:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-boolean v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playing:Z

    if-eqz v4, :cond_0

    move v1, v2

    .line 104
    .local v1, play:B
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-boolean v4, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->pausing:Z

    if-eqz v4, :cond_1

    move v0, v2

    .line 106
    .local v0, pause:B
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->resolution:B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playsource:B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-wide v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->mediaid:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->ci:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-byte v2, p0, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->volume:B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    return-void

    .end local v0           #pause:B
    .end local v1           #play:B
    :cond_0
    move v1, v3

    .line 103
    goto :goto_0

    .restart local v1       #play:B
    :cond_1
    move v0, v3

    .line 105
    goto :goto_1
.end method
