.class Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScrollableScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# instance fields
.field private mFoldX:F

.field private mPointerId:I

.field private mPrevX:F

.field private mStartX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    .line 36
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    .line 37
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    .line 38
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    .line 95
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/high16 v5, 0x4040

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 54
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 59
    .local v0, curX:F
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    if-eq v2, v4, :cond_1

    .line 60
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 61
    .local v1, pIndex:I
    if-eq v1, v4, :cond_2

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 67
    .end local v1           #pIndex:I
    :cond_1
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 68
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    .line 92
    :goto_1
    return-void

    .line 64
    .restart local v1       #pIndex:I
    :cond_2
    iput v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPointerId:I

    goto :goto_0

    .line 71
    .end local v1           #pIndex:I
    :cond_3
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 72
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    goto :goto_1

    .line 75
    :cond_4
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 76
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 77
    :cond_6
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    .line 78
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    .line 91
    :cond_7
    :goto_2
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    goto :goto_1

    .line 82
    :cond_8
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 83
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_a

    :cond_9
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 84
    :cond_a
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    .line 85
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    .line 86
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    goto :goto_2
.end method

.method public getFlingDirection(F)I
    .locals 5
    .parameter "velocity"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 111
    const/high16 v3, 0x4396

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    .line 112
    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 113
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$000(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)I

    move-result v0

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v4

    #calls: Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I
    invoke-static {v3, v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$100(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;I)I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 117
    goto :goto_0

    :cond_3
    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_4
    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mFoldX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$200(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v4

    #calls: Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I
    invoke-static {v3, v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$100(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;I)I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    .line 123
    goto :goto_0

    :cond_5
    move v0, v2

    .line 127
    goto :goto_0

    .line 129
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getXVelocity(III)F
    .locals 2
    .parameter "units"
    .parameter "maxVelocity"
    .parameter "pointerId"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->reset()V

    .line 51
    return-void
.end method
