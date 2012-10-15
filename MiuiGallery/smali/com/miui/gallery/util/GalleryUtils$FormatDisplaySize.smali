.class public Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatDisplaySize"
.end annotation


# static fields
.field private static mDecimalFormater:Ljava/text/DecimalFormat;

.field private static oneG:I

.field private static oneK:I

.field private static oneM:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 898
    const/high16 v0, 0x4000

    sput v0, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneG:I

    .line 899
    const/high16 v0, 0x10

    sput v0, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneM:I

    .line 900
    const/16 v0, 0x400

    sput v0, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneK:I

    .line 901
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->mDecimalFormater:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplaySize(J)Ljava/lang/String;
    .locals 5
    .parameter "size"

    .prologue
    const-wide/16 v3, 0x0

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, showFloat:F
    sget v1, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneG:I

    int-to-long v1, v1

    div-long v1, p0, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 906
    long-to-float v1, p0

    sget v2, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneM:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->mDecimalFormater:Ljava/text/DecimalFormat;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "G"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 915
    :goto_0
    return-object v1

    .line 909
    :cond_0
    sget v1, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneM:I

    int-to-long v1, v1

    div-long v1, p0, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 910
    long-to-float v1, p0

    sget v2, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneM:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->mDecimalFormater:Ljava/text/DecimalFormat;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 914
    :cond_1
    long-to-float v1, p0

    sget v2, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->oneK:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->mDecimalFormater:Ljava/text/DecimalFormat;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
