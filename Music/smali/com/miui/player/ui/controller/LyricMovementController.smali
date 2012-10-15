.class public Lcom/miui/player/ui/controller/LyricMovementController;
.super Ljava/lang/Object;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;,
        Lcom/miui/player/ui/controller/LyricMovementController$LyricView;,
        Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;,
        Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;
    }
.end annotation


# static fields
.field private static OFFSET_LINE_DRAG:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastLyricLine:I

.field mLastPosition:J

.field mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

.field private mLyricMode:I

.field private final mLyricScrollListener:Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

.field mLyricStatus:I

.field final mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

.field private mOffsetLineNumArr:[I

.field private mOrginLastPosition:J

.field private final mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

.field final mSlideAnimation:Lcom/miui/player/ui/view/VerticalSlideAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/ui/controller/LyricMovementController;->OFFSET_LINE_DRAG:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/ui/view/ExtendScrollView;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    .line 361
    iput v2, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 367
    new-instance v0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;-><init>(Lcom/miui/player/ui/controller/LyricMovementController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    .line 33
    iput v2, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    .line 34
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    .line 35
    new-instance v0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;-><init>(Lcom/miui/player/ui/controller/LyricMovementController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricScrollListener:Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    .line 36
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricScrollListener:Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;)V

    .line 37
    new-instance v0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    .line 39
    new-instance v0, Lcom/miui/player/ui/view/VerticalSlideAnimation;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/view/VerticalSlideAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/view/VerticalSlideAnimation;

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/view/VerticalSlideAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->setDuration(J)V

    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/view/VerticalSlideAnimation;

    new-instance v1, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;-><init>(Lcom/miui/player/ui/controller/LyricMovementController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricScrollListener:Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/view/ExtendScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/controller/LyricMovementController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawLyric(IILcom/miui/player/meta/LyricParser$LyricShot;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "lyricShot"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getOffsetNumArr(Lcom/miui/player/meta/LyricParser$Lyric;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->drawLyric(Lcom/miui/player/meta/LyricParser$Lyric;Lcom/miui/player/meta/LyricParser$LyricShot;II)V

    .line 233
    return-void
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lryicProgressModify(I)Z
    .locals 13
    .parameter "deltaHeight"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v9, 0x0

    .line 121
    :goto_0
    return v9

    .line 70
    :cond_0
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v9, :cond_1

    .line 71
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v9, v10}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getOffsetNumArr(Lcom/miui/player/meta/LyricParser$Lyric;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 74
    :cond_1
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v9, :cond_2

    .line 75
    const/4 v9, 0x0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    iget-wide v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    invoke-virtual {v9, v10, v11}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;

    move-result-object v5

    .line 79
    .local v5, lyricShot:Lcom/miui/player/meta/LyricParser$LyricShot;
    iget v9, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-gez v9, :cond_3

    .line 80
    const/4 v9, 0x0

    goto :goto_0

    .line 82
    :cond_3
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v9}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v3

    .line 83
    .local v3, lineHeight:F
    const/4 v0, 0x5

    .line 84
    .local v0, START_LINE_NUM:I
    iget v4, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .line 85
    .local v4, lineIndex:I
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v10, v4, 0x5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v4, -0x1

    add-int/lit8 v11, v11, 0x5

    aget v10, v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-double v9, v9

    iget-wide v11, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    mul-double/2addr v9, v11

    double-to-float v2, v9

    .line 86
    .local v2, lastPercentHeight:F
    const/4 v6, 0x0

    .line 87
    .local v6, nowPercentHeight:F
    const/4 v7, 0x1

    .line 89
    .local v7, offsetLine:I
    if-lez p1, :cond_7

    .line 90
    iget v1, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 91
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v10, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v1, -0x1

    add-int/lit8 v11, v11, 0x5

    aget v10, v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v9, v2

    int-to-float v10, p1

    sub-float v6, v9, v10

    .line 92
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v10, v1, 0x5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v1, -0x1

    add-int/lit8 v11, v11, 0x5

    aget v10, v10, v11

    sub-int v7, v9, v10

    .line 93
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_6

    int-to-float v9, v7

    mul-float/2addr v9, v3

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_6

    .line 94
    move v4, v1

    .line 98
    :cond_4
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v4, 0x0

    .line 117
    :cond_5
    :goto_2
    div-float v9, v6, v3

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 119
    .local v8, percent:F
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    float-to-double v10, v8

    invoke-virtual {v9, v5, v4, v10, v11}, Lcom/miui/player/meta/LyricParser$Lyric;->correctLyric(Lcom/miui/player/meta/LyricParser$LyricShot;ID)V

    .line 120
    iget-wide v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 121
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 90
    .end local v8           #percent:F
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 103
    .end local v1           #i:I
    :cond_7
    iget v1, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .restart local v1       #i:I
    :goto_3
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x5

    if-ge v1, v9, :cond_8

    .line 104
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v10, v5, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v1, -0x1

    add-int/lit8 v11, v11, 0x5

    aget v10, v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v9, v2

    int-to-float v10, p1

    sub-float v6, v9, v10

    .line 105
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v10, v1, 0x5

    aget v9, v9, v10

    iget-object v10, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v1, -0x1

    add-int/lit8 v11, v11, 0x5

    aget v10, v10, v11

    sub-int v7, v9, v10

    .line 106
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_9

    int-to-float v9, v7

    mul-float/2addr v9, v3

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_9

    .line 107
    move v4, v1

    .line 111
    :cond_8
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5

    .line 112
    int-to-float v9, v7

    mul-float v6, v9, v3

    .line 113
    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v9, v9

    add-int/lit8 v4, v9, -0x5

    goto :goto_2

    .line 103
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private scrollLyric(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollY(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->setHintText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-void
.end method

.method getLyricNowplayingMarginTop()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v0

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getScrollOffset(Lcom/miui/player/meta/LyricParser$LyricShot;IF)I
    .locals 14
    .parameter "lyricShot"
    .parameter "spaceLine"
    .parameter "lineHeight"

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, height:I
    iget v5, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .line 213
    .local v5, relIndex:I
    iget v6, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    add-int v1, v6, p2

    .line 214
    .local v1, absIndex:I
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    if-lt v1, v6, :cond_0

    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v6, v6

    if-lt v1, v6, :cond_1

    .line 215
    :cond_0
    move/from16 v0, p3

    float-to-double v6, v0

    int-to-double v8, v5

    iget-wide v10, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 223
    :goto_0
    return v2

    .line 217
    :cond_1
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    sub-int v3, v6, v7

    .line 218
    .local v3, lineCount:I
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int v4, v6, p2

    .line 220
    .local v4, offsetLine:I
    move/from16 v0, p3

    float-to-double v6, v0

    int-to-double v8, v4

    iget-wide v10, p1, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    int-to-double v12, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v2, v6

    goto :goto_0
.end method

.method public onVerticalScroll(I)Z
    .locals 5
    .parameter "deltaScrollY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    iget v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v1, :cond_0

    .line 46
    iget-wide v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 50
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v1, :cond_1

    .line 51
    iget-wide v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    iput-wide v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOrginLastPosition:J

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/player/ui/controller/LyricMovementController;->lryicProgressModify(I)Z

    .line 58
    :goto_0
    return v4

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 57
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 172
    return-void
.end method

.method public refreshLyric(JZ)V
    .locals 8
    .parameter "pos"
    .parameter "force"

    .prologue
    .line 175
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v6, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iput-wide p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    .line 181
    const/4 v4, 0x5

    .line 182
    .local v4, spaceLine:I
    sget v6, Lcom/miui/player/ui/controller/LyricMovementController;->OFFSET_LINE_DRAG:I

    if-gez v6, :cond_2

    .line 183
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v6}, Lcom/miui/player/ui/view/ExtendScrollView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v7}, Lcom/miui/player/ui/view/ExtendScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v7}, Lcom/miui/player/ui/view/ExtendScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricMovementController;->getLyricNowplayingMarginTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v7}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    sput v6, Lcom/miui/player/ui/controller/LyricMovementController;->OFFSET_LINE_DRAG:I

    .line 187
    :cond_2
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v6, p1, p2}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;

    move-result-object v2

    .line 189
    .local v2, lyricShot:Lcom/miui/player/meta/LyricParser$LyricShot;
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v6}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v1

    .line 190
    .local v1, lineHeight:F
    const/4 v5, -0x5

    .line 191
    .local v5, startLine:I
    iget-object v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v6}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v0

    .line 192
    .local v0, endLine:I
    iget v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 193
    sget v6, Lcom/miui/player/ui/controller/LyricMovementController;->OFFSET_LINE_DRAG:I

    add-int/2addr v0, v6

    .line 199
    :goto_1
    if-nez p3, :cond_3

    iget v6, v2, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    iget v7, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 200
    :cond_3
    iget v6, v2, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    iput v6, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    .line 201
    invoke-direct {p0, v5, v0, v2}, Lcom/miui/player/ui/controller/LyricMovementController;->drawLyric(IILcom/miui/player/meta/LyricParser$LyricShot;)V

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricMovementController;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    const/4 v6, 0x5

    invoke-virtual {p0, v2, v6, v1}, Lcom/miui/player/ui/controller/LyricMovementController;->getScrollOffset(Lcom/miui/player/meta/LyricParser$LyricShot;IF)I

    move-result v3

    .line 206
    .local v3, scroll:I
    invoke-direct {p0, v3}, Lcom/miui/player/ui/controller/LyricMovementController;->scrollLyric(I)V

    goto :goto_0

    .line 195
    .end local v3           #scroll:I
    :cond_5
    add-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V
    .locals 1
    .parameter "lyric"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eq v0, p1, :cond_1

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/miui/player/meta/LyricParser$Lyric;->decorate()V

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/ExtendScrollView;->reset()V

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 140
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLastLyricLine:I

    .line 141
    return-void
.end method

.method public setLyricMode(I)V
    .locals 2
    .parameter "lryicMode"

    .prologue
    .line 144
    iput p1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    .line 145
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    iget v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/player/ui/view/ExtendScrollView;->setNeedFling(Z)V

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
