.class public Lcom/miui/home/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CellLayout$1;,
        Lcom/miui/home/launcher/CellLayout$CellInfo;,
        Lcom/miui/home/launcher/CellLayout$LayoutParams;,
        Lcom/miui/home/launcher/CellLayout$StayConfirm;,
        Lcom/miui/home/launcher/CellLayout$DragPos;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCellBackground:Landroid/widget/ImageView;

.field private final mCellHeight:I

.field private final mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private final mCellWidth:I

.field mCellXY:[I

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDisableTouch:Z

.field private mEmptyCellNumber:I

.field private mHCells:I

.field private mHeightGap:I

.field private mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

.field private mLastDownOnOccupiedCell:Z

.field mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutBackupValid:Z

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOccupiedCellBak:[[Landroid/view/View;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mRect:Landroid/graphics/Rect;

.field private mRectTmp:Landroid/graphics/Rect;

.field private mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

.field private mStayConfirmSize:I

.field private mTmpCellLR:[I

.field mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private mTotalCells:I

.field private mVCells:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetCellPaddingBottom:I

.field private final mWidgetCellPaddingTop:I

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/CellLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 74
    new-instance v1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 76
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 77
    new-instance v1, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 78
    new-instance v1, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 80
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 85
    iput-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 95
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    .line 692
    new-instance v1, Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-direct {v1, p0, v4}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    .line 694
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpCellLR:[I

    .line 791
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 930
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 112
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 113
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    .line 114
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingBottom:I

    .line 115
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    .line 116
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    .line 117
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingRight:I

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 121
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    .line 123
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    .line 125
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 126
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    .line 127
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object v1, p1

    .line 131
    check-cast v1, Lcom/miui/home/launcher/Launcher;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 132
    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent;

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, p0, v2, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 134
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    .line 135
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellAt(IIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/CellLayout;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->cellToGapIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/CellLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellAt(I)V

    return-void
.end method

.method private backupLayout()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 796
    return-void
.end method

.method private cellToGapIndex(III)I
    .locals 2
    .parameter "cellX"
    .parameter "cellY"
    .parameter "stayType"

    .prologue
    .line 1001
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p2

    add-int v1, v0, p1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, modified:Z
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_2

    .line 802
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v3, :cond_1

    .line 803
    aget-object v3, p2, v1

    aget-object v3, v3, v2

    aget-object v4, p1, v1

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    .line 804
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 805
    const/4 v0, 0x1

    .line 802
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 801
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    .end local v1           #x:I
    :cond_2
    return v0
.end method

.method private gapToCellIndexes(I[I)V
    .locals 5
    .parameter "gap"
    .parameter "cellLR"

    .prologue
    const/4 v3, -0x1

    .line 1005
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v2, v2, 0x1

    rem-int v1, p1, v2

    .line 1006
    .local v1, gapV:I
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v2, v2, 0x1

    div-int v0, p1, v2

    .line 1007
    .local v0, gapH:I
    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    aput v2, p2, v4

    .line 1008
    const/4 v2, 0x1

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ne v1, v4, :cond_1

    :goto_1
    aput v3, p2, v2

    .line 1009
    return-void

    .line 1007
    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1008
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_1
.end method

.method private makeEmptyCellAt(I)V
    .locals 14
    .parameter "gap"

    .prologue
    const/4 v9, -0x1

    const/4 v13, 0x0

    const/4 v10, 0x1

    .line 696
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpCellLR:[I

    .line 697
    .local v1, cellLR:[I
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 698
    .local v2, cellXY:[I
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->gapToCellIndexes(I[I)V

    .line 699
    aget v4, v1, v10

    .line 700
    .local v4, forward:I
    aget v0, v1, v13

    .line 701
    .local v0, backward:I
    :goto_0
    if-eq v4, v9, :cond_0

    iget v11, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v4, v11, :cond_0

    .line 702
    invoke-direct {p0, v4, v2}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 703
    iget-object v11, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v12, v2, v13

    aget-object v11, v11, v12

    aget v12, v2, v10

    aget-object v11, v11, v12

    if-nez v11, :cond_9

    .line 706
    :cond_0
    iget v11, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ne v4, v11, :cond_1

    move v4, v9

    .line 707
    :cond_1
    :goto_1
    if-eq v0, v9, :cond_2

    if-ltz v0, :cond_2

    .line 708
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 709
    iget-object v11, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v12, v2, v13

    aget-object v11, v11, v12

    aget v12, v2, v10

    aget-object v11, v11, v12

    if-nez v11, :cond_a

    .line 712
    :cond_2
    if-gez v0, :cond_3

    move v0, v9

    .line 714
    :cond_3
    if-eq v4, v9, :cond_e

    if-eq v0, v9, :cond_e

    .line 715
    sub-int v11, v4, v0

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c

    .line 716
    aget v11, v1, v10

    if-eq v4, v11, :cond_b

    aget v7, v1, v10

    .line 730
    .local v7, startPos:I
    :goto_2
    const/4 v6, 0x0

    .line 731
    .local v6, previous:Landroid/view/View;
    aget v11, v1, v13

    if-ne v7, v11, :cond_10

    move v3, v9

    .line 732
    .local v3, delta:I
    :cond_4
    :goto_3
    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v7, v9, :cond_7

    .line 733
    invoke-direct {p0, v7, v2}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 734
    add-int/2addr v7, v3

    .line 735
    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v11, v2, v13

    aget-object v9, v9, v11

    aget v11, v2, v10

    aget-object v8, v9, v11

    .line 737
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_5

    .line 738
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 739
    .local v5, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_4

    iget v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_4

    .line 743
    .end local v5           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_5
    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v11, v2, v13

    aget-object v9, v9, v11

    aget v11, v2, v10

    aput-object v6, v9, v11

    .line 744
    if-eqz v6, :cond_6

    .line 745
    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v11, v2, v13

    aget-object v9, v9, v11

    aget v11, v2, v10

    aput-object v6, v9, v11

    .line 746
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 747
    .restart local v5       #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aget v9, v2, v13

    iput v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 748
    aget v9, v2, v10

    iput v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 750
    .end local v5           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_6
    if-nez v8, :cond_11

    .line 755
    .end local v8           #v:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 756
    .end local v3           #delta:I
    .end local v6           #previous:Landroid/view/View;
    .end local v7           #startPos:I
    :cond_8
    return-void

    .line 704
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 710
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 716
    :cond_b
    aget v7, v1, v13

    goto :goto_2

    .line 717
    :cond_c
    aget v11, v1, v10

    sub-int v11, v4, v11

    aget v12, v1, v13

    sub-int/2addr v12, v0

    if-gt v11, v12, :cond_d

    .line 718
    aget v7, v1, v10

    .restart local v7       #startPos:I
    goto :goto_2

    .line 720
    .end local v7           #startPos:I
    :cond_d
    aget v7, v1, v13

    .restart local v7       #startPos:I
    goto :goto_2

    .line 722
    .end local v7           #startPos:I
    :cond_e
    if-eq v4, v9, :cond_f

    .line 723
    aget v7, v1, v10

    .restart local v7       #startPos:I
    goto :goto_2

    .line 724
    .end local v7           #startPos:I
    :cond_f
    if-eq v0, v9, :cond_8

    .line 725
    aget v7, v1, v13

    .restart local v7       #startPos:I
    goto :goto_2

    .restart local v6       #previous:Landroid/view/View;
    :cond_10
    move v3, v10

    .line 731
    goto :goto_3

    .line 753
    .restart local v3       #delta:I
    .restart local v8       #v:Landroid/view/View;
    :cond_11
    move-object v6, v8

    .line 754
    goto :goto_3
.end method

.method private makeEmptyCellAt(IIII)V
    .locals 0
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 760
    return-void
.end method

.method private onRemoveViews(II)V
    .locals 7
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1198
    if-gez p1, :cond_2

    .line 1208
    :cond_0
    return-void

    .line 1199
    .end local p2
    .local v1, count:I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_0

    .line 1200
    add-int v3, p1, p2

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1201
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/miui/home/launcher/Folder;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    if-eq v0, v3, :cond_1

    .line 1202
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1203
    .local v2, params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1204
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .end local v2           #params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_1
    move v1, p2

    .line 1207
    .end local p2
    .restart local v1       #count:I
    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .restart local p2
    :cond_2
    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_0
.end method

.method private positionIndexToCell(I[I)V
    .locals 2
    .parameter "index"
    .parameter "cellXY"

    .prologue
    .line 996
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v1, p1, v1

    aput v1, p2, v0

    .line 997
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int v1, p1, v1

    aput v1, p2, v0

    .line 998
    return-void
.end method

.method private relayoutByOccupiedCells()V
    .locals 9

    .prologue
    .line 771
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 772
    .local v0, accessTag:J
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v6, v7, :cond_2

    .line 773
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v5, v7, :cond_1

    .line 774
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v7, v7, v5

    aget-object v4, v7, v6

    .line 775
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 776
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 777
    .local v3, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget-wide v7, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v0

    if-gez v7, :cond_0

    .line 778
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 779
    .local v2, info:Lcom/miui/home/launcher/ItemInfo;
    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 780
    iput v6, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 781
    iput v5, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 782
    iput v6, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 783
    iput-wide v0, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 773
    .end local v2           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v3           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 772
    .end local v4           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 788
    .end local v5           #x:I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 789
    return-void
.end method

.method private rollbackLayout()V
    .locals 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    .line 768
    :cond_0
    return-void
.end method

.method private saveCurrentLayout()V
    .locals 12

    .prologue
    .line 840
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 841
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    .line 843
    .local v7, accessTag:J
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v6, v1, :cond_2

    .line 844
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v5, v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v5

    aget-object v11, v1, v6

    .line 846
    .local v11, v:Landroid/view/View;
    if-eqz v11, :cond_0

    .line 847
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 848
    .local v9, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget-wide v1, v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_0

    .line 849
    iput-wide v7, v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 850
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    if-eq v11, v1, :cond_0

    .line 851
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 852
    .local v0, info:Lcom/miui/home/launcher/ItemInfo;
    iput v5, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 853
    iput v6, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 854
    const-wide/16 v1, -0x64

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    .end local v0           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v9           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 844
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 843
    .end local v11           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 865
    .end local v5           #x:I
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 866
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mContext:Landroid/content/Context;

    const-string v2, "com.miui.home.launcher.settings"

    invoke-static {v1, v2, v10}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 868
    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    .line 178
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 179
    .local v0, cellParams:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-boolean v2, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->regenerateId:Z

    .line 181
    instance-of v1, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 182
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ItemIcon;->setEnableTranslateAnimation(Z)V

    .line 185
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/Folder;

    if-nez v1, :cond_1

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 189
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method

.method public alignIconsToTop()V
    .locals 12

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .local v6, dstV:I
    move v5, v6

    .local v5, dstH:I
    move v10, v6

    .local v10, srcV:I
    move v9, v6

    .line 1229
    .local v9, srcH:I
    const/4 v10, 0x0

    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v10, v0, :cond_8

    .line 1230
    const/4 v9, 0x0

    :goto_2
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v9, v0, :cond_7

    .line 1231
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v9

    aget-object v11, v0, v10

    .line 1232
    .local v11, sv:Landroid/view/View;
    instance-of v0, v11, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_6

    .line 1234
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    instance-of v0, v0, Lcom/miui/home/launcher/ItemIcon;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    if-eqz v0, :cond_3

    .line 1235
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt v5, v0, :cond_2

    .line 1236
    const/4 v5, 0x0

    .line 1237
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1240
    :cond_3
    if-ne v9, v5, :cond_4

    if-eq v10, v6, :cond_5

    .line 1241
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aput-object v11, v0, v6

    .line 1242
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    aput-object v1, v0, v10

    .line 1243
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1244
    .local v7, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput v5, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1245
    iput v6, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1246
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    const-wide/16 v1, -0x64

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    .end local v7           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt v5, v0, :cond_6

    .line 1253
    const/4 v5, 0x0

    .line 1254
    add-int/lit8 v6, v6, 0x1

    .line 1230
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1229
    .end local v11           #sv:Landroid/view/View;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1259
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->performHapticFeedback(II)Z

    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.settings"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1266
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1265
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1264
    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public buildDrawingCache(Z)V
    .locals 0
    .parameter "autoScale"

    .prologue
    .line 1279
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->buildDrawingCache(Z)V

    .line 1280
    return-void
.end method

.method public cancelLongPress()V
    .locals 4

    .prologue
    .line 143
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v3}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 147
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 148
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 340
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 341
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 342
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1037
    instance-of v0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    return v0
.end method

.method clearBackupLayout()V
    .locals 4

    .prologue
    .line 872
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_1

    .line 873
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v0, v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 872
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v0           #x:I
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 878
    return-void
.end method

.method clearCellBackground()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 630
    return-void
.end method

.method public destroyDrawingCache()V
    .locals 0

    .prologue
    .line 1274
    invoke-super {p0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1275
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method findNearestVacantArea(IIIIZ)[I
    .locals 17
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"

    .prologue
    .line 500
    if-nez p5, :cond_1

    mul-int v11, p3, p4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    if-le v11, v12, :cond_1

    const/4 v5, 0x0

    .line 535
    :cond_0
    :goto_0
    return-object v5

    .line 503
    :cond_1
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 504
    .local v5, bestXY:[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 505
    .local v6, cellXY:[I
    const-wide v3, 0x7fefffffffffffffL

    .line 510
    .local v3, bestDistance:D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int v9, v11, p3

    .local v9, x:I
    :goto_1
    if-ltz v9, :cond_6

    .line 511
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int v10, v11, p4

    .local v10, y:I
    :goto_2
    if-ltz v10, :cond_5

    .line 513
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v6}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 514
    const/4 v11, 0x0

    aget v11, v6, v11

    sub-int v11, v11, p1

    int-to-double v11, v11

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const/4 v13, 0x1

    aget v13, v6, v13

    sub-int v13, v13, p2

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double v7, v11, v13

    .line 515
    .local v7, distance:D
    cmpl-double v11, v7, v3

    if-ltz v11, :cond_3

    .line 511
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 520
    :cond_3
    if-nez p5, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v11

    if-nez v11, :cond_2

    .line 525
    :cond_4
    move-wide v3, v7

    .line 526
    const/4 v11, 0x0

    aput v9, v5, v11

    .line 527
    const/4 v11, 0x1

    aput v10, v5, v11

    goto :goto_3

    .line 510
    .end local v7           #distance:D
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 532
    .end local v10           #y:I
    :cond_6
    const-wide v11, 0x7fefffffffffffffL

    cmpg-double v11, v3, v11

    if-ltz v11, :cond_0

    .line 535
    const/4 v5, 0x0

    goto :goto_0
.end method

.method findNearestVacantAreaByCellPos(IIIIZ)[I
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1032
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1042
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getChildVisualPosByTag(Ljava/lang/Object;[I)Z
    .locals 6
    .parameter "tag"
    .parameter "outPos"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 540
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v5, :cond_2

    .line 541
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v5, :cond_1

    .line 542
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v1

    aget-object v0, v5, v2

    .line 543
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    aput v1, p2, v4

    .line 545
    aput v2, p2, v3

    .line 550
    .end local v0           #v:Landroid/view/View;
    .end local v1           #x:I
    :goto_2
    return v3

    .line 541
    .restart local v0       #v:Landroid/view/View;
    .restart local v1       #x:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 540
    .end local v0           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #x:I
    :cond_2
    move v3, v4

    .line 550
    goto :goto_2
.end method

.method public getEmptyCellNumber()I
    .locals 1

    .prologue
    .line 1219
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 889
    .local v1, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 890
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, flag:Z
    iget v3, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 893
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 892
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 895
    :cond_1
    if-eqz v0, :cond_4

    .line 899
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 900
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 901
    const/4 v0, 0x0

    .line 902
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 903
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 902
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 896
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 890
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 905
    :cond_5
    if-eqz v0, :cond_8

    .line 909
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 910
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v4, :cond_a

    .line 911
    const/4 v0, 0x0

    .line 912
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 913
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 912
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 906
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 900
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 915
    :cond_9
    if-eqz v0, :cond_c

    .line 919
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 920
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_e

    .line 921
    const/4 v0, 0x0

    .line 922
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 923
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    .line 922
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 916
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 925
    :cond_d
    if-eqz v0, :cond_f

    .line 928
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 926
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 920
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return v0
.end method

.method getScreenId()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-wide v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    return v0
.end method

.method isCellOccupied(IIII)Z
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 473
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p4, :cond_1

    .line 474
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    add-int v3, p2, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 475
    const/4 v2, 0x1

    .line 479
    .end local v1           #j:I
    :goto_2
    return v2

    .line 473
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v1           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 14
    .parameter "child"

    .prologue
    const/high16 v13, 0x4000

    const/4 v3, 0x0

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 393
    .local v0, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v4, :cond_2

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    div-int v2, v4, v5

    .line 395
    .local v2, widgetCellHeight:I
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getWidgetCellMinHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 396
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int v1, v4, v5

    .line 397
    .local v1, widgetCellWidth:I
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getWidgetCellMinWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 398
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 403
    .end local v1           #widgetCellWidth:I
    .end local v2           #widgetCellHeight:I
    :goto_0
    iget-boolean v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getId()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    iget v5, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget v5, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 405
    iput-boolean v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->regenerateId:Z

    .line 408
    :cond_1
    iget v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 409
    .local v11, childWidthMeasureSpec:I
    iget v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 411
    .local v12, childheightMeasureSpec:I
    invoke-virtual {p1, v11, v12}, Landroid/view/View;->measure(II)V

    .line 412
    return-void

    .line 400
    .end local v11           #childWidthMeasureSpec:I
    .end local v12           #childheightMeasureSpec:I
    :cond_2
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    iget v10, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x1

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 624
    .local v0, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 625
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 626
    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 814
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 815
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->outline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->outline:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 817
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 822
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 825
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 826
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 827
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    iget-boolean v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 831
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 832
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 834
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 837
    :cond_0
    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 12
    .parameter "d"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 934
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 935
    .local v3, spanX:I
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 936
    .local v4, spanY:I
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int v1, v0, v1

    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v0, v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v6

    .line 937
    .local v6, cellPos:[I
    if-eqz v6, :cond_0

    .line 938
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 939
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-nez v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 941
    .local v7, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aget v0, v6, v5

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 942
    aget v0, v6, v9

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 943
    iput v3, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 944
    iput v4, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 945
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v5, v7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 946
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 947
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v6, v5

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 948
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v6, v9

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 953
    .end local v7           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_2

    .line 988
    :cond_1
    :goto_0
    return-void

    .line 957
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    .line 958
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v9

    aget-object v8, v0, v1

    .line 960
    .local v8, occupiedView:Landroid/view/View;
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eq v8, v0, :cond_3

    .line 961
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 965
    :cond_3
    if-eqz v8, :cond_7

    instance-of v0, v8, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_7

    .line 966
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 967
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    .line 968
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v9, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 979
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->set(Lcom/miui/home/launcher/CellLayout$DragPos;)V

    .line 981
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 982
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    #setter for: Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;
    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->access$802(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget$DragObject;

    .line 983
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v0, v10, :cond_9

    instance-of v0, v8, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_4

    :cond_4
    int-to-long v0, v11

    :goto_2
    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 969
    :cond_5
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 970
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v1, 0x3

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 972
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v10, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 974
    :cond_7
    if-nez v8, :cond_8

    .line 975
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v5, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 977
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v1, 0x4

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 983
    :cond_9
    const-wide/16 v0, 0x96

    goto :goto_2
.end method

.method onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 10
    .parameter "d"
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 555
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v8

    .line 557
    .local v8, r:Z
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 559
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 603
    .end local v8           #r:Z
    :goto_0
    return v8

    .line 562
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int v1, v0, v1

    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v0, v2

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v9

    .line 564
    .local v9, targetXY:[I
    if-nez v9, :cond_1

    move v8, v5

    .line 565
    goto :goto_0

    .line 568
    :cond_1
    if-nez p2, :cond_2

    .line 569
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v9, v5

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 570
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v9, v8

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_0

    .line 574
    :cond_2
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    aget v0, v9, v5

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    if-ne v0, v1, :cond_3

    aget v0, v9, v8

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 577
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 578
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0, v0, p2, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    goto :goto_0

    .line 582
    :cond_3
    if-eqz p2, :cond_4

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ItemInfo;

    .line 584
    .local v6, info:Lcom/miui/home/launcher/ItemInfo;
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 585
    aget v0, v9, v5

    iput v0, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 586
    aget v0, v9, v8

    iput v0, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 587
    const-wide/16 v0, -0x64

    iput-wide v0, v6, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 589
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 590
    .local v7, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aget v0, v9, v5

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 591
    aget v0, v9, v8

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 592
    iput-boolean v5, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 593
    iput-boolean v8, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 594
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 595
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, v7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 601
    .end local v6           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v7           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 602
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    goto/16 :goto_0

    .line 597
    .restart local v6       #info:Lcom/miui/home/launcher/ItemInfo;
    .restart local v7       #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 598
    invoke-virtual {p0, v7, p2, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    goto :goto_1
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 610
    .local v0, params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-boolean v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 611
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 612
    invoke-virtual {p0, v0, p1, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 614
    .end local v0           #params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 205
    .local v1, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 206
    .local v2, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    const/4 v11, 0x0

    .line 208
    .local v11, result:Z
    if-nez v1, :cond_9

    .line 209
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 210
    .local v7, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/home/launcher/CellLayout;->mScrollX:I

    add-int v12, v14, v15

    .line 211
    .local v12, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/home/launcher/CellLayout;->mScrollY:I

    add-int v13, v14, v15

    .line 212
    .local v13, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v5

    .line 214
    .local v5, count:I
    const/4 v6, 0x0

    .line 215
    .local v6, found:Z
    add-int/lit8 v8, v5, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 218
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 219
    :cond_0
    invoke-virtual {v4, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 221
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 222
    .local v10, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-object v4, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 223
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 224
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 225
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 226
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 227
    const/4 v6, 0x1

    .line 233
    .end local v4           #child:Landroid/view/View;
    .end local v10           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 235
    if-nez v6, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 237
    .local v3, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    .line 239
    const/4 v14, 0x0

    iput-object v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 240
    const/4 v14, 0x0

    aget v14, v3, v14

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 241
    const/4 v14, 0x1

    aget v14, v3, v14

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 242
    const/4 v14, 0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 243
    const/4 v14, 0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 260
    .end local v3           #cellXY:[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    move-object/from16 v16, v0

    if-eqz v6, :cond_8

    const-wide/16 v14, 0xc8

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/miui/home/launcher/OnLongClickAgent;->setEditingTimeout(J)V

    .line 271
    .end local v5           #count:I
    .end local v6           #found:Z
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #i:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/miui/home/launcher/OnLongClickAgent;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 272
    const/4 v11, 0x1

    :cond_3
    move v14, v11

    .line 275
    :goto_4
    return v14

    .line 215
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #count:I
    .restart local v6       #found:Z
    .restart local v7       #frame:Landroid/graphics/Rect;
    .restart local v8       #i:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 246
    .end local v4           #child:Landroid/view/View;
    :cond_5
    iget-object v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/ItemInfo;

    .line 247
    .local v9, info:Lcom/miui/home/launcher/ItemInfo;
    if-nez v9, :cond_6

    .line 249
    const/4 v14, 0x0

    goto :goto_4

    .line 253
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v14

    if-eqz v14, :cond_7

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_7

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v15, 0x5

    if-eq v14, v15, :cond_7

    const/4 v11, 0x1

    :goto_5
    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 260
    .end local v9           #info:Lcom/miui/home/launcher/ItemInfo;
    :cond_8
    const-wide/16 v14, 0x320

    goto :goto_2

    .line 263
    .end local v5           #count:I
    .end local v6           #found:Z
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #i:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_9
    const/4 v14, 0x1

    if-ne v1, v14, :cond_2

    .line 264
    const/4 v14, 0x0

    iput-object v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 265
    const/4 v14, -0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 266
    const/4 v14, -0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 267
    const/4 v14, 0x0

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 268
    const/4 v14, 0x0

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v11

    .line 418
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 419
    invoke-virtual {p0, v12}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 420
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 422
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 424
    .local v13, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget v9, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    .line 425
    .local v9, childLeft:I
    iget v10, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    .line 427
    .local v10, childTop:I
    iget v0, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 429
    iget-boolean v0, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 432
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 433
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/CellLayout;->getLocationOnScreen([I)V

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 418
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 440
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 362
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 363
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 365
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 366
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 368
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 369
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 372
    :cond_1
    invoke-virtual {p0, v6, v3}, Lcom/miui/home/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 374
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-gt v7, v11, :cond_2

    move v7, v8

    :goto_0
    iput v7, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 379
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-gt v7, v11, :cond_3

    :goto_1
    iput v8, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    .line 384
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 385
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 386
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->measureChild(Landroid/view/View;)V

    .line 385
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 374
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v4           #i:I
    :cond_2
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    sub-int v7, v6, v7

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingRight:I

    sub-int/2addr v7, v9

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v9, v10

    sub-int/2addr v7, v9

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v9, v9, -0x1

    div-int/2addr v7, v9

    goto :goto_0

    .line 379
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    add-int/lit8 v8, v8, -0x1

    div-int v8, v7, v8

    goto :goto_1

    .line 389
    .restart local v1       #count:I
    .restart local v4       #i:I
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 285
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method pointToCell(II[I)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v3

    .line 309
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v4

    .line 311
    aget v0, p3, v3

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v3

    .line 312
    aget v0, p3, v4

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v4

    .line 313
    return-void
.end method

.method public preRemoveView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 1214
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 1215
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 1216
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1182
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1183
    return-void
.end method

.method public removeChild(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget-object v0, v1, v2

    .line 1154
    .local v0, v:Landroid/view/View;
    sget-boolean v1, Lcom/miui/home/launcher/CellLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1155
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1156
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1163
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1164
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1165
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1187
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1188
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1189
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1170
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1171
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1193
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1194
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1195
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1175
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1176
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1177
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 200
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method setContainerId(I)V
    .locals 1
    .parameter "container"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 160
    return-void
.end method

.method setDisableTouch(Z)V
    .locals 0
    .parameter "isDisable"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    .line 280
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "isEditing"

    .prologue
    .line 167
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 294
    return-void
.end method

.method setScreenId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput-wide p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1284
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1285
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1286
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1287
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1289
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_6

    .line 1290
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1291
    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_1

    .line 1292
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1293
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1294
    iget-object v6, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1295
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1297
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1298
    :cond_1
    instance-of v6, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v6, :cond_2

    .line 1299
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1301
    :cond_2
    instance-of v6, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v6, :cond_5

    .line 1302
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1303
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1305
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1307
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 1310
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 1312
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1314
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1316
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v6, :cond_0

    .line 1317
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 1318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1322
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1323
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_7

    .line 1325
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1327
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home_screen{apps:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgets:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1329
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_8

    .line 1331
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1333
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gidgets:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folders:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1335
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Z)V
    .locals 1
    .parameter "cell"
    .parameter "remove"

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 444
    return-void
.end method

.method updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V
    .locals 4
    .parameter "params"
    .parameter "cell"
    .parameter "remove"

    .prologue
    .line 447
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    if-eq p2, v2, :cond_4

    .line 448
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .local v0, x:I
    :goto_0
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    if-lt v0, v2, :cond_4

    .line 449
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .local v1, y:I
    :goto_1
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    if-lt v1, v2, :cond_3

    .line 450
    if-eqz p3, :cond_1

    .line 455
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-ne p2, v2, :cond_0

    .line 456
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 457
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 449
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 462
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 464
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    goto :goto_2

    .line 448
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 469
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_4
    return-void
.end method
