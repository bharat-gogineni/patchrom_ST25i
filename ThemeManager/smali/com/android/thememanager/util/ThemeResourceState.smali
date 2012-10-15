.class public Lcom/android/thememanager/util/ThemeResourceState;
.super Lmiui/app/resourcebrowser/view/ResourceState;
.source "ThemeResourceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/thememanager/util/ThemeResourceState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

.field public componentFlags:J

.field public resourceType:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/thememanager/util/ThemeResourceState$1;

    invoke-direct {v0}, Lcom/android/thememanager/util/ThemeResourceState$1;-><init>()V

    sput-object v0, Lcom/android/thememanager/util/ThemeResourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/app/resourcebrowser/view/ResourceState;-><init>()V

    .line 18
    new-instance v0, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    invoke-direct {v0, p0}, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;-><init>(Lcom/android/thememanager/util/ThemeResourceState;)V

    iput-object v0, p0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    .line 23
    return-void
.end method

.method public constructor <init>(Lmiui/app/resourcebrowser/view/ResourceState;)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/view/ResourceState;-><init>(Lmiui/app/resourcebrowser/view/ResourceState;)V

    .line 18
    new-instance v0, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    invoke-direct {v0, p0}, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;-><init>(Lcom/android/thememanager/util/ThemeResourceState;)V

    iput-object v0, p0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected readDataFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/view/ResourceState;->readDataFromParcel(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    .line 49
    return-void
.end method

.method protected writeDataToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "dest"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/view/ResourceState;->writeDataToParcel(Landroid/os/Parcel;)V

    .line 40
    iget-wide v0, p0, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/thememanager/util/ThemeResourceState;->writeDataToParcel(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method
