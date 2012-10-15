.class public Lcom/xiaomi/common/util/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipRoundCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "radius"
    .parameter "borderColor"

    .prologue
    const/4 v8, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v2, 0x0

    .line 40
    :goto_0
    return-object v2

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 23
    .local v1, h:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 25
    .local v6, w:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 27
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 32
    .local v5, rectF:Landroid/graphics/RectF;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 34
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 37
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static recycleImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "bm"

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 50
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    .local v1, recycleBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static recycleImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "view"
    .parameter "exclude"

    .prologue
    .line 58
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {p0, v0}, Lcom/xiaomi/common/util/BitmapHelper;->recycleImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 60
    return-void

    .line 58
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transferMode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Xfermode;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "src"
    .parameter "mask"
    .parameter "xfermode"

    .prologue
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 71
    .local v12, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 72
    .local v5, height:I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v5, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    .local v2, dst:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 78
    .local v11, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 80
    .local v10, srcHeight:I
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 83
    if-lt v12, v11, :cond_0

    if-ge v5, v10, :cond_1

    .line 84
    :cond_0
    int-to-float v13, v12

    int-to-float v14, v11

    div-float v8, v13, v14

    .line 85
    .local v8, radioX:F
    int-to-float v13, v5

    int-to-float v14, v10

    div-float v9, v13, v14

    .line 86
    .local v9, radioY:F
    const/high16 v7, 0x3f80

    .line 87
    .local v7, radio:F
    const/4 v3, 0x0

    .line 88
    .local v3, dx:F
    const/4 v4, 0x0

    .line 90
    .local v4, dy:F
    cmpl-float v13, v8, v9

    if-lez v13, :cond_3

    .line 91
    move v7, v8

    .line 92
    int-to-float v13, v5

    div-float/2addr v13, v8

    int-to-float v14, v10

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float v4, v13, v14

    .line 98
    :goto_0
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 99
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v7           #radio:F
    .end local v8           #radioX:F
    .end local v9           #radioY:F
    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, p0, v13, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    if-eqz p2, :cond_2

    .line 105
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v13, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    :cond_2
    return-object v2

    .line 94
    .restart local v3       #dx:F
    .restart local v4       #dy:F
    .restart local v7       #radio:F
    .restart local v8       #radioX:F
    .restart local v9       #radioY:F
    :cond_3
    move v7, v9

    .line 95
    int-to-float v13, v12

    div-float/2addr v13, v8

    int-to-float v14, v11

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float v3, v13, v14

    goto :goto_0
.end method
