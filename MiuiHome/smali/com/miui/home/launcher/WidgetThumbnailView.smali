.class public Lcom/miui/home/launcher/WidgetThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "WidgetThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private final mWidgetCellMeasureHeight:I

.field private final mWidgetCellMeasureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mCoordinatesTemp:[I

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/WidgetThumbnailView;->initWidgetThumbnailView()V

    .line 48
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/WidgetThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mWidgetCellMeasureWidth:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mWidgetCellMeasureHeight:I

    .line 53
    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/WidgetThumbnailView;->setScreenGridSize(II)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WidgetThumbnailView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/WidgetThumbnailView;->setClipToPadding(Z)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/WidgetThumbnailView;->setAnimationCacheEnabled(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method protected createScreen(Landroid/content/Context;IIII)Lcom/miui/home/launcher/ThumbnailScreen;
    .locals 7
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 67
    new-instance v0, Lcom/miui/home/launcher/ThumbnailScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mRowCountPerScreen:I

    iget v3, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mColumnCountPerScreen:I

    iget v4, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mThumbnailWidth:I

    iget v5, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mThumbnailHeight:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/ThumbnailScreen;-><init>(Landroid/content/Context;IIIIZ)V

    .line 72
    .local v0, result:Lcom/miui/home/launcher/ThumbnailScreen;
    return-object v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 2
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 120
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 20
    .parameter "v"

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/WidgetThumbnailView;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 81
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 82
    .local v13, dragInfo:Ljava/lang/Object;
    if-eqz v13, :cond_3

    .line 83
    const/4 v14, 0x0

    .line 84
    .local v14, info:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    instance-of v2, v13, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_1

    move-object v2, v13

    .line 85
    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v14

    .line 87
    :cond_1
    if-eqz v14, :cond_4

    iget-object v2, v14, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, v14, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 90
    .local v16, packageManager:Landroid/content/pm/PackageManager;
    iget-object v2, v14, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 91
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_2

    .line 92
    const-string v2, "WidgetThumbnailView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t load icon drawable 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mCoordinatesTemp:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 98
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 99
    .local v15, oldBounds:Landroid/graphics/Rect;
    iget v2, v14, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mWidgetCellMeasureWidth:I

    mul-int v19, v2, v6

    .line 100
    .local v19, widgetWidth:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int v2, v2, v19

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int v18, v2, v6

    .line 101
    .local v18, widgetHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mCoordinatesTemp:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    div-int/lit8 v6, v19, 0x2

    sub-int v4, v2, v6

    .line 102
    .local v4, screenX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mCoordinatesTemp:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    div-int/lit8 v6, v18, 0x2

    sub-int v5, v2, v6

    .line 103
    .local v5, screenY:I
    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v3, v2, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v14}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v7

    sget v8, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_COPY:I

    const/4 v9, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;IILcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Rect;)V

    .line 106
    invoke-virtual {v3, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #screenX:I
    .end local v5           #screenY:I
    .end local v13           #dragInfo:Ljava/lang/Object;
    .end local v15           #oldBounds:Landroid/graphics/Rect;
    .end local v16           #packageManager:Landroid/content/pm/PackageManager;
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #widgetHeight:I
    .end local v19           #widgetWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getTouchTranslator()Lcom/miui/home/launcher/DragController$TouchTranslator;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 114
    .end local v14           #info:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 108
    .restart local v13       #dragInfo:Ljava/lang/Object;
    .restart local v14       #info:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/home/launcher/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v8, 0x0

    check-cast v13, Lcom/miui/home/launcher/ItemInfo;

    .end local v13           #dragInfo:Ljava/lang/Object;
    invoke-virtual {v13}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    sget v11, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_COPY:I

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v9, p0

    invoke-virtual/range {v6 .. v12}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;ILandroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 125
    return-void
.end method
