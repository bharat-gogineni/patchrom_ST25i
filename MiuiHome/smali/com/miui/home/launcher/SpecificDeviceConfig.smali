.class public Lcom/miui/home/launcher/SpecificDeviceConfig;
.super Ljava/lang/Object;
.source "SpecificDeviceConfig.java"


# static fields
.field private static mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    .line 27
    const-string v0, "maguro"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v0, "crespo"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAddSurfaceViewForFpsAccelerate()Z
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCellScreenNoneLayerInNormalMode()Z
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
