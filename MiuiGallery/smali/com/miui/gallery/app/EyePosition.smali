.class public Lcom/miui/gallery/app/EyePosition;
.super Ljava/lang/Object;
.source "EyePosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/EyePosition$1;,
        Lcom/miui/gallery/app/EyePosition$PositionListener;,
        Lcom/miui/gallery/app/EyePosition$EyePositionListener;
    }
.end annotation


# static fields
.field private static final USER_ANGEL:D

.field private static final USER_ANGEL_COS:F

.field private static final USER_ANGEL_SIN:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mGyroscopeCountdown:I

.field private final mLimit:F

.field private mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

.field private mPositionListener:Lcom/miui/gallery/app/EyePosition$PositionListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mStartTime:J

.field private final mUserDistance:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/high16 v0, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL:D

    .line 45
    sget-wide v0, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL_COS:F

    .line 46
    sget-wide v0, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL_SIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/app/EyePosition$EyePositionListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/gallery/app/EyePosition;->mStartTime:J

    .line 65
    new-instance v1, Lcom/miui/gallery/app/EyePosition$PositionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/EyePosition$PositionListener;-><init>(Lcom/miui/gallery/app/EyePosition;Lcom/miui/gallery/app/EyePosition$1;)V

    iput-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mPositionListener:Lcom/miui/gallery/app/EyePosition$PositionListener;

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mGyroscopeCountdown:I

    .line 70
    iput-object p1, p0, Lcom/miui/gallery/app/EyePosition;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/miui/gallery/app/EyePosition;->mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

    .line 72
    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    .line 73
    iget v1, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    .local v0, wManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mDisplay:Landroid/view/Display;

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/EyePosition;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/EyePosition;->onGyroscopeChanged(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/EyePosition;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/EyePosition;->onAccelerometerChanged(FFF)V

    return-void
.end method

.method private onAccelerometerChanged(FFF)V
    .locals 15
    .parameter "gx"
    .parameter "gy"
    .parameter "gz"

    .prologue
    .line 114
    move/from16 v8, p1

    .local v8, x:F
    move/from16 v9, p2

    .local v9, y:F
    move/from16 v10, p3

    .line 116
    .local v10, z:F
    iget-object v11, p0, Lcom/miui/gallery/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 122
    :goto_0
    mul-float v11, v8, v8

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    mul-float v12, v10, v10

    add-float v4, v11, v12

    .line 123
    .local v4, temp:F
    neg-float v11, v9

    div-float v3, v11, v4

    .line 125
    .local v3, t:F
    mul-float v5, v3, v8

    .line 126
    .local v5, tx:F
    const/high16 v11, -0x4080

    mul-float v12, v3, v9

    add-float v6, v11, v12

    .line 127
    .local v6, ty:F
    mul-float v7, v3, v10

    .line 129
    .local v7, tz:F
    mul-float v11, v5, v5

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v2, v11

    .line 130
    .local v2, length:F
    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 132
    .local v1, glength:F
    sget v11, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr v11, v8

    div-float/2addr v11, v1

    sget v12, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v12, v5

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    neg-float v12, v12

    iget v13, p0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    invoke-static {v11, v12, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v11

    iput v11, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    .line 135
    sget v11, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr v11, v9

    div-float/2addr v11, v1

    sget v12, Lcom/miui/gallery/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v12, v6

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    neg-float v12, v12

    iget v13, p0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    invoke-static {v11, v12, v13}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v11

    neg-float v11, v11

    iput v11, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    .line 138
    iget v11, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    iget v13, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    iget v13, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v11, v11

    iput v11, p0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    .line 140
    iget-object v11, p0, Lcom/miui/gallery/app/EyePosition;->mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

    iget v12, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    iget v13, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    iget v14, p0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    invoke-interface {v11, v12, v13, v14}, Lcom/miui/gallery/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 141
    return-void

    .line 117
    .end local v1           #glength:F
    .end local v2           #length:F
    .end local v3           #t:F
    .end local v4           #temp:F
    .end local v5           #tx:F
    .end local v6           #ty:F
    .end local v7           #tz:F
    :pswitch_0
    move/from16 v0, p2

    neg-float v8, v0

    move/from16 v9, p1

    goto/16 :goto_0

    .line 118
    :pswitch_1
    move/from16 v0, p1

    neg-float v8, v0

    move/from16 v0, p2

    neg-float v9, v0

    goto/16 :goto_0

    .line 119
    :pswitch_2
    move/from16 v8, p2

    move/from16 v0, p1

    neg-float v9, v0

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGyroscopeChanged(FFF)V
    .locals 16
    .parameter "gx"
    .parameter "gy"
    .parameter "gz"

    .prologue
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 145
    .local v3, now:J
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-lez v8, :cond_3

    move/from16 v9, p1

    :goto_0
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4

    move/from16 v8, p2

    :goto_1
    add-float v1, v9, v8

    .line 146
    .local v1, distance:F
    const v8, 0x3e19999a

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_0

    const/high16 v8, 0x4120

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mGyroscopeCountdown:I

    if-lez v8, :cond_5

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mGyroscopeCountdown:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mGyroscopeCountdown:I

    .line 149
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/miui/gallery/app/EyePosition;->mStartTime:J

    .line 150
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    const/high16 v9, 0x41a0

    div-float v2, v8, v9

    .line 151
    .local v2, limit:F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    cmpl-float v8, v8, v2

    if-gtz v8, :cond_1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    neg-float v9, v2

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    cmpl-float v8, v8, v2

    if-gtz v8, :cond_1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    neg-float v9, v2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    const v9, 0x3f7eb852

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    .line 153
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    const v9, 0x3f7eb852

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    .line 154
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v8, v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    .line 156
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/app/EyePosition;->mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    invoke-interface {v8, v9, v10, v11}, Lcom/miui/gallery/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 179
    .end local v2           #limit:F
    :cond_2
    :goto_2
    return-void

    .line 145
    .end local v1           #distance:F
    :cond_3
    move/from16 v0, p1

    neg-float v8, v0

    move v9, v8

    goto/16 :goto_0

    :cond_4
    move/from16 v0, p2

    neg-float v8, v0

    goto/16 :goto_1

    .line 161
    .restart local v1       #distance:F
    :cond_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/gallery/app/EyePosition;->mStartTime:J

    sub-long v8, v3, v8

    long-to-float v8, v8

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    neg-float v9, v9

    mul-float v5, v8, v9

    .line 162
    .local v5, t:F
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/miui/gallery/app/EyePosition;->mStartTime:J

    .line 164
    move/from16 v0, p2

    neg-float v6, v0

    .local v6, x:F
    move/from16 v0, p1

    neg-float v7, v0

    .line 165
    .local v7, y:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 171
    :goto_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    float-to-double v8, v8

    mul-float v10, v6, v5

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    neg-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v8

    const v9, 0x3f7eb852

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    .line 173
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    float-to-double v8, v8

    mul-float v10, v7, v5

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    neg-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mLimit:F

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v8

    const v9, 0x3f7eb852

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    .line 176
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v8, v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    .line 178
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/app/EyePosition;->mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/app/EyePosition;->mX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/gallery/app/EyePosition;->mY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    invoke-interface {v8, v9, v10, v11}, Lcom/miui/gallery/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    goto/16 :goto_2

    .line 166
    :pswitch_0
    move/from16 v0, p1

    neg-float v6, v0

    move/from16 v7, p2

    goto/16 :goto_3

    .line 167
    :pswitch_1
    move/from16 v6, p2

    move/from16 v7, p1

    goto/16 :goto_3

    .line 168
    :pswitch_2
    move/from16 v6, p1

    move/from16 v0, p2

    neg-float v7, v0

    goto/16 :goto_3

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 204
    .local v0, sManager:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mPositionListener:Lcom/miui/gallery/app/EyePosition$PositionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 206
    .end local v0           #sManager:Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method public resetPosition()V
    .locals 4

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/app/EyePosition;->mStartTime:J

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    iput v0, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    .line 98
    iget v0, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    neg-float v0, v0

    iput v0, p0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/EyePosition;->mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

    iget v1, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    iget v2, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    iget v3, p0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 100
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 209
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 212
    .local v0, sManager:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mPositionListener:Lcom/miui/gallery/app/EyePosition$PositionListener;

    iget-object v2, p0, Lcom/miui/gallery/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 216
    .end local v0           #sManager:Landroid/hardware/SensorManager;
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/gallery/app/EyePosition;->mStartTime:J

    .line 217
    const/16 v1, 0xf

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mGyroscopeCountdown:I

    .line 218
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    .line 219
    iget v1, p0, Lcom/miui/gallery/app/EyePosition;->mUserDistance:F

    neg-float v1, v1

    iput v1, p0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    .line 220
    iget-object v1, p0, Lcom/miui/gallery/app/EyePosition;->mListener:Lcom/miui/gallery/app/EyePosition$EyePositionListener;

    iget v2, p0, Lcom/miui/gallery/app/EyePosition;->mX:F

    iget v3, p0, Lcom/miui/gallery/app/EyePosition;->mY:F

    iget v4, p0, Lcom/miui/gallery/app/EyePosition;->mZ:F

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/gallery/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 221
    return-void
.end method
