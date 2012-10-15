.class public Lcom/miui/home/launcher/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mExpandability:[I

.field private mItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mTmpPos:[I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragLayer;)V
    .locals 9
    .parameter "context"
    .parameter "itemInfo"
    .parameter "widgetView"
    .parameter "cellLayout"
    .parameter "dragLayer"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v4, 0x4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    .line 56
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPos:[I

    .line 58
    const/16 v4, 0x96

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 59
    const/16 v4, 0x18

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 60
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 61
    const v4, 0x3f28f5c3

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    move-object v4, p1

    .line 74
    check-cast v4, Lcom/miui/home/launcher/Launcher;

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 75
    iput-object p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 76
    iput-object p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 77
    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 78
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    .line 79
    iput-object p5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 80
    const v4, 0x7f070064

    invoke-virtual {p5, v4}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/Workspace;

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 82
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 83
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {v4}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    .line 84
    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {v4}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    .line 86
    const v4, 0x7f0200de

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 87
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 90
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 91
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v5, 0x7f0200e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x13

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 94
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 97
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v5, 0x7f0200e1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x15

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 103
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v5, 0x7f0200e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x31

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 106
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 109
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v5, 0x7f0200df

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x51

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 112
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/miui/home/launcher/Launcher$Padding;

    move-result-object v3

    .line 115
    .local v3, p:Lcom/miui/home/launcher/Launcher$Padding;
    iget v4, v3, Lcom/miui/home/launcher/Launcher$Padding;->left:I

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 116
    iget v4, v3, Lcom/miui/home/launcher/Launcher$Padding;->top:I

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 117
    iget v4, v3, Lcom/miui/home/launcher/Launcher$Padding;->right:I

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 118
    iget v4, v3, Lcom/miui/home/launcher/Launcher$Padding;->bottom:I

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 120
    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 121
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .local v0, density:F
    const/high16 v4, 0x41c0

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 130
    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 131
    return-void

    .line 123
    .end local v0           #density:F
    :cond_1
    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v4, v8, :cond_0

    .line 124
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resizeWidgetIfNeeded()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f80

    const v13, 0x3f28f5c3

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 213
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v9}, Lcom/miui/home/launcher/CellLayout;->getCellWidth()I

    move-result v9

    iget-object v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v10}, Lcom/miui/home/launcher/CellLayout;->getWidthGap()I

    move-result v10

    add-int v7, v9, v10

    .line 214
    .local v7, xThreshold:I
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v9}, Lcom/miui/home/launcher/CellLayout;->getCellHeight()I

    move-result v9

    iget-object v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v10}, Lcom/miui/home/launcher/CellLayout;->getHeightGap()I

    move-result v10

    add-int v8, v9, v10

    .line 216
    .local v8, yThreshold:I
    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v9, v9

    mul-float/2addr v9, v14

    int-to-float v10, v7

    div-float/2addr v9, v10

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v10, v10

    sub-float v3, v9, v10

    .line 217
    .local v3, hSpanIncF:F
    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v9, v9

    mul-float/2addr v9, v14

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 219
    .local v6, vSpanIncF:F
    const/4 v2, 0x0

    .line 220
    .local v2, hSpanInc:I
    const/4 v5, 0x0

    .line 221
    .local v5, vSpanInc:I
    const/4 v0, 0x0

    .line 222
    .local v0, cellXInc:I
    const/4 v1, 0x0

    .line 224
    .local v1, cellYInc:I
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v13

    if-lez v9, :cond_0

    .line 225
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 227
    :cond_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v13

    if-lez v9, :cond_1

    .line 228
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 231
    :cond_1
    if-nez v2, :cond_2

    if-nez v5, :cond_2

    .line 284
    :goto_0
    return-void

    .line 235
    :cond_2
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10, v11}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 237
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 241
    .local v4, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v9, :cond_9

    .line 242
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v12

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 243
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    mul-int/lit8 v2, v2, -0x1

    .line 245
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v12

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 246
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 247
    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    .line 254
    :cond_3
    :goto_1
    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v9, :cond_a

    .line 255
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v11

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 256
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 257
    mul-int/lit8 v5, v5, -0x1

    .line 258
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v11

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 259
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 260
    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 268
    :cond_4
    :goto_2
    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v9, :cond_6

    .line 269
    :cond_5
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v2

    iput v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 270
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v9, v0

    iput v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 273
    :cond_6
    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_8

    .line 274
    :cond_7
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v9, v5

    iput v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 275
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    add-int/2addr v9, v1

    iput v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 279
    :cond_8
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v11, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v9, v10, v11}, Lcom/miui/home/launcher/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 282
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10, v12}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 283
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_0

    .line 248
    :cond_9
    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v9, :cond_3

    .line 249
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 250
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 251
    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_1

    .line 261
    :cond_a
    iget-boolean v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_4

    .line 262
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 263
    iget v9, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 264
    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    goto :goto_2
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    iget v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 135
    .local v1, horizontalActive:Z
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v2, v3

    .line 136
    .local v2, verticalActive:Z
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_5

    if-eqz v1, :cond_5

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 138
    iget v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p2, v5, :cond_6

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p2, v5, :cond_7

    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    iput-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 141
    iget-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_8

    :cond_0
    move v0, v3

    .line 144
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    .line 148
    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    .line 149
    iput v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 153
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 154
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_b

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    iget-object v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_c

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 159
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #verticalActive:Z
    :cond_2
    move v1, v4

    .line 134
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v2, v4

    .line 135
    goto/16 :goto_1

    .restart local v2       #verticalActive:Z
    :cond_4
    move v5, v4

    .line 136
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 137
    goto/16 :goto_3

    :cond_6
    move v5, v4

    .line 138
    goto :goto_4

    :cond_7
    move v5, v4

    .line 139
    goto :goto_5

    :cond_8
    move v0, v4

    .line 141
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    :cond_9
    move v3, v7

    .line 152
    goto :goto_7

    :cond_a
    move v3, v7

    .line 153
    goto :goto_8

    :cond_b
    move v3, v7

    .line 154
    goto :goto_9

    :cond_c
    move v6, v7

    .line 155
    goto :goto_a
.end method

.method public commitResizeForDelta(II)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 294
    .local v6, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v2, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v4, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;IIII)V

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->requestLayout()V

    .line 299
    new-instance v0, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 24
    .parameter "animate"

    .prologue
    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 308
    .local v5, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPos:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/miui/home/launcher/CellLayout;->getLocationInWindow([I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/CellLayout;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/CellLayout;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/DragLayer;->getScrollX()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPos:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v16, v19, v20

    .line 310
    .local v16, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/CellLayout;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/CellLayout;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/DragLayer;->getScrollY()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPos:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v18, v19, v20

    .line 312
    .local v18, yOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 314
    .local v7, newWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 317
    .local v6, newHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    add-int v8, v19, v20

    .line 318
    .local v8, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    add-int v9, v19, v20

    .line 321
    .local v9, newY:I
    if-gez v9, :cond_0

    .line 322
    neg-int v0, v9

    move/from16 v19, v0

    sub-int v6, v6, v19

    .line 323
    const/4 v9, 0x0

    .line 325
    :cond_0
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 326
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    sub-int v6, v6, v19

    .line 329
    :cond_1
    if-nez p1, :cond_2

    .line 330
    iput v7, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 331
    iput v6, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 332
    iput v8, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 333
    iput v9, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 367
    :goto_0
    return-void

    .line 340
    :cond_2
    const-string v19, "width"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 341
    .local v14, width:Landroid/animation/PropertyValuesHolder;
    const-string v19, "height"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v6, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 343
    .local v3, height:Landroid/animation/PropertyValuesHolder;
    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v8, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 344
    .local v15, x:Landroid/animation/PropertyValuesHolder;
    const-string v19, "y"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 345
    .local v17, y:Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    const/16 v20, 0x2

    aput-object v15, v19, v20

    const/16 v20, 0x3

    aput-object v17, v19, v20

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 346
    .local v10, oa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 347
    .local v4, leftOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 348
    .local v11, rightOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 349
    .local v13, topOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 350
    .local v2, bottomOa:Landroid/animation/ObjectAnimator;
    new-instance v19, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 356
    .local v12, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 357
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v13, v19, v20

    const/16 v20, 0x2

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 364
    :goto_1
    const-wide/16 v19, 0x96

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 365
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 359
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 361
    :cond_4
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    const/16 v20, 0x3

    aput-object v13, v19, v20

    const/16 v20, 0x4

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public updateDeltas(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 168
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 169
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 175
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 176
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 177
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 170
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 172
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 178
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 180
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 191
    .local v0, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    iget-boolean v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 192
    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 193
    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 198
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 199
    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 200
    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 205
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 207
    return-void

    .line 194
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 195
    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 201
    :cond_3
    iget-boolean v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 202
    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    goto :goto_1
.end method
