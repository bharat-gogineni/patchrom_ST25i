.class public Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
.super Ljava/lang/Object;
.source "AlbumDownloader.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/AlbumDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageItemInfoList"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlineimage/ImageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

.field private final mProviderType:I

.field private final mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList$1;

    invoke-direct {v0}, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList$1;-><init>()V

    sput-object v0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProviderType:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iput-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/miui/player/plugin/onlineimage/ImageProvider;)V
    .locals 1
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlineimage/ImageItemInfo;",
            ">;",
            "Lcom/miui/player/plugin/onlineimage/ImageProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlineimage/ImageItemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Lcom/miui/player/plugin/onlineimage/ImageProvider;->getImageSearchInfo()Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    .line 60
    invoke-interface {p2}, Lcom/miui/player/plugin/onlineimage/ImageProvider;->getType()I

    move-result v0

    iput v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProviderType:I

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProviderType:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getProvider(Landroid/content/Context;)Lcom/miui/player/plugin/onlineimage/ImageProvider;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProviderType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget v1, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProviderType:I

    invoke-static {p1, v0, v1}, Lcom/miui/player/network/AlbumDownloader;->createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 83
    iget v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mProviderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 85
    return-void
.end method
