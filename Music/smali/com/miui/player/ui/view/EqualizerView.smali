.class public Lcom/miui/player/ui/view/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/EqualizerView$Complex;,
        Lcom/miui/player/ui/view/EqualizerView$Biquad;
    }
.end annotation


# static fields
.field private static final ALPHA_PARTITON:I = 0x5

.field public static final CURVE_RESOLUTION:F = 1.15f

.field private static final DEFAULT_CURVE_COLOR:I = 0xffae00

.field public static MAX_FREQ:I

.field public static MIN_FREQ:I

.field public static SAMPLING_RATE:I

.field public static SCALE:I

.field private static sMaxEqualizerRank:I

.field private static sMinEqualizerRank:I


# instance fields
.field private final mCurveColor:I

.field private final mCurvePaint:Landroid/graphics/Paint;

.field private final mCurveShadowColor:I

.field private final mCurveShadowRadius:F

.field private mHeight:I

.field private final mLevels:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 14
    const/16 v0, 0x14

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->MIN_FREQ:I

    .line 15
    const/16 v0, 0x4e20

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->MAX_FREQ:I

    .line 16
    const v0, 0xac44

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    .line 17
    const/16 v0, 0x64

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    .line 283
    sput v1, Lcom/miui/player/ui/view/EqualizerView;->sMinEqualizerRank:I

    .line 284
    sput v1, Lcom/miui/player/ui/view/EqualizerView;->sMaxEqualizerRank:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const v5, 0xffae00

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v1, 0x5

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    .line 36
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/view/EqualizerView;->setWillNotDraw(Z)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    sget-object v1, Lcom/miui/player/R$styleable;->EqualizerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveColor:I

    .line 41
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    .line 42
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    .line 49
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    .line 50
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    return-void

    .line 44
    :cond_0
    iput v5, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveColor:I

    .line 45
    iput v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    .line 46
    iput v3, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    goto :goto_0
.end method

.method public static getMaxRank(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 287
    sget v0, Lcom/miui/player/ui/view/EqualizerView;->sMinEqualizerRank:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->sMinEqualizerRank:I

    .line 291
    :cond_0
    sget v0, Lcom/miui/player/ui/view/EqualizerView;->sMinEqualizerRank:I

    return v0
.end method

.method public static getMinRank(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 295
    sget v0, Lcom/miui/player/ui/view/EqualizerView;->sMaxEqualizerRank:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->sMaxEqualizerRank:I

    .line 299
    :cond_0
    sget v0, Lcom/miui/player/ui/view/EqualizerView;->sMaxEqualizerRank:I

    return v0
.end method

.method private lin2dB(F)F
    .locals 4
    .parameter "rho"

    .prologue
    .line 162
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d3a

    goto :goto_0
.end method

.method private projectX(F)F
    .locals 10
    .parameter "freq"

    .prologue
    .line 149
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 150
    .local v4, pos:D
    sget v6, Lcom/miui/player/ui/view/EqualizerView;->MIN_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 151
    .local v2, minPos:D
    sget v6, Lcom/miui/player/ui/view/EqualizerView;->MAX_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 152
    .local v0, maxPos:D
    sub-double v6, v4, v2

    sub-double v8, v0, v2

    div-double v4, v6, v8

    .line 153
    double-to-float v6, v4

    return v6
.end method

.method private projectY(F)F
    .locals 4
    .parameter "dB"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/player/ui/view/EqualizerView;->getMinRank(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/player/ui/view/EqualizerView;->getMaxRank(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/player/ui/view/EqualizerView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/player/ui/view/EqualizerView;->getMinRank(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 158
    .local v0, pos:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    return v1
.end method

.method private setPanitAlpha(F)V
    .locals 4
    .parameter "percent"

    .prologue
    const/4 v3, 0x0

    .line 137
    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 138
    const p1, 0x3c23d70a

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    iget v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 146
    :cond_1
    return-void

    .line 139
    :cond_2
    const v0, 0x3d4ccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 140
    const p1, 0x3d4ccccd

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 78
    const/4 v3, 0x4

    new-array v9, v3, [Lcom/miui/player/ui/view/EqualizerView$Biquad;

    const/4 v3, 0x0

    new-instance v8, Lcom/miui/player/ui/view/EqualizerView$Biquad;

    invoke-direct {v8}, Lcom/miui/player/ui/view/EqualizerView$Biquad;-><init>()V

    aput-object v8, v9, v3

    const/4 v3, 0x1

    new-instance v8, Lcom/miui/player/ui/view/EqualizerView$Biquad;

    invoke-direct {v8}, Lcom/miui/player/ui/view/EqualizerView$Biquad;-><init>()V

    aput-object v8, v9, v3

    const/4 v3, 0x2

    new-instance v8, Lcom/miui/player/ui/view/EqualizerView$Biquad;

    invoke-direct {v8}, Lcom/miui/player/ui/view/EqualizerView$Biquad;-><init>()V

    aput-object v8, v9, v3

    const/4 v3, 0x3

    new-instance v8, Lcom/miui/player/ui/view/EqualizerView$Biquad;

    invoke-direct {v8}, Lcom/miui/player/ui/view/EqualizerView$Biquad;-><init>()V

    aput-object v8, v9, v3

    .line 89
    .local v9, biquads:[Lcom/miui/player/ui/view/EqualizerView$Biquad;
    const-wide/high16 v22, 0x4024

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    const/4 v8, 0x0

    aget v3, v3, v8

    const/high16 v8, 0x41a0

    div-float/2addr v3, v8

    float-to-double v0, v3

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v14, v0

    .line 90
    .local v14, gain:F
    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/high16 v8, 0x42fa

    sget v22, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    sub-float v23, v23, v24

    const/high16 v24, 0x3f80

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v3, v8, v0, v1, v2}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 91
    const/4 v3, 0x1

    aget-object v3, v9, v3

    const/high16 v8, 0x43fa

    sget v22, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    sub-float v23, v23, v24

    const/high16 v24, 0x3f80

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v3, v8, v0, v1, v2}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 92
    const/4 v3, 0x2

    aget-object v3, v9, v3

    const/high16 v8, 0x44fa

    sget v22, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    sub-float v23, v23, v24

    const/high16 v24, 0x3f80

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v3, v8, v0, v1, v2}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 93
    const/4 v3, 0x3

    aget-object v3, v9, v3

    const/high16 v8, 0x45fa

    sget v22, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v24, v24, v25

    sub-float v23, v23, v24

    const/high16 v24, 0x3f80

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v3, v8, v0, v1, v2}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 97
    const/high16 v4, -0x4080

    .line 98
    .local v4, oldx:F
    const/4 v5, 0x0

    .line 99
    .local v5, olddB:F
    sget v3, Lcom/miui/player/ui/view/EqualizerView;->MIN_FREQ:I

    int-to-float v3, v3

    const v8, 0x3f933333

    div-float v13, v3, v8

    .local v13, freq:F
    :goto_0
    sget v3, Lcom/miui/player/ui/view/EqualizerView;->MAX_FREQ:I

    int-to-float v3, v3

    const v8, 0x3f933333

    mul-float/2addr v3, v8

    cmpg-float v3, v13, v3

    if-gez v3, :cond_4

    .line 100
    sget v3, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    div-float v3, v13, v3

    const v8, 0x40490fdb

    mul-float/2addr v3, v8

    const/high16 v8, 0x4000

    mul-float v15, v3, v8

    .line 101
    .local v15, omega:F
    new-instance v16, Lcom/miui/player/ui/view/EqualizerView$Complex;

    float-to-double v0, v15

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v3, v0

    float-to-double v0, v15

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v8}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    .line 104
    .local v16, z:Lcom/miui/player/ui/view/EqualizerView$Complex;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/miui/player/ui/view/EqualizerView$Complex;->mul(F)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v17

    .line 105
    .local v17, z1:Lcom/miui/player/ui/view/EqualizerView$Complex;
    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v18

    .line 106
    .local v18, z2:Lcom/miui/player/ui/view/EqualizerView$Complex;
    const/4 v3, 0x1

    aget-object v3, v9, v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v19

    .line 107
    .local v19, z3:Lcom/miui/player/ui/view/EqualizerView$Complex;
    const/4 v3, 0x2

    aget-object v3, v9, v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v20

    .line 108
    .local v20, z4:Lcom/miui/player/ui/view/EqualizerView$Complex;
    const/4 v3, 0x3

    aget-object v3, v9, v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/view/EqualizerView$Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v21

    .line 111
    .local v21, z5:Lcom/miui/player/ui/view/EqualizerView$Complex;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/view/EqualizerView$Complex;->rho()F

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/ui/view/EqualizerView$Complex;->rho()F

    move-result v8

    mul-float/2addr v3, v8

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/ui/view/EqualizerView$Complex;->rho()F

    move-result v8

    mul-float/2addr v3, v8

    invoke-virtual/range {v20 .. v20}, Lcom/miui/player/ui/view/EqualizerView$Complex;->rho()F

    move-result v8

    mul-float/2addr v3, v8

    invoke-virtual/range {v21 .. v21}, Lcom/miui/player/ui/view/EqualizerView$Complex;->rho()F

    move-result v8

    mul-float/2addr v3, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/view/EqualizerView;->lin2dB(F)F

    move-result v10

    .line 112
    .local v10, dB:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/player/ui/view/EqualizerView;->projectY(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/player/ui/view/EqualizerView;->mHeight:I

    int-to-float v8, v8

    mul-float v7, v3, v8

    .line 113
    .local v7, newBb:F
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/miui/player/ui/view/EqualizerView;->projectX(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    int-to-float v8, v8

    mul-float v6, v3, v8

    .line 114
    .local v6, newx:F
    const/high16 v3, -0x4080

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v11, v3

    .line 116
    .local v11, edge:F
    cmpg-float v3, v4, v11

    if-gez v3, :cond_2

    .line 117
    div-float v3, v4, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/view/EqualizerView;->setPanitAlpha(F)V

    .line 129
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    .end local v11           #edge:F
    :cond_1
    move v4, v6

    .line 132
    move v5, v7

    .line 99
    const v3, 0x3f933333

    mul-float/2addr v13, v3

    goto/16 :goto_0

    .line 119
    .restart local v11       #edge:F
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    int-to-float v3, v3

    sub-float v12, v3, v4

    .line 120
    .local v12, f:F
    cmpl-float v3, v11, v12

    if-lez v3, :cond_3

    .line 121
    div-float v3, v12, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/player/ui/view/EqualizerView;->setPanitAlpha(F)V

    goto :goto_1

    .line 123
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    if-eqz v3, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 134
    .end local v6           #newx:F
    .end local v7           #newBb:F
    .end local v10           #dB:F
    .end local v11           #edge:F
    .end local v12           #f:F
    .end local v15           #omega:F
    .end local v16           #z:Lcom/miui/player/ui/view/EqualizerView$Complex;
    .end local v17           #z1:Lcom/miui/player/ui/view/EqualizerView$Complex;
    .end local v18           #z2:Lcom/miui/player/ui/view/EqualizerView$Complex;
    .end local v19           #z3:Lcom/miui/player/ui/view/EqualizerView$Complex;
    .end local v20           #z4:Lcom/miui/player/ui/view/EqualizerView$Complex;
    .end local v21           #z5:Lcom/miui/player/ui/view/EqualizerView$Complex;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 59
    sub-int v0, p4, p2

    iput v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    .line 60
    sub-int v0, p5, p3

    iput v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mHeight:I

    .line 61
    return-void
.end method

.method public setBand(II)V
    .locals 3
    .parameter "i"
    .parameter "value"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    int-to-float v1, p2

    sget v2, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 65
    invoke-virtual {p0}, Lcom/miui/player/ui/view/EqualizerView;->postInvalidate()V

    .line 66
    return-void
.end method

.method public setBands([I)V
    .locals 4
    .parameter "values"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    aget v2, p1, v0

    int-to-float v2, v2

    sget v3, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/EqualizerView;->postInvalidate()V

    .line 73
    return-void
.end method
