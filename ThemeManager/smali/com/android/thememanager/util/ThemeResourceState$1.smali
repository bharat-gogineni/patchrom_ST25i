.class final Lcom/android/thememanager/util/ThemeResourceState$1;
.super Ljava/lang/Object;
.source "ThemeResourceState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/util/ThemeResourceState;
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
        "Lcom/android/thememanager/util/ThemeResourceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/thememanager/util/ThemeResourceState;
    .locals 1
    .parameter "source"

    .prologue
    .line 67
    new-instance v0, Lcom/android/thememanager/util/ThemeResourceState;

    invoke-direct {v0}, Lcom/android/thememanager/util/ThemeResourceState;-><init>()V

    .line 68
    .local v0, ret:Lcom/android/thememanager/util/ThemeResourceState;
    invoke-virtual {v0, p1}, Lcom/android/thememanager/util/ThemeResourceState;->readDataFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/thememanager/util/ThemeResourceState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/thememanager/util/ThemeResourceState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/thememanager/util/ThemeResourceState;
    .locals 1
    .parameter "size"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/thememanager/util/ThemeResourceState$1;->newArray(I)[Lcom/android/thememanager/util/ThemeResourceState;

    move-result-object v0

    return-object v0
.end method
