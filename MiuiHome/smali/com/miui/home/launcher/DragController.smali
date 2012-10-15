.class public Lcom/miui/home/launcher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragController$ScrollRunnable;,
        Lcom/miui/home/launcher/DragController$TouchTranslator;,
        Lcom/miui/home/launcher/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistanceSinceScroll:I

.field private mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

.field private mDragScroller:Lcom/miui/home/launcher/DragScroller;

.field private mDragViewAlpha:I

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private final mOutlineHelper:Lcom/miui/home/launcher/HolographicOutlineHelper;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mSecondaryPointerId:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mTouchTranslater:Lcom/miui/home/launcher/DragController$TouchTranslator;

.field private mTransloateXY:[F

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_MOVE:I

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 69
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 101
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mTransloateXY:[F

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mTempRect:Landroid/graphics/Rect;

    .line 114
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 116
    new-instance v0, Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragController$ScrollRunnable;-><init>(Lcom/miui/home/launcher/DragController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    .line 124
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    .line 125
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    .line 127
    new-instance v0, Lcom/miui/home/launcher/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mOutlineHelper:Lcom/miui/home/launcher/HolographicOutlineHelper;

    .line 405
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/miui/home/launcher/Launcher;

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    .line 167
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragController;->mScrollZone:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragController;->mDragViewAlpha:I

    .line 170
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recordScreenSize()V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragController$ScrollRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 741
    if-ge p0, p1, :cond_0

    .line 746
    .end local p1
    :goto_0
    return p1

    .line 743
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    .line 744
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 746
    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "b"
    .parameter "padding"

    .prologue
    .line 421
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 422
    .local v2, outlineColor:I
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    .local v1, out:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 424
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mOutlineHelper:Lcom/miui/home/launcher/HolographicOutlineHelper;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/miui/home/launcher/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 426
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    return-object v1
.end method

.method private createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 363
    invoke-virtual {p1, v7}, Landroid/view/View;->setPressed(Z)V

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    .line 366
    .local v4, willNotCache:Z
    invoke-virtual {p1, v7}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 371
    .local v2, color:I
    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {p1, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 375
    :cond_0
    instance-of v5, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v5}, Lcom/miui/home/launcher/ItemIcon;->isCompact()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v6

    .line 376
    .local v3, isNotCompact:Z
    :goto_0
    if-eqz v3, :cond_1

    move-object v5, p1

    .line 377
    check-cast v5, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/ItemIcon;->setCompactViewMode(Z)V

    .line 380
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 382
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_5

    .line 383
    const-string v5, "Launcher.DragController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed getViewBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    const/4 v0, 0x0

    .line 402
    :cond_2
    :goto_1
    return-object v0

    .end local v1           #cacheBitmap:Landroid/graphics/Bitmap;
    .end local v3           #isNotCompact:Z
    :cond_3
    move v3, v7

    .line 375
    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_0

    .line 387
    .restart local v1       #cacheBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #isNotCompact:Z
    :cond_5
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    move-object v5, p1

    .line 390
    check-cast v5, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/ItemIcon;->setCompactViewMode(Z)V

    .line 394
    :cond_6
    if-eqz v4, :cond_7

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 396
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 398
    :cond_7
    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1
.end method

.method private drop(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 666
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 667
    .local v1, coordinates:[I
    float-to-int v5, p1

    float-to-int v6, p2

    invoke-direct {p0, v5, v6, v1}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v2

    .line 669
    .local v2, dropTarget:Lcom/miui/home/launcher/DropTarget;
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    aget v6, v1, v4

    iput v6, v5, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    .line 670
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    aget v6, v1, v3

    iput v6, v5, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, accepted:Z
    if-eqz v2, :cond_0

    .line 673
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iput-boolean v3, v5, Lcom/miui/home/launcher/DropTarget$DragObject;->dragComplete:Z

    .line 674
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v2, v5}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 675
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v2, v5}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v2, v5}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    .line 679
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    if-nez v0, :cond_1

    :goto_0
    iput-boolean v3, v5, Lcom/miui/home/launcher/DropTarget$DragObject;->cancelled:Z

    .line 680
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v3, v3, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2           #dropTarget:Lcom/miui/home/launcher/DropTarget;
    iget-object v4, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v0}, Lcom/miui/home/launcher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    .line 681
    return-void

    .restart local v2       #dropTarget:Lcom/miui/home/launcher/DropTarget;
    :cond_1
    move v3, v4

    .line 679
    goto :goto_0
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-boolean v2, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v2, :cond_2

    .line 466
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 467
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DragController$DragListener;

    .line 468
    .local v1, listener:Lcom/miui/home/launcher/DragController$DragListener;
    invoke-interface {v1}, Lcom/miui/home/launcher/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 470
    .end local v1           #listener:Lcom/miui/home/launcher/DragController$DragListener;
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v2, v2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v2, v2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->remove()V

    .line 472
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iput-object v3, v2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    .line 474
    :cond_1
    iput-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    .line 477
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 478
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 480
    :cond_3
    return-void
.end method

.method private findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 704
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 705
    .local v3, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 706
    .local v1, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 707
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 708
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/DropTarget;

    .line 709
    .local v4, target:Lcom/miui/home/launcher/DropTarget;
    invoke-interface {v4}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 707
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 712
    check-cast v5, Landroid/view/View;

    .line 713
    .local v5, targetView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    invoke-interface {v4, v3}, Lcom/miui/home/launcher/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 717
    invoke-interface {v4, p3}, Lcom/miui/home/launcher/DropTarget;->getLocationOnScreen([I)V

    .line 718
    aget v6, p3, v9

    invoke-interface {v4}, Lcom/miui/home/launcher/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v10

    invoke-interface {v4}, Lcom/miui/home/launcher/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 719
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 720
    aget v6, p3, v9

    sub-int v6, p1, v6

    aput v6, p3, v9

    .line 721
    aget v6, p3, v10

    sub-int v6, p2, v6

    aput v6, p3, v10

    .line 725
    .end local v4           #target:Lcom/miui/home/launcher/DropTarget;
    .end local v5           #targetView:Landroid/view/View;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleMoveEvent(IILandroid/view/MotionEvent;)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "ev"

    .prologue
    .line 528
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v6, v6, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    move/from16 v0, p2

    invoke-virtual {v6, p1, v0}, Lcom/miui/home/launcher/DragView;->move(II)V

    .line 531
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 532
    .local v1, coordinates:[I
    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v3

    .line 533
    .local v3, dropTarget:Lcom/miui/home/launcher/DropTarget;
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    const/4 v7, 0x0

    aget v7, v1, v7

    iput v7, v6, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    .line 534
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    const/4 v7, 0x1

    aget v7, v1, v7

    iput v7, v6, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    .line 535
    if-eqz v3, :cond_6

    .line 536
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v3, v6}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v2

    .line 537
    .local v2, delegate:Lcom/miui/home/launcher/DropTarget;
    if-eqz v2, :cond_0

    .line 538
    move-object v3, v2

    .line 541
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq v6, v3, :cond_2

    .line 542
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v6, :cond_1

    .line 543
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v6, v7}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 545
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v3, v6}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 547
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v3, v6}, Lcom/miui/home/launcher/DropTarget;->onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 553
    .end local v2           #delegate:Lcom/miui/home/launcher/DropTarget;
    :cond_3
    :goto_0
    iput-object v3, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    .line 556
    const/4 v4, 0x0

    .line 557
    .local v4, inDeleteRegion:Z
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    if-eqz v6, :cond_4

    .line 558
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    int-to-float v7, p1

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    .line 563
    :cond_4
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v5

    .line 564
    .local v5, slop:I
    iget v6, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    int-to-double v6, v6

    iget-object v8, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v8, p1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget-object v10, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int v10, v10, p2

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    .line 566
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 567
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 569
    if-nez v4, :cond_7

    iget v6, p0, Lcom/miui/home/launcher/DragController;->mScrollZone:I

    if-ge p1, v6, :cond_7

    .line 570
    iget v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v6, :cond_5

    iget v6, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v6, v5, :cond_5

    .line 571
    const/4 v6, 0x1

    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 572
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v6, p1, v0, v7}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 573
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 574
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 575
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_5
    :goto_1
    return-void

    .line 549
    .end local v4           #inDeleteRegion:Z
    .end local v5           #slop:I
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v6, :cond_3

    .line 550
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v6, v7}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    goto/16 :goto_0

    .line 578
    .restart local v4       #inDeleteRegion:Z
    .restart local v5       #slop:I
    :cond_7
    if-nez v4, :cond_8

    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/miui/home/launcher/DragController;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le p1, v6, :cond_8

    .line 579
    iget v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v6, :cond_5

    iget v6, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v6, v5, :cond_5

    .line 580
    const/4 v6, 0x1

    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 581
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    const/4 v7, 0x1

    move/from16 v0, p2

    invoke-interface {v6, p1, v0, v7}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 582
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 583
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 584
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 587
    :cond_8
    iget v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 588
    const/4 v6, 0x0

    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 589
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 590
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    invoke-interface {v6}, Lcom/miui/home/launcher/DragScroller;->onExitScrollArea()Z

    goto :goto_1

    .line 592
    :cond_9
    if-eqz p3, :cond_5

    iget v6, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-lez v6, :cond_5

    .line 593
    iget v6, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-lez v6, :cond_a

    .line 594
    int-to-float v6, p1

    iget v7, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 596
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    iget v7, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    move-object/from16 v0, p3

    invoke-interface {v6, v0, v7}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1

    .line 599
    :cond_a
    const/4 v6, -0x1

    iput v6, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    goto/16 :goto_1
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 735
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 409
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v0, v3

    .line 417
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 413
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 414
    .local v2, c:Landroid/graphics/Canvas;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method public addDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 448
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 449
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->cancelled:Z

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragComplete:Z

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v0, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragSource;->onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    .line 458
    return-void
.end method

.method public cancelScroll()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 487
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/home/launcher/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 488
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/home/launcher/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v2

    .line 490
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    .line 513
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return v3

    .line 496
    :pswitch_1
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 497
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 498
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    goto :goto_0

    .line 502
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    .line 506
    :pswitch_3
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v3, :cond_0

    .line 507
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 608
    iget-object v4, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    .line 610
    .local v4, scrollView:Landroid/view/View;
    iget-boolean v7, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-nez v7, :cond_0

    .line 662
    :goto_0
    return v5

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 616
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/home/launcher/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v5, v8}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v2

    .line 617
    .local v2, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/home/launcher/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v5, v8}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v3

    .line 619
    .local v3, screenY:I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v5, v6

    .line 662
    goto :goto_0

    .line 621
    :pswitch_1
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v1, v5, 0x8

    .line 622
    .local v1, index:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 623
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    iget v7, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v5, p1, v7}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 627
    .end local v1           #index:I
    :pswitch_2
    iget v5, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-ltz v5, :cond_1

    .line 628
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    iget v7, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v5, p1, v7}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    .line 629
    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    goto :goto_1

    .line 634
    :pswitch_3
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 635
    iput v3, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 637
    iget v7, p0, Lcom/miui/home/launcher/DragController;->mScrollZone:I

    if-lt v2, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/miui/home/launcher/DragController;->mScrollZone:I

    sub-int/2addr v7, v8

    if-le v2, v7, :cond_3

    .line 638
    :cond_2
    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 639
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 640
    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 642
    :cond_3
    iput v5, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    goto :goto_1

    .line 647
    :pswitch_4
    invoke-direct {p0, v2, v3, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    goto :goto_1

    .line 650
    :pswitch_5
    invoke-direct {p0, v2, v3, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    .line 651
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 652
    iget-boolean v5, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v5, :cond_4

    .line 653
    int-to-float v5, v2

    int-to-float v7, v3

    invoke-direct {p0, v5, v7}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 655
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    goto :goto_1

    .line 659
    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    .line 804
    return-void
.end method

.method public setDragScoller(Lcom/miui/home/launcher/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    .line 752
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    .line 521
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    .line 795
    return-void
.end method

.method public setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mTouchTranslater:Lcom/miui/home/launcher/DragController$TouchTranslator;

    .line 767
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 756
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 19
    .parameter "b"
    .parameter "outline"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragOffset"
    .parameter "dragRegion"

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 307
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/home/launcher/DragController$DragListener;

    .line 310
    .local v15, listener:Lcom/miui/home/launcher/DragController$DragListener;
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-interface {v15, v0, v1, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragStart(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    goto :goto_0

    .line 313
    .end local v15           #listener:Lcom/miui/home/launcher/DragController$DragListener;
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    int-to-float v0, v4

    move/from16 v16, v0

    .line 314
    .local v16, motionX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    int-to-float v0, v4

    move/from16 v17, v0

    .line 316
    .local v17, motionY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mTouchTranslater:Lcom/miui/home/launcher/DragController$TouchTranslator;

    if-eqz v4, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mTransloateXY:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    int-to-float v8, v8

    aput v8, v4, v5

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mTransloateXY:[F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    int-to-float v8, v8

    aput v8, v4, v5

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mTouchTranslater:Lcom/miui/home/launcher/DragController$TouchTranslator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mTransloateXY:[F

    invoke-interface {v4, v5}, Lcom/miui/home/launcher/DragController$TouchTranslator;->translateTouch([F)V

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mTransloateXY:[F

    const/4 v5, 0x0

    aget v16, v4, v5

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mTransloateXY:[F

    const/4 v5, 0x1

    aget v17, v4, v5

    .line 324
    :cond_3
    move/from16 v0, v16

    float-to-int v4, v0

    sub-int v6, v4, p3

    .line 325
    .local v6, registrationX:I
    move/from16 v0, v17

    float-to-int v4, v0

    sub-int v7, v4, p4

    .line 327
    .local v7, registrationY:I
    if-nez p9, :cond_6

    const/4 v12, 0x0

    .line 328
    .local v12, dragRegionLeft:I
    :goto_1
    if-nez p9, :cond_7

    const/4 v13, 0x0

    .line 330
    .local v13, dragRegionTop:I
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 332
    new-instance v4, Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-direct {v4}, Lcom/miui/home/launcher/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->dragComplete:Z

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    add-int v5, p3, v12

    int-to-float v5, v5

    sub-float v5, v16, v5

    float-to-int v5, v5

    iput v5, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    add-int v5, p4, v13

    int-to-float v5, v5

    sub-float v5, v17, v5

    float-to-int v5, v5

    iput v5, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    move-object/from16 v0, p6

    iput-object v0, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->outline:Landroid/graphics/Bitmap;

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v8, 0x23

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    move-object/from16 v18, v0

    new-instance v3, Lcom/miui/home/launcher/DragView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/miui/home/launcher/DragView;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;IIIIII)V

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    .line 345
    .local v3, dragView:Lcom/miui/home/launcher/DragView;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mDragViewAlpha:I

    int-to-float v4, v4

    const/high16 v5, 0x437f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setAlpha(F)V

    .line 347
    if-eqz p8, :cond_4

    .line 348
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 350
    :cond_4
    if-eqz p9, :cond_5

    .line 351
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p9

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 354
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/DragView;->show(II)V

    .line 355
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v8}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    .line 356
    return-void

    .line 327
    .end local v3           #dragView:Lcom/miui/home/launcher/DragView;
    .end local v12           #dragRegionLeft:I
    .end local v13           #dragRegionTop:I
    :cond_6
    move-object/from16 v0, p9

    iget v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 328
    .restart local v12       #dragRegionLeft:I
    :cond_7
    move-object/from16 v0, p9

    iget v13, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Rect;)V
    .locals 10
    .parameter "d"
    .parameter "dragLayerX"
    .parameter "dragLayerY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    .local v1, b:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget v0, Lcom/miui/home/launcher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/DragController;->createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    .local v2, outline:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 258
    const/4 v8, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V
    .locals 7
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 183
    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Rect;)V

    .line 184
    return-void
.end method

.method public startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Rect;)V
    .locals 12
    .parameter "v"
    .parameter "createOutLine"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 197
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 200
    .local v2, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 203
    if-eqz p2, :cond_3

    sget v1, Lcom/miui/home/launcher/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v2, v1}, Lcom/miui/home/launcher/DragController;->createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 204
    .local v3, outline:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v3, :cond_0

    .line 208
    :cond_2
    iget-object v11, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 209
    .local v11, loc:[I
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v11}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 211
    const/4 v1, 0x0

    aget v4, v11, v1

    .line 212
    .local v4, dragLayerX:I
    const/4 v1, 0x1

    aget v5, v11, v1

    .line 214
    .local v5, dragLayerY:I
    const/4 v9, 0x0

    move-object v1, p0

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    sget v1, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    .line 218
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 203
    .end local v3           #outline:Landroid/graphics/Bitmap;
    .end local v4           #dragLayerX:I
    .end local v5           #dragLayerY:I
    .end local v11           #loc:[I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
