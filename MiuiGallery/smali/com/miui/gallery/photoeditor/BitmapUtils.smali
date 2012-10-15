.class public Lcom/miui/gallery/photoeditor/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final IMAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/photoeditor/BitmapUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"

    .prologue
    const/4 v9, 0x0

    .line 61
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 65
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {p3, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 82
    .local v3, paint:Landroid/graphics/Paint;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, p1, p3

    add-int v7, p2, p4

    invoke-direct {v5, p1, p2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    .local v5, srcBounds:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-direct {v2, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    .local v2, dstBounds:Landroid/graphics/RectF;
    invoke-virtual {v1, p0, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 88
    return-object v0

    .line 69
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #dstBounds:Landroid/graphics/RectF;
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v5           #srcBounds:Landroid/graphics/Rect;
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {p5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 71
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    iget v6, v4, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    invoke-virtual {v1, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 77
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 78
    .restart local v3       #paint:Landroid/graphics/Paint;
    invoke-virtual {p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0
.end method

.method private decodeBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 134
    const/4 v10, 0x0

    .line 135
    .local v10, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 139
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/photoeditor/BitmapUtils;->getBitmapBounds(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v7

    .line 140
    .local v7, bounds:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int v2, v2, p2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int v3, v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 141
    .local v12, sampleSize:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int v2, v2, p3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int v3, v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 144
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 148
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 149
    const/4 v2, 0x0

    invoke-static {v10, v2, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 157
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #sampleSize:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    .line 158
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 159
    .local v8, copy:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    move-object v1, v8

    .line 163
    .end local v8           #copy:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v1, :cond_1

    .line 165
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 167
    .local v13, scale:F
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 169
    const/high16 v2, 0x3f80

    cmpg-float v2, v13, v2

    if-gez v2, :cond_1

    .line 170
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 171
    .local v6, m:Landroid/graphics/Matrix;
    invoke-virtual {v6, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 172
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/photoeditor/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 174
    .local v14, transformed:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v13           #scale:F
    .end local v14           #transformed:Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 150
    :catch_0
    move-exception v9

    .line 151
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v2

    :cond_1
    move-object v14, v1

    .line 178
    goto :goto_1
.end method

.method private getBitmapBounds(Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 5
    .parameter "uri"

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 96
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 101
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 102
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 109
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, orientation:I
    const/4 v6, 0x0

    .line 116
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/photoeditor/BitmapUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 123
    :cond_0
    if-eqz v6, :cond_1

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    :goto_0
    return v7

    .line 120
    :catch_0
    move-exception v0

    .line 123
    if-eqz v6, :cond_1

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/photoeditor/BitmapUtils;->decodeBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/BitmapUtils;->getOrientation(Landroid/net/Uri;)I

    move-result v6

    .line 190
    .local v6, orientation:I
    if-eqz v6, :cond_0

    .line 191
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v2, v6

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/photoeditor/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 195
    .local v7, transformed:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v6           #orientation:I
    .end local v7           #transformed:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    :cond_0
    move-object v7, v0

    goto :goto_0
.end method
