.class final Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo$1;
.super Ljava/lang/Object;
.source "BaseTrackBrowserMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
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
        "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 141
    new-instance v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;

    invoke-direct {v0, p1}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 145
    new-array v0, p1, [Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo$1;->newArray(I)[Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;

    move-result-object v0

    return-object v0
.end method
