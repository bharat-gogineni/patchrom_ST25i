.class public Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenMetrics"
.end annotation


# static fields
.field public static sDpiRatio:F

.field private static sScreenRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 131
    sput v1, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->sScreenRatio:F

    .line 132
    sput v1, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->sDpiRatio:F

    .line 136
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 138
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x4370

    div-float/2addr v1, v2

    sput v1, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->sDpiRatio:F

    .line 139
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    sput v1, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->sScreenRatio:F

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMetrics(I)I
    .locals 2
    .parameter "metric"

    .prologue
    .line 143
    int-to-float v0, p0

    sget v1, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->sScreenRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
