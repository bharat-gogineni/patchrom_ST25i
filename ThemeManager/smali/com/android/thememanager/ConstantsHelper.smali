.class public Lcom/android/thememanager/ConstantsHelper;
.super Ljava/lang/Object;
.source "ConstantsHelper.java"


# static fields
.field public static CURRENT_FORMAT_VERSION:I

.field public static CURRENT_PLATFORM_VERSION:I

.field private static minPlatformVersionMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static resourceTypeParameterMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1

    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 10
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    .line 12
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    .line 14
    sput v5, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    .line 16
    sput v6, Lcom/android/thememanager/ConstantsHelper;->CURRENT_FORMAT_VERSION:I

    .line 19
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-string v1, "Compound"

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-string v1, "FrameWork"

    invoke-virtual {v0, v9, v10, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x80

    const-string v3, "Mms"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2

    const-string v3, "DeskWallpaper"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4

    const-string v3, "LockScreenWallpaper"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x8

    const-string v3, "Icon"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x20

    const-string v3, "BootAnimation"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x40

    const-string v3, "BootAudio"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x100

    const-string v3, "RingtoneAudio"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x200

    const-string v3, "NotificationAudio"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x400

    const-string v3, "AlarmAudio"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x10

    const-string v3, "Font"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x800

    const-string v3, "Contact"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x1000

    const-string v3, "LockStyle"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2000

    const-string v3, "StatusBar"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4000

    const-string v3, "Launcher"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x8000

    const-string v3, "AudioEffect"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x10000

    const-string v3, "Clock"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x20000

    const-string v3, "PhotoFrame"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v10, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x8000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x10000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x20000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getMinPlatformVersion(J)I
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 65
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getResourceTypeParameter(J)Ljava/lang/String;
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 61
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
