.class public Lcom/miui/gallery/photoeditor/filters/DoodleFilter;
.super Lcom/miui/gallery/photoeditor/filters/Filter;
.source "DoodleFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/DoodleFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final doodles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/gallery/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    invoke-static {v0}, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/filters/Filter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addDoodle(Lcom/miui/gallery/photoeditor/actions/Doodle;)V
    .locals 1
    .parameter "doodle"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public process(Lcom/miui/gallery/photoeditor/Photo;Lcom/miui/gallery/photoeditor/Photo;)V
    .locals 13
    .parameter "src"
    .parameter "dst"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v8

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v6, matrix:Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v12, v12, v11, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v8, v9, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 64
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 65
    .local v3, drawingPath:Landroid/graphics/Path;
    invoke-static {}, Lcom/miui/gallery/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 66
    .local v7, paint:Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/photoeditor/actions/Doodle;

    .line 67
    .local v2, doodle:Lcom/miui/gallery/photoeditor/actions/Doodle;
    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/actions/Doodle;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    invoke-virtual {v2, v6, v3}, Lcom/miui/gallery/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 69
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 72
    .end local v2           #doodle:Lcom/miui/gallery/photoeditor/actions/Doodle;
    :cond_0
    const-string v8, "android.media.effect.effects.BitmapOverlayEffect"

    invoke-virtual {p0, v8}, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v4

    .line 73
    .local v4, effect:Landroid/media/effect/Effect;
    const-string v8, "bitmap"

    invoke-virtual {v4, v8, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v8

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v9

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v10

    invoke-virtual {p2}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 75
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 89
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    const-class v0, Lcom/miui/gallery/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/Doodle;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public setDoodledInPhotoBounds()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->validate()V

    .line 49
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/Doodle;

    .line 81
    .local v0, doodle:Lcom/miui/gallery/photoeditor/actions/Doodle;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 83
    .end local v0           #doodle:Lcom/miui/gallery/photoeditor/actions/Doodle;
    :cond_0
    return-void
.end method
