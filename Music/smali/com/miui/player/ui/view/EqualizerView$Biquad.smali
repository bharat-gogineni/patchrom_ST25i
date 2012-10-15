.class Lcom/miui/player/ui/view/EqualizerView$Biquad;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/EqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Biquad"
.end annotation


# instance fields
.field private a0:Lcom/miui/player/ui/view/EqualizerView$Complex;

.field private a1:Lcom/miui/player/ui/view/EqualizerView$Complex;

.field private a2:Lcom/miui/player/ui/view/EqualizerView$Complex;

.field private b0:Lcom/miui/player/ui/view/EqualizerView$Complex;

.field private b1:Lcom/miui/player/ui/view/EqualizerView$Complex;

.field private b2:Lcom/miui/player/ui/view/EqualizerView$Complex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluateTransfer(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;
    .locals 5
    .parameter "z"

    .prologue
    .line 185
    invoke-virtual {p1, p1}, Lcom/miui/player/ui/view/EqualizerView$Complex;->mul(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v2

    .line 186
    .local v2, zSquared:Lcom/miui/player/ui/view/EqualizerView$Complex;
    iget-object v3, p0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->b0:Lcom/miui/player/ui/view/EqualizerView$Complex;

    iget-object v4, p0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->b1:Lcom/miui/player/ui/view/EqualizerView$Complex;

    invoke-virtual {v4, p1}, Lcom/miui/player/ui/view/EqualizerView$Complex;->div(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/EqualizerView$Complex;->add(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->b2:Lcom/miui/player/ui/view/EqualizerView$Complex;

    invoke-virtual {v4, v2}, Lcom/miui/player/ui/view/EqualizerView$Complex;->div(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/EqualizerView$Complex;->add(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v1

    .line 187
    .local v1, nom:Lcom/miui/player/ui/view/EqualizerView$Complex;
    iget-object v3, p0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->a0:Lcom/miui/player/ui/view/EqualizerView$Complex;

    iget-object v4, p0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->a1:Lcom/miui/player/ui/view/EqualizerView$Complex;

    invoke-virtual {v4, p1}, Lcom/miui/player/ui/view/EqualizerView$Complex;->div(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/EqualizerView$Complex;->add(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->a2:Lcom/miui/player/ui/view/EqualizerView$Complex;

    invoke-virtual {v4, v2}, Lcom/miui/player/ui/view/EqualizerView$Complex;->div(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/EqualizerView$Complex;->add(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v0

    .line 188
    .local v0, den:Lcom/miui/player/ui/view/EqualizerView$Complex;
    invoke-virtual {v1, v0}, Lcom/miui/player/ui/view/EqualizerView$Complex;->div(Lcom/miui/player/ui/view/EqualizerView$Complex;)Lcom/miui/player/ui/view/EqualizerView$Complex;

    move-result-object v3

    return-object v3
.end method

.method protected setHighShelf(FFFF)V
    .locals 16
    .parameter "centerFrequency"
    .parameter "samplingFrequency"
    .parameter "dbGain"
    .parameter "slope"

    .prologue
    .line 172
    const-wide v7, 0x401921fb54442d18L

    move/from16 v0, p1

    float-to-double v9, v0

    mul-double/2addr v7, v9

    move/from16 v0, p2

    float-to-double v9, v0

    div-double v5, v7, v9

    .line 173
    .local v5, w0:D
    const-wide/high16 v7, 0x4024

    const/high16 v9, 0x4220

    div-float v9, p3, v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 174
    .local v1, A:D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0

    div-double/2addr v9, v1

    add-double/2addr v9, v1

    const/high16 v11, 0x3f80

    div-float v11, v11, p4

    const/high16 v12, 0x3f80

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v3, v7, v9

    .line 176
    .local v3, alpha:D
    new-instance v7, Lcom/miui/player/ui/view/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    add-double/2addr v8, v10

    mul-double/2addr v8, v1

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->b0:Lcom/miui/player/ui/view/EqualizerView$Complex;

    .line 177
    new-instance v7, Lcom/miui/player/ui/view/EqualizerView$Complex;

    const-wide/high16 v8, -0x4000

    mul-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    const-wide/high16 v12, 0x3ff0

    add-double/2addr v12, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->b1:Lcom/miui/player/ui/view/EqualizerView$Complex;

    .line 178
    new-instance v7, Lcom/miui/player/ui/view/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    sub-double/2addr v8, v10

    mul-double/2addr v8, v1

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->b2:Lcom/miui/player/ui/view/EqualizerView$Complex;

    .line 179
    new-instance v7, Lcom/miui/player/ui/view/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    add-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->a0:Lcom/miui/player/ui/view/EqualizerView$Complex;

    .line 180
    new-instance v7, Lcom/miui/player/ui/view/EqualizerView$Complex;

    const-wide/high16 v8, 0x4000

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    const-wide/high16 v12, 0x3ff0

    add-double/2addr v12, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->a1:Lcom/miui/player/ui/view/EqualizerView$Complex;

    .line 181
    new-instance v7, Lcom/miui/player/ui/view/EqualizerView$Complex;

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v8, v1

    const-wide/high16 v10, 0x3ff0

    sub-double v10, v1, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double/2addr v10, v3

    sub-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/view/EqualizerView$Complex;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/miui/player/ui/view/EqualizerView$Biquad;->a2:Lcom/miui/player/ui/view/EqualizerView$Complex;

    .line 182
    return-void
.end method
