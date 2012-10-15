.class Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/sound/RingerVolumeActivity$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x25be8c40f17ab62eL


# instance fields
.field private mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 315
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 316
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 0
    .parameter "volumeStore"

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 309
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method getVolumeStore(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 330
    :cond_0
    new-array v1, p1, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->mVolumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method
