.class public Lcom/miui/gallery/ui/EdgeView;
.super Lcom/miui/gallery/ui/GLView;
.source "EdgeView.java"


# static fields
.field private static mEffect:[Lcom/miui/gallery/ui/EdgeEffect;


# instance fields
.field private mMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 42
    const/16 v1, 0x40

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    .line 46
    sget-object v1, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    if-nez v1, :cond_0

    .line 47
    new-array v1, v3, [Lcom/miui/gallery/ui/EdgeEffect;

    sput-object v1, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 49
    sget-object v1, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    new-instance v2, Lcom/miui/gallery/ui/EdgeEffect;

    invoke-direct {v2, p1}, Lcom/miui/gallery/ui/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public onAbsorb(II)V
    .locals 1
    .parameter "velocity"
    .parameter "direction"

    .prologue
    .line 129
    sget-object v0, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/EdgeEffect;->onAbsorb(I)V

    .line 130
    sget-object v0, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/gallery/ui/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/ui/EdgeView;->invalidate()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 59
    :cond_0
    sub-int v8, p4, p2

    .line 60
    .local v8, w:I
    sub-int v6, p5, p3

    .line 61
    .local v6, h:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_2

    .line 62
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8, v6}, Lcom/miui/gallery/ui/EdgeEffect;->setSize(II)V

    .line 61
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 65
    :cond_1
    sget-object v0, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v0, v0, v7

    invoke-virtual {v0, v6, v8}, Lcom/miui/gallery/ui/EdgeEffect;->setSize(II)V

    goto :goto_2

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    const/high16 v2, 0x42b4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    const/4 v2, 0x0

    int-to-float v3, v6

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    int-to-float v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    const/high16 v2, 0x42b4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_0
.end method

.method public onPull(II)V
    .locals 4
    .parameter "offset"
    .parameter "direction"

    .prologue
    .line 106
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/EdgeView;->getWidth()I

    move-result v0

    .line 107
    .local v0, fullLength:I
    :goto_0
    sget-object v1, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v1, v1, p2

    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/EdgeEffect;->onPull(F)V

    .line 108
    sget-object v1, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/miui/gallery/ui/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/ui/EdgeView;->invalidate()V

    .line 111
    :cond_0
    return-void

    .line 106
    .end local v0           #fullLength:I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/EdgeView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, more:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 117
    sget-object v2, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/EdgeEffect;->onRelease()V

    .line 118
    sget-object v2, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v1, v2

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    :cond_1
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/miui/gallery/ui/EdgeView;->invalidate()V

    .line 123
    :cond_2
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x4

    .line 90
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, more:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 93
    invoke-interface {p1, v4}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 94
    iget-object v2, p0, Lcom/miui/gallery/ui/EdgeView;->mMatrix:[F

    mul-int/lit8 v3, v0, 0x10

    invoke-interface {p1, v2, v3}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 95
    sget-object v2, Lcom/miui/gallery/ui/EdgeView;->mEffect:[Lcom/miui/gallery/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/EdgeEffect;->draw(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 96
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/ui/EdgeView;->invalidate()V

    .line 101
    :cond_1
    return-void
.end method
