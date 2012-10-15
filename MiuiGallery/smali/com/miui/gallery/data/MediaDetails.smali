.class public Lcom/miui/gallery/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 157
    sget-object v0, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    sget-object v0, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    return-void
.end method

.method public static final decodeImageSize(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "uri"

    .prologue
    .line 174
    new-instance v0, Lmiui/util/InputStreamLoader;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 178
    .local v0, stream:Lmiui/util/InputStreamLoader;
    invoke-virtual {v0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/MediaDetails;->decodeImageSize(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    return-object v1
.end method

.method private static final decodeImageSize(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "is"

    .prologue
    const/4 v1, 0x0

    .line 182
    sget-object v0, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 183
    sget-object v0, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    const/4 v0, 0x0

    sget-object v1, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 186
    sget-object v0, Lcom/miui/gallery/data/MediaDetails;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public static final decodeImageSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/gallery/data/MediaDetails;->decodeImageSize(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final ensureWidthHeight(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;II)V
    .locals 6
    .parameter "details"
    .parameter "filePath"
    .parameter "widthCandidate"
    .parameter "heightCandidate"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    .line 204
    invoke-static {p0, v4}, Lcom/miui/gallery/data/MediaDetails;->isNonZero(Lcom/miui/gallery/data/MediaDetails;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, v5}, Lcom/miui/gallery/data/MediaDetails;->isNonZero(Lcom/miui/gallery/data/MediaDetails;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    :goto_0
    return-void

    .line 209
    :cond_0
    move v2, p2

    .line 210
    .local v2, width:I
    move v1, p3

    .line 211
    .local v1, height:I
    if-lez v2, :cond_1

    if-gtz v1, :cond_2

    .line 213
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/data/MediaDetails;->decodeImageSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 214
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_2

    .line 215
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 216
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 221
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V
    .locals 5
    .parameter "details"
    .parameter "filePath"

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v2, "Flash"

    const/16 v3, 0x66

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 229
    const-string v2, "ImageWidth"

    const/4 v3, 0x5

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 230
    const-string v2, "ImageLength"

    const/4 v3, 0x6

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 232
    const-string v2, "Make"

    const/16 v3, 0x64

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 233
    const-string v2, "Model"

    const/16 v3, 0x65

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 234
    const-string v2, "FNumber"

    const/16 v3, 0x69

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 235
    const-string v2, "ISOSpeedRatings"

    const/16 v3, 0x6c

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 236
    const-string v2, "WhiteBalance"

    const/16 v3, 0x68

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 238
    const-string v2, "ExposureTime"

    const/16 v3, 0x6b

    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 241
    const-string v2, "FocalLength"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setFocalLength(Lcom/miui/gallery/data/MediaDetails;D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaDetails"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isNonZero(Lcom/miui/gallery/data/MediaDetails;I)Z
    .locals 4
    .parameter "details"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, v:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static setExifData(Lcom/miui/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 1
    .parameter "details"
    .parameter "exif"
    .parameter "tag"
    .parameter "key"

    .prologue
    .line 133
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public static setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V
    .locals 2
    .parameter "details"
    .parameter "value"
    .parameter "key"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    const/16 v1, 0x66

    if-ne p2, v1, :cond_1

    .line 139
    new-instance v0, Lcom/miui/gallery/data/MediaDetails$FlashState;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/MediaDetails$FlashState;-><init>(I)V

    .line 141
    .local v0, state:Lcom/miui/gallery/data/MediaDetails$FlashState;
    invoke-virtual {p0, p2, v0}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 146
    .end local v0           #state:Lcom/miui/gallery/data/MediaDetails$FlashState;
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setFocalLength(Lcom/miui/gallery/data/MediaDetails;D)V
    .locals 3
    .parameter "details"
    .parameter "value"

    .prologue
    const/16 v2, 0x67

    .line 149
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 151
    const v0, 0x7f0d008e

    invoke-virtual {p0, v2, v0}, Lcom/miui/gallery/data/MediaDetails;->setUnit(II)V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
