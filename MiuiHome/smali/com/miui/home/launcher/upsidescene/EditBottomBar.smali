.class public Lcom/miui/home/launcher/upsidescene/EditBottomBar;
.super Landroid/widget/FrameLayout;
.source "EditBottomBar.java"


# instance fields
.field private mCurrSpanMode:I

.field private mEmptyTip:Landroid/view/ViewGroup;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSpanToView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/home/launcher/upsidescene/EditWidgetBar;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetSizeDrawableIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSpanToView:Ljava/util/HashMap;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mCurrSpanMode:I

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->buildWidgetBars()V

    .line 46
    return-void
.end method

.method private buildWidgetBars()V
    .locals 32

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f06

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, drawableNames:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mWidgetSizeDrawableIds:[I

    .line 58
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v5

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_0

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mWidgetSizeDrawableIds:[I

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    aget-object v29, v5, v9

    const-string v30, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    aput v28, v27, v9

    .line 58
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 64
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v25

    .line 65
    .local v25, widgetMgr:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v25 .. v25}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v26

    .line 67
    .local v26, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v17, mapSpanToWidgets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;>;"
    const/4 v9, 0x0

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_2

    .line 69
    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/appwidget/AppWidgetProviderInfo;

    .line 70
    .local v24, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v21

    .line 71
    .local v21, spanX:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v22

    .line 72
    .local v22, spanY:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanMode(II)I

    move-result v20

    .line 74
    .local v20, spanMode:I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 75
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 79
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 83
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v20           #spanMode:I
    .end local v21           #spanX:I
    .end local v22           #spanY:I
    .end local v24           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v8

    .line 84
    .local v8, gadgets:[I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v16, mapSpanToGadgets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;>;"
    move-object v4, v8

    .local v4, arr$:[I
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v11, :cond_4

    aget v6, v4, v10

    .line 86
    .local v6, gadgetId:I
    invoke-static {v6}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v7

    .line 87
    .local v7, gadgetInfo:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget v0, v7, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    move/from16 v27, v0

    iget v0, v7, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanMode(II)I

    move-result v20

    .line 89
    .restart local v20       #spanMode:I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 90
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 94
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 98
    .end local v6           #gadgetId:I
    .end local v7           #gadgetInfo:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    .end local v20           #spanMode:I
    :cond_4
    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanMode(II)I

    move-result v19

    .line 99
    .local v19, minSpanMode:I
    const/16 v27, 0x4

    const/16 v28, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanMode(II)I

    move-result v18

    .line 101
    .local v18, maxSpanMode:I
    move/from16 v9, v19

    :goto_3
    move/from16 v0, v18

    if-gt v9, v0, :cond_5

    .line 102
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanXFromMode(I)I

    move-result v21

    .line 103
    .restart local v21       #spanX:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanYFromMode(I)I

    move-result v22

    .line 105
    .restart local v22       #spanY:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 106
    .local v15, listWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 108
    .local v14, listGadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    new-instance v23, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;-><init>(Landroid/content/Context;)V

    .line 109
    .local v23, widgetBar:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 110
    const/16 v27, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setVisibility(I)V

    .line 111
    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setWidgets(Ljava/util/List;Ljava/util/List;II)V

    .line 113
    const/16 v27, -0x1

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->addView(Landroid/view/View;II)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSpanToView:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 116
    .end local v14           #listGadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    .end local v15           #listWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v21           #spanX:I
    .end local v22           #spanY:I
    .end local v23           #widgetBar:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    :cond_5
    return-void
.end method

.method private getSpanMode(II)I
    .locals 1
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 168
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 169
    :cond_0
    const/4 v0, -0x1

    .line 171
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getSpanXFromMode(I)I
    .locals 1
    .parameter "spanMode"

    .prologue
    .line 175
    div-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSpanYFromMode(I)I
    .locals 1
    .parameter "spanMode"

    .prologue
    .line 179
    rem-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public calcHeight()I
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    .line 129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->calcHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->requestLayout()V

    .line 124
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mEmptyTip:Landroid/view/ViewGroup;

    .line 53
    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 3
    .parameter "sceneScreen"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 135
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSpanToView:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    .line 136
    .local v1, widgetBar:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    goto :goto_0

    .line 138
    .end local v1           #widgetBar:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    :cond_0
    return-void
.end method

.method public showSpanMode(II)V
    .locals 6
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 146
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mEmptyTip:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->getSpanMode(II)I

    move-result v0

    .line 153
    .local v0, spanMode:I
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mCurrSpanMode:I

    if-eq v2, v5, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSpanToView:Ljava/util/HashMap;

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mCurrSpanMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    .line 155
    .local v1, view:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setVisibility(I)V

    .line 157
    .end local v1           #view:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    :cond_0
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mCurrSpanMode:I

    .line 158
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mCurrSpanMode:I

    if-eq v2, v5, :cond_1

    .line 159
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mSpanToView:Ljava/util/HashMap;

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mCurrSpanMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    .line 160
    .restart local v1       #view:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setCurrentScreen(I)V

    .line 165
    .end local v1           #view:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
    :cond_1
    return-void

    .line 149
    .end local v0           #spanMode:I
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->mEmptyTip:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
