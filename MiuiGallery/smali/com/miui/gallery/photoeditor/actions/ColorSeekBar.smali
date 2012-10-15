.class Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;
.super Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;
.source "ColorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;
    }
.end annotation


# instance fields
.field private background:Landroid/graphics/Bitmap;

.field private final colors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    .line 53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setMax(I)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->getProgress()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;->onSizeChanged(IIII)V

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->background:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->background:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->background:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 71
    .local v8, paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->getThumbOffset()I

    move-result v9

    .line 75
    .local v9, radius:I
    int-to-float v1, v9

    .line 76
    .local v1, left:F
    sub-int v2, p1, v9

    int-to-float v3, v2

    .line 77
    .local v3, right:F
    div-int/lit8 v2, p2, 0x2

    int-to-float v6, v2

    .line 79
    .local v6, cy:F
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 80
    const/4 v2, 0x0

    int-to-float v4, p2

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    int-to-float v2, v9

    invoke-virtual {v0, v1, v6, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    int-to-float v2, v9

    invoke-virtual {v0, v3, v6, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 88
    sub-float v2, v3, v1

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v10, v2, v4

    .line 89
    .local v10, strip:F
    const/high16 v2, 0x4000

    div-float v2, v10, v2

    add-float v3, v1, v2

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    const/4 v2, 0x0

    int-to-float v4, p2

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    move v1, v3

    .line 93
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_1

    .line 94
    add-float v3, v1, v10

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    aget v2, v2, v7

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    const/4 v2, 0x0

    int-to-float v4, p2

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    move v1, v3

    .line 93
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/high16 v2, 0x4000

    div-float v2, v10, v2

    add-float v3, v1, v2

    .line 100
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/4 v2, 0x0

    int-to-float v4, p2

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->background:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .parameter "colorIndex"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setProgress(I)V

    .line 126
    return-void
.end method

.method public setOnColorChangeListener(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 107
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;-><init>(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    goto :goto_0
.end method
