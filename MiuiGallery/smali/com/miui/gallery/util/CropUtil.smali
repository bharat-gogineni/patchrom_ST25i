.class public Lcom/miui/gallery/util/CropUtil;
.super Ljava/lang/Object;
.source "CropUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    const/4 v9, 0x0

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    .line 127
    :cond_0
    const/4 v2, 0x0

    .line 129
    .local v2, ret:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 130
    .local v6, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 132
    .local v4, srcHeight:I
    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    const/4 v8, 0x1

    :goto_1
    const-string v10, "wrong dimension"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v9}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    int-to-float v8, v6

    int-to-float v9, v4

    div-float v5, v8, v9

    .line 134
    .local v5, srcRatio:F
    int-to-float v8, p1

    int-to-float v9, p2

    div-float v0, v8, v9

    .line 136
    .local v0, cropRatio:F
    const/4 v7, 0x0

    .line 137
    .local v7, widthSmaller:Z
    const/4 v1, 0x0

    .line 138
    .local v1, minSrcSize:I
    cmpg-float v8, v5, v0

    if-gez v8, :cond_2

    .line 139
    const/4 v7, 0x1

    .line 140
    move v1, v6

    .line 146
    :goto_2
    const/4 v3, 0x0

    .line 148
    .local v3, scale:F
    if-eqz v7, :cond_3

    .line 149
    int-to-float v8, p1

    int-to-float v9, v1

    div-float v3, v8, v9

    .line 155
    :goto_3
    const/high16 v8, 0x3f80

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 156
    invoke-static {v7, v3, p0, p1, p2}, Lcom/miui/gallery/util/CropUtil;->cropLargeBitmap(ZFLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .end local v0           #cropRatio:F
    .end local v1           #minSrcSize:I
    .end local v3           #scale:F
    .end local v5           #srcRatio:F
    .end local v7           #widthSmaller:Z
    :cond_1
    move v8, v9

    .line 132
    goto :goto_1

    .line 142
    .restart local v0       #cropRatio:F
    .restart local v1       #minSrcSize:I
    .restart local v5       #srcRatio:F
    .restart local v7       #widthSmaller:Z
    :cond_2
    const/4 v7, 0x0

    .line 143
    move v1, v4

    goto :goto_2

    .line 151
    .restart local v3       #scale:F
    :cond_3
    int-to-float v8, p2

    int-to-float v9, v1

    div-float v3, v8, v9

    goto :goto_3

    .line 159
    :cond_4
    invoke-static {v7, v3, p0, p1, p2}, Lcom/miui/gallery/util/CropUtil;->cropSmallBitmap(ZFLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static cropLargeBitmap(ZFLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "widthSmaller"
    .parameter "scale"
    .parameter "bitmap"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    const/4 v5, 0x0

    .line 48
    const/4 v4, 0x1

    invoke-static {p2, p1, v4}, Lcom/miui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 51
    .local v3, tmpBitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 52
    .local v1, realCropX:I
    const/4 v2, 0x0

    .line 54
    .local v2, realCropY:I
    if-eqz p0, :cond_3

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt p4, v4, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p4

    div-int/lit8 v2, v4, 0x2

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v0, v5, v2, v4, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 70
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_1
    if-eq v3, p2, :cond_2

    .line 75
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_2
    return-object v3

    .line 63
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt p3, v4, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, p3

    div-int/lit8 v1, v4, 0x2

    .line 65
    invoke-static {v0, v1, v5, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private static cropSmallBitmap(ZFLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "widthSmaller"
    .parameter "scale"
    .parameter "bitmap"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 13
    move-object v5, p2

    .line 15
    .local v5, tmpBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 16
    .local v3, realCropX:I
    const/4 v4, 0x0

    .line 19
    .local v4, realCropY:I
    const/4 v0, 0x0

    .line 20
    .local v0, fitScreenHeight:I
    const/4 v1, 0x0

    .line 21
    .local v1, fitScreenWidth:I
    const/4 v2, 0x0

    .line 23
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 25
    int-to-float v6, p4

    div-float/2addr v6, p1

    float-to-int v0, v6

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v6, v0, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v4, v6, 0x2

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v8, v4, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 41
    :goto_1
    invoke-static {v5, p1, v7}, Lcom/miui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    return-object v2

    :cond_0
    move v6, v8

    .line 26
    goto :goto_0

    .line 32
    :cond_1
    int-to-float v6, p3

    div-float/2addr v6, p1

    float-to-int v1, v6

    .line 34
    if-nez v1, :cond_2

    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v3, v6, 0x2

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p2, v3, v8, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method public static fitScreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "originalWidth"
    .parameter "originalHeight"

    .prologue
    .line 82
    if-nez p0, :cond_1

    .line 83
    const/4 p0, 0x0

    .line 120
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 86
    .restart local p0
    :cond_1
    const/4 v3, 0x0

    .line 87
    .local v3, cropWidth:I
    const/4 v2, 0x0

    .line 89
    .local v2, cropHeight:I
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenWidthPixel()I

    move-result v7

    .line 90
    .local v7, screenWidth:I
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenHeightPixel()I

    move-result v5

    .line 92
    .local v5, screenHeight:I
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p1, v7, :cond_3

    if-ge p2, v5, :cond_3

    .line 95
    move v3, p1

    .line 96
    move v2, p2

    .line 115
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 119
    :cond_2
    invoke-static {p0, v3, v2}, Lcom/miui/gallery/util/CropUtil;->cropImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 120
    goto :goto_0

    .line 99
    :cond_3
    int-to-float v8, v7

    int-to-float v9, v5

    div-float v6, v8, v9

    .line 100
    .local v6, screenRatio:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 102
    .local v0, bitmapRatio:F
    cmpg-float v8, v0, v6

    if-gez v8, :cond_4

    const/4 v1, 0x1

    .line 103
    .local v1, bitmapWidthSmaller:Z
    :goto_2
    const/4 v4, 0x0

    .line 105
    .local v4, ratio:F
    if-eqz v1, :cond_5

    .line 106
    int-to-float v8, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 111
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1

    .line 102
    .end local v1           #bitmapWidthSmaller:Z
    .end local v4           #ratio:F
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 108
    .restart local v1       #bitmapWidthSmaller:Z
    .restart local v4       #ratio:F
    :cond_5
    int-to-float v8, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    goto :goto_3
.end method
