.class public Lcom/miui/gallery/ui/SlotView;
.super Lcom/miui/gallery/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SlotView$1;,
        Lcom/miui/gallery/ui/SlotView$MyGestureListener;,
        Lcom/miui/gallery/ui/SlotView$Layout;,
        Lcom/miui/gallery/ui/SlotView$Spec;,
        Lcom/miui/gallery/ui/SlotView$ItemEntry;,
        Lcom/miui/gallery/ui/SlotView$MyAnimation;,
        Lcom/miui/gallery/ui/SlotView$SimpleListener;,
        Lcom/miui/gallery/ui/SlotView$Listener;
    }
.end annotation


# instance fields
.field protected mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

.field private mCurrentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDownInScrolling:Z

.field private mEnableScroll:Z

.field protected mForceUpdateIndex:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field public mItemList:Lcom/miui/gallery/util/LinkedNode$List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/LinkedNode$List",
            "<",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/gallery/ui/DisplayItem;",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

.field private mListener:Lcom/miui/gallery/ui/SlotView$Listener;

.field protected mMoreAnimation:Z

.field private mNextItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOverscrollEffect:I

.field protected final mPaper:Lcom/miui/gallery/ui/Paper;

.field private mPositions:Lcom/miui/gallery/ui/PositionProvider;

.field protected final mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

.field protected mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z

    .line 61
    new-instance v0, Lcom/miui/gallery/ui/Paper;

    invoke-direct {v0}, Lcom/miui/gallery/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/miui/gallery/util/LinkedNode;->newList()Lcom/miui/gallery/util/LinkedNode$List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/miui/gallery/ui/SlotView;->mMoreAnimation:Z

    .line 77
    iput-object v2, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    .line 78
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 79
    new-instance v0, Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlotView$Layout;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    .line 85
    iput v1, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    .line 94
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/miui/gallery/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/miui/gallery/ui/SlotView;Lcom/miui/gallery/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 96
    new-instance v0, Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    .line 97
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method private renderItem(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/SlotView$ItemEntry;FIZ)I
    .locals 8
    .parameter "canvas"
    .parameter "entry"
    .parameter "interpolate"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    const/4 v7, 0x0

    .line 355
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 356
    iget-object v1, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 357
    .local v1, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mPositions:Lcom/miui/gallery/ui/PositionProvider;

    if-eqz v3, :cond_0

    .line 358
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 359
    iget-object v3, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 360
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 361
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 362
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mPositions:Lcom/miui/gallery/ui/PositionProvider;

    iget-object v4, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/DisplayItem;->getIdentity()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1}, Lcom/miui/gallery/ui/PositionProvider;->getPosition(JLcom/miui/gallery/ui/PositionRepository$Position;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v2

    .line 364
    .local v2, source:Lcom/miui/gallery/ui/PositionRepository$Position;
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 365
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 366
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 367
    iget-object v3, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-static {v2, v3, v1, p3}, Lcom/miui/gallery/ui/PositionRepository$Position;->interpolate(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;F)V

    .line 370
    .end local v2           #source:Lcom/miui/gallery/ui/PositionRepository$Position;
    :cond_0
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->alpha:F

    invoke-interface {p1, v3}, Lcom/miui/gallery/ui/GLCanvas;->multiplyAlpha(F)V

    .line 371
    if-eqz p5, :cond_1

    .line 372
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    iget-object v4, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->base:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v5, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v6, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/miui/gallery/ui/Paper;->getTransform(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;FF)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 378
    :goto_0
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->theta:F

    const/high16 v4, 0x3f80

    invoke-interface {p1, v3, v7, v7, v4}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 379
    iget-object v3, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {v3, p1, p4}, Lcom/miui/gallery/ui/DisplayItem;->render(Lcom/miui/gallery/ui/GLCanvas;I)I

    move-result v0

    .line 380
    .local v0, more:I
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 381
    return v0

    .line 375
    .end local v0           #more:I
    :cond_1
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v5, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    invoke-interface {p1, v3, v4, v5}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/miui/gallery/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public appendPositions(Lcom/miui/gallery/ui/PositionRepository;)V
    .locals 5
    .parameter "repository"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    .line 193
    .local v1, list:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    invoke-virtual {v1}, Lcom/miui/gallery/util/LinkedNode$List;->getFirst()Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .line 194
    .local v0, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    new-instance v2, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    .line 195
    .local v2, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    iget-object v3, v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 197
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 198
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 199
    iget-object v3, v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/DisplayItem;->getIdentity()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/miui/gallery/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/LinkedNode$List;->nextOf(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    .end local v0           #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    check-cast v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .restart local v0       #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 117
    iget-object v7, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v7, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 118
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 119
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->getHeight()I

    move-result v6

    .line 120
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 121
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 122
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 124
    .local v3, slotEnd:I
    move v0, v4

    .line 125
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 126
    move v0, v4

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotView;->setScrollPosition(I)V

    .line 134
    return-void

    .line 127
    :cond_1
    if-ge v2, v4, :cond_2

    .line 128
    move v0, v2

    goto :goto_0

    .line 129
    :cond_2
    if-le v3, v5, :cond_0

    .line 130
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 165
    .local v0, visibleIndex:I
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SlotView$Layout;->setSize(II)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotView;->makeSlotVisible(I)V

    .line 168
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/SlotView;->onLayoutChanged(II)V

    .line 169
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onLayoutChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 175
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 217
    .local v0, limit:I
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/miui/gallery/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 218
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/UserInteractionListener;->onUserInteraction()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    return v1

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mDownInScrolling:Z

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/Paper;->onRelease()V

    .line 247
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V
    .locals 3
    .parameter "target"
    .parameter "base"
    .parameter "item"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotHeight()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/miui/gallery/ui/DisplayItem;->setBox(II)V

    .line 222
    new-instance v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    invoke-direct {v0, p3, p1, p2}, Lcom/miui/gallery/ui/SlotView$ItemEntry;-><init>(Lcom/miui/gallery/ui/DisplayItem;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 223
    .local v0, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/LinkedNode$List;->insertLast(Lcom/miui/gallery/util/LinkedNode;)V

    .line 224
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .line 229
    .local v0, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$ItemEntry;->remove()V

    .line 230
    :cond_0
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 311
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 313
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, currentTimeMillis:J
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v9, v0, v1}, Lcom/miui/gallery/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v4

    .line 316
    .local v4, more:Z
    iget v6, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 317
    .local v6, oldY:I
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/miui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 319
    const/4 v7, 0x0

    .line 320
    .local v7, paperActive:Z
    iget v9, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    if-nez v9, :cond_4

    .line 322
    iget v5, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 323
    .local v5, newY:I
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v3

    .line 324
    .local v3, limit:I
    if-lez v6, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    if-ge v6, v3, :cond_3

    if-ne v5, v3, :cond_3

    .line 325
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v8

    .line 326
    .local v8, v:F
    if-ne v5, v3, :cond_2

    neg-float v8, v8

    .line 329
    :cond_2
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 330
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    invoke-virtual {v9, v8}, Lcom/miui/gallery/ui/Paper;->edgeReached(F)V

    .line 333
    .end local v8           #v:F
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/Paper;->advanceAnimation()Z

    move-result v7

    .line 336
    .end local v3           #limit:I
    .end local v5           #newY:I
    :cond_4
    or-int/2addr v4, v7

    .line 338
    const/high16 v2, 0x3f80

    .line 339
    .local v2, interpolate:F
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    if-eqz v9, :cond_5

    .line 340
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    invoke-virtual {v9, v0, v1}, Lcom/miui/gallery/ui/SlotView$MyAnimation;->calculate(J)Z

    move-result v9

    or-int/2addr v4, v9

    .line 341
    iget-object v9, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    iget v2, v9, Lcom/miui/gallery/ui/SlotView$MyAnimation;->value:F

    .line 347
    :cond_5
    iget v9, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-interface {p1, v11, v9, v11}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 350
    invoke-virtual {p0, p1, v2, v7, v4}, Lcom/miui/gallery/ui/SlotView;->renderCore(Lcom/miui/gallery/ui/GLCanvas;FZZ)V

    .line 351
    return-void
.end method

.method protected renderCore(Lcom/miui/gallery/ui/GLCanvas;FZZ)V
    .locals 11
    .parameter "canvas"
    .parameter "interpolate"
    .parameter "paperActive"
    .parameter "more"

    .prologue
    .line 268
    iget-object v7, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    .line 269
    .local v7, list:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    invoke-virtual {v7}, Lcom/miui/gallery/util/LinkedNode$List;->getLast()Lcom/miui/gallery/util/LinkedNode;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .local v2, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    :goto_0
    if-eqz v2, :cond_2

    .line 270
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SlotView;->renderItem(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/SlotView$ItemEntry;FIZ)I

    move-result v9

    .line 271
    .local v9, r:I
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    or-int/2addr p4, v0

    .line 275
    invoke-virtual {v7, v2}, Lcom/miui/gallery/util/LinkedNode$List;->previousOf(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v2

    .end local v2           #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    check-cast v2, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .line 276
    .restart local v2       #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 278
    .end local v9           #r:I
    :cond_2
    const/4 v4, 0x1

    .line 279
    .local v4, pass:I
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 280
    const/4 v6, 0x0

    .local v6, i:I
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, n:I
    :goto_3
    if-ge v6, v8, :cond_5

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    check-cast v2, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .restart local v2       #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SlotView;->renderItem(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/SlotView$ItemEntry;FIZ)I

    move-result v9

    .line 283
    .restart local v9       #r:I
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_3
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    or-int/2addr p4, v0

    .line 280
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 286
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 288
    .end local v9           #r:I
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v10, p0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 291
    .local v10, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 292
    iput-object v10, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    .line 293
    add-int/lit8 v4, v4, 0x1

    .line 294
    goto :goto_2

    .line 299
    .end local v6           #i:I
    .end local v8           #n:I
    .end local v10           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 302
    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    .line 303
    :cond_7
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mMoreAnimation:Z

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 306
    :cond_8
    iput-boolean p4, p0, Lcom/miui/gallery/ui/SlotView;->mMoreAnimation:Z

    .line 307
    return-void
.end method

.method public savePositions(Lcom/miui/gallery/ui/PositionRepository;)V
    .locals 0
    .parameter "repository"

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PositionRepository;->clear()V

    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SlotView;->appendPositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 187
    return-void
.end method

.method public setCenterIndex(IZ)V
    .locals 5
    .parameter "index"
    .parameter "force"

    .prologue
    .line 104
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    #getter for: Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/miui/gallery/ui/SlotView$Layout;->access$100(Lcom/miui/gallery/ui/SlotView$Layout;)I

    move-result v2

    .line 105
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iput-boolean p2, p0, Lcom/miui/gallery/ui/SlotView;->mForceUpdateIndex:Z

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 110
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 113
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setEnableScroll(Z)V
    .locals 0
    .parameter "enableScroll"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z

    .line 101
    return-void
.end method

.method public setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;

    .line 255
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 139
    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 140
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 4
    .parameter "slotCount"

    .prologue
    const/4 v3, -0x1

    .line 727
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 730
    .local v0, changed:Z
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    if-eq v1, v3, :cond_0

    .line 731
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/SlotView;->setCenterIndex(IZ)V

    .line 732
    iput v3, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    .line 734
    :cond_0
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 735
    return v0
.end method

.method public setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 144
    return-void
.end method

.method public startTransition(Lcom/miui/gallery/ui/PositionProvider;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView;->mPositions:Lcom/miui/gallery/ui/PositionProvider;

    .line 179
    new-instance v0, Lcom/miui/gallery/ui/SlotView$MyAnimation;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlotView$MyAnimation;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$MyAnimation;->start()V

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method protected updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 205
    if-nez p2, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method
