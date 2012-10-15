.class public Lcom/miui/gallery/ui/StringTexture;
.super Lcom/miui/gallery/ui/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private final mPaint:Landroid/text/TextPaint;

.field private final mSegments:[Lcom/miui/gallery/ui/StringTextureSegment;


# direct methods
.method private constructor <init>([Lcom/miui/gallery/ui/StringTextureSegment;Landroid/text/TextPaint;II)V
    .locals 0
    .parameter "segments"
    .parameter "paint"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    invoke-direct {p0, p3, p4}, Lcom/miui/gallery/ui/CanvasTexture;-><init>(II)V

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/ui/StringTexture;->mSegments:[Lcom/miui/gallery/ui/StringTextureSegment;

    .line 48
    iput-object p2, p0, Lcom/miui/gallery/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 49
    return-void
.end method

.method private static getDefaultPaint()Landroid/text/TextPaint;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 53
    .local v0, paint:Landroid/text/TextPaint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 54
    const/high16 v1, 0x4000

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 55
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/miui/gallery/ui/StringTexture;
    .locals 2
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/gallery/ui/StringTexture;->getDefaultPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIILandroid/text/TextPaint;)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/miui/gallery/ui/StringTexture;
    .locals 6
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "lengthLimit"
    .parameter "isBold"

    .prologue
    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZLjava/lang/String;)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZLjava/lang/String;)Lcom/miui/gallery/ui/StringTexture;
    .locals 4
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "lengthLimit"
    .parameter "isBold"
    .parameter "countText"

    .prologue
    .line 77
    invoke-static {}, Lcom/miui/gallery/ui/StringTexture;->getDefaultPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 79
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 80
    if-eqz p4, :cond_0

    .line 81
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, countWidth:F
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 86
    invoke-virtual {v1, p5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 90
    :cond_1
    sub-float v2, p3, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/miui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3, v1}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIILandroid/text/TextPaint;)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v2

    return-object v2
.end method

.method private static newInstance(Ljava/lang/String;FIILandroid/text/TextPaint;)Lcom/miui/gallery/ui/StringTexture;
    .locals 3
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "leftMargin"
    .parameter "paint"

    .prologue
    .line 98
    new-instance v0, Lcom/miui/gallery/ui/StringTextureText;

    invoke-direct {v0}, Lcom/miui/gallery/ui/StringTextureText;-><init>()V

    .line 99
    .local v0, textInfo:Lcom/miui/gallery/ui/StringTextureText;
    iput p2, v0, Lcom/miui/gallery/ui/StringTextureText;->color:I

    .line 100
    iput-object p0, v0, Lcom/miui/gallery/ui/StringTextureText;->text:Ljava/lang/String;

    .line 101
    iput p1, v0, Lcom/miui/gallery/ui/StringTextureText;->textSize:F

    .line 102
    iput p3, v0, Lcom/miui/gallery/ui/StringTextureText;->leftMargin:I

    .line 103
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/gallery/ui/StringTextureText;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1, p4}, Lcom/miui/gallery/ui/StringTexture;->newInstance([Lcom/miui/gallery/ui/StringTextureText;Landroid/text/TextPaint;)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method private static newInstance([Lcom/miui/gallery/ui/StringTextureText;Landroid/text/TextPaint;)Lcom/miui/gallery/ui/StringTexture;
    .locals 9
    .parameter "textInfos"
    .parameter "paint"

    .prologue
    .line 111
    const/4 v5, 0x0

    .line 112
    .local v5, width:I
    const/4 v0, 0x0

    .line 114
    .local v0, height:I
    array-length v7, p0

    new-array v3, v7, [Lcom/miui/gallery/ui/StringTextureSegment;

    .line 117
    .local v3, segments:[Lcom/miui/gallery/ui/StringTextureSegment;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_0

    .line 118
    aget-object v4, p0, v1

    .line 119
    .local v4, textInfo:Lcom/miui/gallery/ui/StringTextureText;
    new-instance v2, Lcom/miui/gallery/ui/StringTextureSegment;

    invoke-direct {v2}, Lcom/miui/gallery/ui/StringTextureSegment;-><init>()V

    aput-object v2, v3, v1

    .line 120
    .local v2, segment:Lcom/miui/gallery/ui/StringTextureSegment;
    iput-object v4, v2, Lcom/miui/gallery/ui/StringTextureSegment;->textInfo:Lcom/miui/gallery/ui/StringTextureText;

    .line 122
    iget v7, v4, Lcom/miui/gallery/ui/StringTextureText;->textSize:F

    invoke-virtual {p1, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 123
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/gallery/ui/StringTextureSegment;->metrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 126
    iget-object v7, v4, Lcom/miui/gallery/ui/StringTextureText;->text:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 127
    .local v6, widthText:I
    iget v7, v4, Lcom/miui/gallery/ui/StringTextureText;->leftMargin:I

    add-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 128
    iput v6, v2, Lcom/miui/gallery/ui/StringTextureSegment;->width:I

    .line 131
    iget-object v7, v2, Lcom/miui/gallery/ui/StringTextureSegment;->metrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v8, v2, Lcom/miui/gallery/ui/StringTextureSegment;->metrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v2           #segment:Lcom/miui/gallery/ui/StringTextureSegment;
    .end local v4           #textInfo:Lcom/miui/gallery/ui/StringTextureText;
    .end local v6           #widthText:I
    :cond_0
    if-gtz v5, :cond_1

    const/4 v5, 0x1

    .line 136
    :cond_1
    if-gtz v0, :cond_2

    const/4 v0, 0x1

    .line 138
    :cond_2
    new-instance v7, Lcom/miui/gallery/ui/StringTexture;

    invoke-direct {v7, v3, p1, v5, v0}, Lcom/miui/gallery/ui/StringTexture;-><init>([Lcom/miui/gallery/ui/StringTextureSegment;Landroid/text/TextPaint;II)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/CanvasTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/ui/CanvasTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/CanvasTexture;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/CanvasTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "canvas"
    .parameter "backing"

    .prologue
    const/4 v8, 0x0

    .line 164
    iget-object v5, p0, Lcom/miui/gallery/ui/StringTexture;->mSegments:[Lcom/miui/gallery/ui/StringTextureSegment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/ui/StringTexture;->mSegments:[Lcom/miui/gallery/ui/StringTextureSegment;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 183
    :cond_0
    return-void

    .line 168
    :cond_1
    const/4 v4, 0x0

    .line 169
    .local v4, x:I
    iget-object v0, p0, Lcom/miui/gallery/ui/StringTexture;->mSegments:[Lcom/miui/gallery/ui/StringTextureSegment;

    .local v0, arr$:[Lcom/miui/gallery/ui/StringTextureSegment;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 171
    .local v3, segment:Lcom/miui/gallery/ui/StringTextureSegment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    iget-object v5, p0, Lcom/miui/gallery/ui/StringTexture;->mSegments:[Lcom/miui/gallery/ui/StringTextureSegment;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/miui/gallery/ui/StringTextureSegment;->metrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    iget-object v5, v3, Lcom/miui/gallery/ui/StringTextureSegment;->textInfo:Lcom/miui/gallery/ui/StringTextureText;

    iget v5, v5, Lcom/miui/gallery/ui/StringTextureText;->leftMargin:I

    add-int/2addr v4, v5

    .line 174
    iget-object v5, p0, Lcom/miui/gallery/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    iget-object v6, v3, Lcom/miui/gallery/ui/StringTextureSegment;->textInfo:Lcom/miui/gallery/ui/StringTextureText;

    iget v6, v6, Lcom/miui/gallery/ui/StringTextureText;->textSize:F

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 175
    iget-object v5, p0, Lcom/miui/gallery/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    iget-object v6, v3, Lcom/miui/gallery/ui/StringTextureSegment;->textInfo:Lcom/miui/gallery/ui/StringTextureText;

    iget v6, v6, Lcom/miui/gallery/ui/StringTextureText;->color:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 177
    iget-object v5, v3, Lcom/miui/gallery/ui/StringTextureSegment;->textInfo:Lcom/miui/gallery/ui/StringTextureText;

    iget-object v5, v5, Lcom/miui/gallery/ui/StringTextureText;->text:Ljava/lang/String;

    int-to-float v6, v4

    iget-object v7, p0, Lcom/miui/gallery/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v8, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    iget v5, v3, Lcom/miui/gallery/ui/StringTextureSegment;->width:I

    add-int/2addr v4, v5

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/CanvasTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/CanvasTexture;->updateContent(Lcom/miui/gallery/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/ui/CanvasTexture;->yield()V

    return-void
.end method
