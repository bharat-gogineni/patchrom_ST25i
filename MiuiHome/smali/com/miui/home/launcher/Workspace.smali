.class public Lcom/miui/home/launcher/Workspace;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mDefaultScreenId:J

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mDragViewVisualCenter:[F

.field private mEditingModeAnimating:Z

.field private mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

.field private mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

.field private mEditingScreenChanging:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mInDraggingMode:Z

.field private mInEditingMode:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitThreePinchSize:F

.field private mLastDragScreenID:J

.field private mLastShakeTime:J

.field private mLastShakeX:F

.field private mLastTouchPointerCount:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNewScreenId:J

.field private mOldTransitionType:I

.field private mPositionMapping:[I

.field private mPreviousScreen:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShakeCounter:I

.field private mShowEditingIndicator:Z

.field private mSkipDrawingChild:Z

.field private mSlideBarEditingEnter:Landroid/view/animation/Animation;

.field private mSlideBarEditingExit:Landroid/view/animation/Animation;

.field private mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

.field private mTempCell:[I

.field private mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

.field private mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/Workspace;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput v5, p0, Lcom/miui/home/launcher/Workspace;->mPreviousScreen:I

    .line 102
    iput-wide v6, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 113
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 114
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragViewVisualCenter:[F

    .line 117
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/home/launcher/Workspace;->mSkipDrawingChild:Z

    .line 118
    const/4 v3, 0x7

    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    .line 119
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 120
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    .line 121
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 122
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    .line 138
    iput-wide v6, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 504
    iput v4, p0, Lcom/miui/home/launcher/Workspace;->mLastTouchPointerCount:I

    .line 505
    iput v8, p0, Lcom/miui/home/launcher/Workspace;->mInitThreePinchSize:F

    .line 1062
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    .line 1063
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    .line 1439
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 1757
    iput-wide v6, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    .line 1758
    iput v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    .line 1759
    iput v5, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    .line 162
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 163
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    .local v2, r:Landroid/content/res/Resources;
    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, indicator:Ljava/lang/String;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const-string v3, "bottom_point"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 170
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 171
    const v3, 0x7f0200e4

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 173
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setAnimationCacheEnabled(Z)V

    .line 187
    const/16 v3, 0x1770

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->setMaximumSnapVelocity(I)V

    .line 188
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setClipChildren(Z)V

    .line 189
    return-void

    .line 174
    :cond_1
    const-string v3, "top_point"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    const/16 v3, 0x31

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 177
    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 178
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 179
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    .line 180
    :cond_2
    const-string v3, "slider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 182
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 184
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/ThumbnailViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Workspace;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/Workspace;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Workspace;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Workspace;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->delayedShowPreview(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Workspace;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object v0
.end method

.method private delayedShowPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    if-eqz p1, :cond_3

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    .line 1281
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1282
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1283
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mPreviousScreen:I

    .line 1290
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->show(Z)V

    goto :goto_0

    .line 1286
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    if-eqz v0, :cond_2

    .line 1287
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    goto :goto_1
.end method

.method private getDefaultScreenIndex()I
    .locals 3

    .prologue
    .line 1048
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1049
    .local v0, defaultScreen:I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getDragViewVisualCenter(IIIILcom/miui/home/launcher/DragView;[F)[F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 866
    if-nez p6, :cond_0

    .line 867
    const/4 v0, 0x2

    new-array p6, v0, [F

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 875
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 881
    sub-int/2addr v0, p3

    .line 882
    sub-int/2addr v1, p4

    .line 885
    const/4 v2, 0x0

    invoke-virtual {p5}, Lcom/miui/home/launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p6, v2

    .line 886
    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/miui/home/launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p6, v0

    .line 888
    return-object p6
.end method

.method private getThreePinchSize(Landroid/view/MotionEvent;)F
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4000

    .line 509
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private isDropAllow(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method private isInNormalEditingMode()Z
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInQuickEditingMode()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDropExternal(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0c0031

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 775
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceDropExternalComplate()V

    .line 778
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 819
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :pswitch_1
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v5, v6

    .line 830
    :cond_0
    :goto_0
    return v5

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 786
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 787
    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move-object v0, v7

    .line 821
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 823
    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 825
    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 826
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v1, v2, v0, v7}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    move v5, v6

    .line 828
    goto :goto_0

    .line 793
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 794
    iget v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int v1, v0, v1

    iget v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v0, v2

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v1

    .line 796
    if-eqz v1, :cond_4

    .line 797
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    aget v3, v1, v5

    aget v1, v1, v6

    invoke-virtual {v2, v0, v3, v1}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    goto :goto_1

    .line 799
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move-object v0, v7

    .line 801
    goto :goto_1

    .line 803
    :pswitch_3
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/ResConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 804
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move v5, v6

    .line 805
    goto/16 :goto_0

    .line 807
    :pswitch_4
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    move v5, v6

    .line 808
    goto/16 :goto_0

    .line 810
    :pswitch_5
    invoke-virtual {p1, p2, v7}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 811
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutProviderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 813
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/content/Intent;)V

    move v5, v6

    .line 814
    goto/16 :goto_0

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move-object v0, v7

    .line 817
    goto/16 :goto_1

    .line 778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private registAccelerometer()V
    .locals 3

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1744
    if-eqz v0, :cond_0

    .line 1745
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1746
    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1748
    :cond_0
    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 2

    .prologue
    .line 1341
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    .line 1344
    :cond_0
    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 3
    .parameter "isEditing"
    .parameter "isEntering"

    .prologue
    const/4 v2, 0x0

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    .line 1326
    if-eqz p1, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 1328
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 1329
    if-eqz p2, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1337
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    .line 1338
    return-void

    .line 1333
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 1334
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1335
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    goto :goto_0
.end method

.method private unRegistAccelerometer()V
    .locals 2

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1752
    if-eqz v0, :cond_0

    .line 1753
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1755
    :cond_0
    return-void
.end method

.method private updateWallpaperOffset()V
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffsetDuringSwitchingPreview()V

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateWallpaperOffset(I)V
    .locals 7
    .parameter "scrollRange"

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 378
    .local v2, token:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v1, v3

    .line 380
    .local v1, steps:F
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v0, v3

    .line 382
    .local v0, offsetX:F
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v1, v3, v0, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)V

    .line 384
    .end local v0           #offsetX:F
    .end local v1           #steps:F
    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v1, v6, v4

    goto :goto_0

    .line 380
    .restart local v1       #steps:F
    :cond_2
    iget v5, p0, Lcom/miui/home/launcher/Workspace;->mScrollX:I

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v4

    :goto_2
    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->isDropAllow(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 898
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, openFolder:Landroid/view/View;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 491
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, other:Landroid/view/View;
    const/16 v2, 0x11

    if-ne p2, v2, :cond_2

    .line 494
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 498
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 502
    .end local v1           #other:Landroid/view/View;
    :cond_1
    return-void

    .line 495
    .restart local v1       #other:Landroid/view/View;
    :cond_2
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 496
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 9
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 268
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 269
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIII)V
    .locals 9
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 283
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 284
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 5
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    .line 300
    .local v2, screen:I
    if-gez v2, :cond_0

    .line 301
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->loadScreens(Z)V

    .line 302
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    .line 303
    if-gez v2, :cond_0

    .line 304
    const-string v3, "Launcher.Workspace"

    const-string v4, "The screen must be >= 0; skipping child"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 311
    .local v0, group:Lcom/miui/home/launcher/CellLayout;
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 314
    .local v1, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    if-nez v1, :cond_2

    .line 315
    new-instance v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    invoke-direct {v1, p4, p5, p6, p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 322
    .restart local v1       #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :goto_1
    if-eqz p8, :cond_3

    :goto_2
    invoke-virtual {v0, p1, v3, v1}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    new-instance v3, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    .line 317
    :cond_2
    iput p4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 318
    iput p5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 319
    iput p6, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 320
    iput p7, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 322
    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->computeScroll()V

    .line 389
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()V

    .line 390
    return-void
.end method

.method public createUserFolderWithDragOverlap(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 13
    .parameter "dragItem"
    .parameter "overItem"

    .prologue
    .line 834
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v11

    .line 835
    .local v11, cl:Lcom/miui/home/launcher/CellLayout;
    iget-object v10, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 836
    .local v10, cellXY:[I
    const/4 v1, 0x0

    .line 837
    .local v1, folder:Lcom/miui/home/launcher/FolderIcon;
    invoke-virtual {v11, p2, v10}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    .line 840
    :cond_0
    if-nez v1, :cond_1

    .line 841
    const/4 v0, 0x0

    .line 856
    :goto_0
    return v0

    .line 843
    :cond_1
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 844
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 845
    invoke-virtual {v11, p2}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 846
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 848
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const/4 v0, 0x0

    aget v4, v10, v0

    const/4 v0, 0x1

    aget v5, v10, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 849
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/FolderInfo;

    .line 850
    .local v12, folderInfo:Lcom/miui/home/launcher/FolderInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v4, v12, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 851
    invoke-virtual {v12, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 852
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v4, v12, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 853
    invoke-virtual {v12, p2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 854
    invoke-virtual {v12}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 855
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderIcon;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 856
    const/4 v0, 0x1

    goto :goto_0
.end method

.method deleteScreen(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1399
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1421
    :goto_1
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    goto :goto_0

    .line 1402
    :cond_1
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 1403
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 1404
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1405
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1406
    const-string v1, "pref_default_screen"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1409
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1411
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1412
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1419
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1420
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    goto :goto_1

    .line 1412
    :cond_4
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 1415
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 1416
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v6, -0x1

    .line 399
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDrawingTime()J

    move-result-wide v2

    .line 400
    .local v2, drawingTime:J
    iget-boolean v10, p0, Lcom/miui/home/launcher/Workspace;->mSkipDrawingChild:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    if-eqz v10, :cond_2

    .line 401
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 432
    :cond_1
    return-void

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v9

    .line 405
    .local v9, touchState:I
    iget v10, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    if-ne v10, v6, :cond_6

    if-eqz v9, :cond_3

    const/4 v10, 0x6

    if-eq v9, v10, :cond_3

    const/4 v10, 0x7

    if-ne v9, v10, :cond_6

    :cond_3
    const/4 v4, 0x1

    .line 410
    .local v4, fastDraw:Z
    :goto_0
    if-eqz v4, :cond_7

    .line 411
    iget v10, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 425
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result v1

    .line 426
    .local v1, count:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v5

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_1

    .line 427
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    .line 429
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 426
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 405
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v4           #fastDraw:Z
    .end local v5           #i:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 413
    .restart local v4       #fastDraw:Z
    :cond_7
    iget v10, p0, Lcom/miui/home/launcher/Workspace;->mScrollX:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 414
    .local v8, scrollPos:F
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_9

    .line 415
    .local v6, leftScreen:I
    :goto_3
    add-int/lit8 v7, v6, 0x1

    .line 416
    .local v7, rightScreen:I
    if-ltz v6, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v10

    if-ge v6, v10, :cond_8

    .line 417
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 419
    :cond_8
    int-to-float v10, v6

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_4

    if-ltz v7, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v10

    if-ge v7, v10, :cond_4

    .line 420
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 414
    .end local v6           #leftScreen:I
    .end local v7           #rightScreen:I
    :cond_9
    float-to-int v6, v8

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 517
    .local v0, pointerCount:I
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 519
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mLastTouchPointerCount:I

    if-eq v1, v0, :cond_1

    .line 520
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getThreePinchSize(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mInitThreePinchSize:F

    .line 528
    :cond_0
    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mLastTouchPointerCount:I

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    const/4 v1, 0x0

    .line 534
    :goto_1
    return v1

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mInitThreePinchSize:F

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getThreePinchSize(Landroid/view/MotionEvent;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 524
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public finishCurrentGesture()V
    .locals 0

    .prologue
    .line 538
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->finishCurrentGesture()V

    .line 539
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 624
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 627
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 628
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->focusableViewAvailable(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void

    .line 631
    :cond_1
    if-eq v2, p0, :cond_0

    .line 634
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 635
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 636
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1103
    .local v0, cs:Lcom/miui/home/launcher/CellScreen;
    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1106
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1094
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 1095
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/miui/home/launcher/CellScreen;

    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    .line 1098
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellScreenLayerTypeAndUpdateSurface()I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 1817
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1823
    :pswitch_0
    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isAddSurfaceViewForFpsAccelerate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1826
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 1830
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isCellScreenNoneLayerInNormalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1831
    const/4 v0, 0x0

    .line 1849
    :cond_1
    :goto_0
    return v0

    .line 1841
    :pswitch_1
    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isAddSurfaceViewForFpsAccelerate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    if-nez v1, :cond_2

    .line 1843
    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    .line 1845
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1846
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mSurfaceViewForFpsAccelerate:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v3, v3}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 1817
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const v8, 0x3f6147ae

    const/4 v7, 0x0

    .line 1444
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1445
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1446
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1447
    div-float v3, v2, v9

    .line 1448
    const v4, 0x3e0624dd

    mul-float/2addr v4, v1

    .line 1449
    const v5, 0x3f0a1cac

    mul-float/2addr v2, v5

    .line 1450
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3fc0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 1451
    const/4 v0, 0x0

    .line 1467
    :goto_0
    return v0

    .line 1453
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 1454
    cmpl-float v5, p3, v7

    if-lez v5, :cond_1

    .line 1455
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1457
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x4120

    mul-float/2addr v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1458
    cmpl-float v5, p3, v7

    if-lez v5, :cond_2

    .line 1459
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    neg-float v1, v1

    invoke-virtual {v5, v1, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1461
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1462
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 1463
    neg-float v1, v3

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1464
    mul-float v1, v4, p3

    div-float v3, v4, v9

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1466
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v8, v8, v1, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1467
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    return-object v0
.end method

.method getCurrentScreenId()J
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 771
    const/4 v0, 0x0

    return-object v0
.end method

.method getScreenIdByIndex(I)J
    .locals 3
    .parameter "index"

    .prologue
    const-wide/16 v0, -0x1

    .line 1080
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1081
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-wide v0

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 1086
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method getScreenIndexById(J)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 1075
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1076
    .local v0, index:I
    if-ne v0, v2, :cond_1

    move v0, v2

    .end local v0           #index:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inEditingModeAnimating()Z
    .locals 1

    .prologue
    .line 1347
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    return v0
.end method

.method insertNewScreen(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1425
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1426
    const-string v2, "screenOrder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1429
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sub-int v0, v3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1432
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 1433
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1436
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 1437
    return-void

    :cond_1
    move v0, v1

    .line 1430
    goto :goto_0
.end method

.method isDefaultScreenShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x1

    return v0
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadScreens(Z)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1118
    const-wide/16 v0, 0x0

    .line 1120
    if-nez p1, :cond_1

    .line 1121
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    .line 1123
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 1124
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 1125
    iput-wide v4, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1128
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    move-wide v6, v0

    .line 1133
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "screenOrder ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1140
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1141
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1142
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1143
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1146
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1146
    :cond_3
    if-eqz v1, :cond_4

    .line 1147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1150
    :cond_4
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1154
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 1156
    :goto_1
    if-ltz v1, :cond_5

    .line 1157
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 1158
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->clearAnimation()V

    .line 1159
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1163
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/miui/home/launcher/Workspace;->removeScreensInLayout(II)V

    .line 1166
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_7

    .line 1167
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1168
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 1169
    if-nez v0, :cond_6

    .line 1170
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030007

    invoke-virtual {v0, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 1171
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 1172
    invoke-virtual {v5, v3, v4}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    .line 1173
    const/16 v3, -0x64

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 1174
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1176
    :cond_6
    invoke-virtual {p0, v0, v8}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 1166
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1179
    :cond_7
    if-eqz p1, :cond_9

    .line 1180
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1181
    const-string v1, "pref_default_screen"

    const-wide/16 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 1182
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1192
    :cond_8
    :goto_3
    return-void

    .line 1186
    :cond_9
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    .line 1188
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_8

    .line 1189
    invoke-virtual {p0, v6, v7}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    .line 1190
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 1054
    .local v0, defaultScreenIndex:I
    if-eqz p1, :cond_0

    .line 1055
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)V

    .line 1059
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1060
    return-void

    .line 1057
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1800
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onAttachedToWindow()V

    .line 437
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 438
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    .line 745
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    .line 766
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 767
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 768
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 6
    .parameter "d"

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->isDropAllow(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 750
    .local v1, cs:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 751
    .local v0, cl:Lcom/miui/home/launcher/CellLayout;
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 752
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 753
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 755
    :cond_0
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 756
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 760
    .end local v0           #cl:Lcom/miui/home/launcher/CellLayout;
    .end local v1           #cs:Lcom/miui/home/launcher/CellScreen;
    :cond_2
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 17
    .parameter "d"

    .prologue
    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 681
    move-object/from16 v0, p1

    iget v3, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/home/launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->getDragViewVisualCenter(IIIILcom/miui/home/launcher/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragViewVisualCenter:[F

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v11

    .line 684
    .local v11, cellScreen:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->isEditingNewScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v11

    .line 688
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_1

    .line 689
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/Workspace;->onDropExternal(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v16

    .line 740
    :goto_0
    return v16

    .line 692
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_6

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v9, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 694
    .local v9, cell:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v16

    .line 695
    .local v16, r:Z
    if-nez v16, :cond_3

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 731
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    const/16 v4, 0x12c

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 698
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v4, v4, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v14

    .line 700
    .local v14, originalCellScreen:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v14}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 701
    invoke-virtual {v14}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 702
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 703
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 704
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 705
    instance-of v2, v9, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v2, :cond_4

    move-object v2, v9

    .line 706
    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 711
    .end local v14           #originalCellScreen:Lcom/miui/home/launcher/CellScreen;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v9, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v2, :cond_2

    .line 712
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v10

    .line 713
    .local v10, cellLayout:Lcom/miui/home/launcher/CellLayout;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    .local v13, info:Lcom/miui/home/launcher/ItemInfo;
    move-object v12, v9

    .line 717
    check-cast v12, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 718
    .local v12, hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;
    invoke-virtual {v12}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    .line 719
    .local v15, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget v2, v15, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_2

    .line 720
    new-instance v2, Lcom/miui/home/launcher/Workspace$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v12, v10}, Lcom/miui/home/launcher/Workspace$2;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 735
    .end local v10           #cellLayout:Lcom/miui/home/launcher/CellLayout;
    .end local v12           #hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;
    .end local v13           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v15           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 740
    .end local v9           #cell:Landroid/view/View;
    .end local v16           #r:Z
    :cond_6
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 6
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    .line 916
    if-eqz p3, :cond_2

    .line 917
    if-eq p1, p0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 919
    .local v0, cellLayout:Lcom/miui/home/launcher/CellLayout;
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 920
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 932
    .end local v0           #cellLayout:Lcom/miui/home/launcher/CellLayout;
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 933
    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 940
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 941
    iput-object v5, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 942
    return-void

    .line 923
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_3

    .line 924
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 925
    .restart local v0       #cellLayout:Lcom/miui/home/launcher/CellLayout;
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    .line 928
    .end local v0           #cellLayout:Lcom/miui/home/launcher/CellLayout;
    :cond_3
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    goto :goto_0

    .line 937
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method onEditModeEnterComplate()V
    .locals 3

    .prologue
    .line 1304
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 1305
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1306
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1307
    .local v0, cell:Lcom/miui/home/launcher/CellScreen;
    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterEnd()V

    .line 1305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v0           #cell:Lcom/miui/home/launcher/CellScreen;
    :cond_1
    return-void
.end method

.method onEditModeExitComplate()V
    .locals 3

    .prologue
    .line 1314
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 1315
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)V

    .line 1316
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1317
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1318
    .local v0, cell:Lcom/miui/home/launcher/CellScreen;
    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd()V

    .line 1316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1322
    .end local v0           #cell:Lcom/miui/home/launcher/CellScreen;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const v3, 0x7f030007

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 443
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 444
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingEnter:Landroid/view/animation/Animation;

    .line 445
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingExit:Landroid/view/animation/Animation;

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->loadScreens(Z)V

    .line 447
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->setEditingNewScreenMode()V

    .line 449
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->setEditingNewScreenMode()V

    .line 451
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 543
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v5

    .line 552
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 554
    .local v7, action:I
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 575
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 557
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 558
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 559
    .local v8, currentScreen:Lcom/miui/home/launcher/CellLayout;
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v3, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 455
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mFirstLayout:Z

    if-eqz v1, :cond_0

    .line 456
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 457
    .local v0, width:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)V

    .line 459
    .end local v0           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onMeasure(II)V

    .line 460
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 582
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 584
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 585
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 591
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 593
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 594
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 484
    :goto_0
    return v2

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, openFolder:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 477
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 478
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    .line 482
    .local v0, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 480
    .end local v0           #focusableScreen:I
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1299
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 601
    :cond_0
    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    .line 613
    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    .line 607
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x258

    const/4 v2, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    .line 1765
    sget-boolean v0, Lcom/miui/home/launcher/Workspace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1766
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 1767
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    if-ne v1, v7, :cond_1

    .line 1768
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    .line 1769
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1796
    :goto_0
    return-void

    .line 1772
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1773
    iget-wide v3, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    sub-long v3, v1, v3

    .line 1774
    iget v5, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 1775
    iget-wide v5, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_3

    .line 1776
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1777
    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    .line 1795
    :cond_2
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    goto :goto_0

    .line 1778
    :cond_3
    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    cmp-long v5, v3, v10

    if-gez v5, :cond_4

    .line 1780
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1781
    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    .line 1782
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1783
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop()V

    .line 1784
    iput v7, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1785
    iput-wide v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    goto :goto_1

    .line 1787
    :cond_4
    const-wide/16 v1, 0x384

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    .line 1788
    iput v7, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1789
    iput-wide v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    goto :goto_1

    .line 1791
    :cond_5
    cmp-long v1, v3, v10

    if-lez v1, :cond_2

    .line 1792
    iput v7, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1793
    iput-wide v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1472
    const-string v1, "pref_key_transformation_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1474
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    .line 1479
    :goto_0
    return-void

    .line 1477
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1294
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    .line 980
    .local v0, count:I
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 981
    .local v3, manager:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 983
    .local v4, widgets:Landroid/appwidget/AppWidgetManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 984
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 987
    .local v2, layout:Lcom/miui/home/launcher/CellLayout;
    new-instance v5, Lcom/miui/home/launcher/Workspace$3;

    invoke-direct {v5, p0, v2, p1, v4}, Lcom/miui/home/launcher/Workspace$3;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1045
    .end local v2           #layout:Lcom/miui/home/launcher/CellLayout;
    :cond_0
    return-void
.end method

.method reorderScreens()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1195
    const-string v0, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screens before reorder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1198
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    if-nez v0, :cond_0

    .line 1199
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    move v0, v1

    .line 1200
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1201
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    aput v0, v3, v0

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1205
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 1206
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1207
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1209
    :cond_1
    iput-object v6, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    .line 1211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1213
    const-string v2, "screenOrder"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1214
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1215
    const-string v0, "Launcher.Workspace"

    const-string v1, "Failed to update screens table for reorder, aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :goto_2
    return-void

    .line 1219
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->loadScreens(Z)V

    .line 1221
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens after reorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCurrentScreenById(J)V
    .locals 2
    .parameter "screenId"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 236
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 10
    .parameter "screenIndex"

    .prologue
    .line 212
    iget v8, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    if-eq p1, v8, :cond_3

    iget-object v8, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    if-nez v8, :cond_3

    .line 213
    iget-object v8, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v8, v8, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 216
    iget v8, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    iget v8, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 217
    .local v0, currentId:J
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v6

    .line 219
    .local v6, nextId:J
    iget-object v8, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, v8, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 220
    .local v3, gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 221
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .local v2, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v8, v2

    .line 222
    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 223
    .local v5, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget-wide v8, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v8, v8, v0

    if-nez v8, :cond_2

    .line 224
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 220
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 216
    .end local v0           #currentId:J
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v3           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    .end local v4           #i:I
    .end local v5           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v6           #nextId:J
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 225
    .restart local v0       #currentId:J
    .restart local v2       #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .restart local v3       #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    .restart local v4       #i:I
    .restart local v5       #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .restart local v6       #nextId:J
    :cond_2
    iget-wide v8, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_0

    .line 226
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_2

    .line 231
    .end local v0           #currentId:J
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v3           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    .end local v4           #i:I
    .end local v5           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v6           #nextId:J
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setCurrentScreenInner(I)V

    .line 232
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 913
    return-void
.end method

.method public setEditMode(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1351
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    .line 1352
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    .line 1353
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v5

    .line 1354
    if-nez v0, :cond_3

    if-eqz v5, :cond_3

    move v4, v1

    .line 1355
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    move v3, v1

    .line 1356
    :goto_1
    if-nez p2, :cond_5

    if-nez v3, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 1357
    if-nez p2, :cond_1

    .line 1358
    invoke-direct {p0, v5, v4}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    .line 1359
    if-nez v3, :cond_1

    .line 1360
    if-nez v5, :cond_6

    :goto_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mSkipDrawingChild:Z

    .line 1361
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_8

    .line 1362
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingEnter:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$SeekBarIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1373
    :cond_0
    :goto_5
    if-eqz v4, :cond_d

    .line 1374
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    .line 1375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setOvershootTension(F)V

    .line 1376
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenSnapDuration(I)V

    .line 1377
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)V

    .line 1378
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->registAccelerometer()V

    .line 1385
    :cond_1
    :goto_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge v2, v0, :cond_10

    .line 1386
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1387
    if-eqz v1, :cond_2

    .line 1388
    if-eqz p2, :cond_e

    .line 1389
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(Z)V

    .line 1385
    :cond_2
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_3
    move v4, v2

    .line 1354
    goto :goto_0

    :cond_4
    move v3, v2

    .line 1355
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1356
    goto :goto_2

    :cond_6
    move v1, v2

    .line 1360
    goto :goto_3

    .line 1362
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingExit:Landroid/view/animation/Animation;

    goto :goto_4

    .line 1364
    :cond_8
    if-eqz v5, :cond_a

    const/4 v0, 0x4

    :goto_8
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_9

    .line 1366
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    :goto_9
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1368
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v5, :cond_c

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    :goto_a
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$SeekBarIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :cond_a
    move v0, v2

    .line 1364
    goto :goto_8

    .line 1366
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    goto :goto_9

    .line 1369
    :cond_c
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    goto :goto_a

    .line 1380
    :cond_d
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->unRegistAccelerometer()V

    goto :goto_6

    .line 1391
    :cond_e
    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    sub-int v0, v2, v0

    :goto_b
    invoke-virtual {v1, v5, v0}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZI)V

    goto :goto_7

    :cond_f
    const/high16 v0, -0x8000

    goto :goto_b

    .line 1396
    :cond_10
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 909
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 1804
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setScreenTransitionType(I)V

    .line 1806
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCellScreenLayerTypeAndUpdateSurface()I

    move-result v3

    .line 1807
    .local v3, layerType:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result v1

    .line 1808
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1809
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1810
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/miui/home/launcher/CellScreen;

    if-eqz v4, :cond_0

    .line 1811
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1808
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1814
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 1255
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1257
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 1258
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setThumbnailMeasureSpec(II)V

    .line 1261
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    .line 1262
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    .line 1263
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setAnimationDuration(I)V

    .line 1264
    return-void
.end method

.method public showPreview(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1267
    new-instance v0, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1273
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 3
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 645
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 647
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    .line 649
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 650
    .local v0, focusedChild:Landroid/view/View;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 655
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(IIZ)V

    .line 656
    return-void
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 5
    .parameter "cellInfo"

    .prologue
    .line 659
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 662
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    :goto_0
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 668
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 669
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 671
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 672
    .local v1, current:Lcom/miui/home/launcher/CellLayout;
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 673
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 674
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getTouchTranslator()Lcom/miui/home/launcher/DragController$TouchTranslator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 675
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    sget v4, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, v0, p0, v2, v4}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    .line 676
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    goto :goto_0
.end method

.method public updateWallpaperOffsetDuringSwitchingPreview()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    const/4 v5, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 341
    .local v3, token:Landroid/os/IBinder;
    iget v6, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 342
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    long-to-float v7, v7

    div-float v1, v6, v7

    .line 351
    .local v1, percentage:F
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 354
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ne v6, v11, :cond_1

    move v4, v5

    .line 357
    .local v4, xStep:F
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ne v6, v11, :cond_2

    move v2, v5

    .line 359
    .local v2, scrollX:F
    :goto_1
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v6, v4, v5, v7, v5}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)V

    .line 361
    .end local v1           #percentage:F
    .end local v2           #scrollX:F
    .end local v4           #xStep:F
    :cond_0
    return-void

    .line 354
    .restart local v1       #percentage:F
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v4, v10, v6

    goto :goto_0

    .line 357
    .restart local v4       #xStep:F
    :cond_2
    iget v6, p0, Lcom/miui/home/launcher/Workspace;->mPreviousScreen:I

    int-to-float v6, v6

    sub-float v7, v10, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    mul-float v2, v4, v6

    goto :goto_1
.end method
