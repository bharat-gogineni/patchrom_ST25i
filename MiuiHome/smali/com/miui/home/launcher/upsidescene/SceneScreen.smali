.class public Lcom/miui/home/launcher/upsidescene/SceneScreen;
.super Landroid/widget/FrameLayout;
.source "SceneScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;
    }
.end annotation


# instance fields
.field private mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

.field private mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

.field private mCurrentGestureFinished:Z

.field private mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

.field private mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

.field private mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

.field private mEditModeScaleFactor:F

.field private mExitSceneReceiver:Landroid/content/BroadcastReceiver;

.field private mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

.field private mIsEditMode:Z

.field private mIsLongClicked:Z

.field private mIsStarted:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOldWpOffsetX:F

.field private mOldWpStepX:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

.field private mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

.field private mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

.field private mShowHideAnimating:Z

.field private mTouchSlop:I

.field private mTouchedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    .line 107
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    .line 107
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    .line 107
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/AppsSelectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/EditBottomBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/SceneData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reload()V

    return-void
.end method

.method private clearFocusedSprite()V
    .locals 3

    .prologue
    .line 480
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .line 481
    .local v0, spriteCell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getWidget()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 484
    :cond_0
    return-void
.end method

.method private exitEditModeInner(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 302
    iput-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    .line 304
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->save()V

    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 315
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->widthTo(I)V

    .line 317
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    const-string v2, "scrollX"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 318
    .local v0, dockMoveAnimator:Landroid/animation/Animator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 329
    .end local v0           #dockMoveAnimator:Landroid/animation/Animator;
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->exitEditMode()V

    .line 330
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->exitEditMode()V

    .line 331
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setScaleX(F)V

    .line 322
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setScaleY(F)V

    .line 323
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->animatingRefresh()V

    .line 325
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setOverWidth(I)V

    .line 326
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScrollX(I)V

    goto :goto_0
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setSceneData(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .line 581
    return-void
.end method

.method private switchEditWidgetBar()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-nez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    invoke-virtual {v2, v3, v3}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->showSpanMode(II)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v1

    .line 375
    .local v1, sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    instance-of v2, v1, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 378
    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .line 380
    .local v0, cell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getSpanX()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getSpanY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->showSpanMode(II)V

    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8
    .parameter "widgetInfo"

    .prologue
    .line 408
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 410
    .local v0, appWidgetId:I
    :try_start_0
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v7, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v0, v7}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 418
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 420
    const-string v6, "appWidgetId"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v6, v4, v7}, Lcom/miui/home/launcher/LauncherApplication;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 444
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v3

    .line 412
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, className:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    .local v2, data:Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v6, "appWidgetId"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 438
    :cond_1
    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v6, "android.intent.extra.shortcut.NAME"

    iget-object v7, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->clearFocusedSprite()V

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->setInternalGadget(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 404
    return-void
.end method

.method public animatingRefresh()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$3;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public closeSelectApps()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->removeView(Landroid/view/View;)V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    .line 398
    :cond_0
    return-void
.end method

.method public completeAddAppWidget(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->clearFocusedSprite()V

    .line 449
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 450
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 452
    .local v0, appWidgetId:I
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->setSystemWidget(I)Z

    .line 453
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 454
    return-void
.end method

.method public completeGadgetConfig(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 458
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->updateGadgetConfig(Landroid/os/Bundle;)V

    .line 463
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 197
    iput-boolean v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsLongClicked:Z

    .line 198
    iput-boolean v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z

    .line 199
    iput-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionX:F

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionY:F

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->isBeingDragged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 209
    iput-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    .line 218
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 212
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 213
    .local v0, xDiff:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 214
    .local v1, yDiff:I
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchSlop:I

    if-gt v0, v2, :cond_4

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchSlop:I

    if-le v1, v2, :cond_2

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V

    .line 299
    return-void
.end method

.method public getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    return-object v0
.end method

.method public getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method public getSceneData()Lcom/miui/home/launcher/upsidescene/SceneData;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    return-object v0
.end method

.method public gotoEditMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 255
    iput-boolean v8, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    .line 257
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->calcHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 259
    .local v0, contentTargetHeight:F
    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    .line 262
    .end local v0           #contentTargetHeight:F
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v4, v6}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setPivotX(F)V

    .line 263
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v4, v6}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setPivotY(F)V

    .line 264
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/upsidescene/SceneScreen$2;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$2;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 273
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 274
    .local v3, newWidth:I
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->widthTo(I)V

    .line 276
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v4

    sub-int v4, v3, v4

    neg-int v4, v4

    div-int/lit8 v2, v4, 0x2

    .line 277
    .local v2, leftEdge:I
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    const-string v5, "scrollX"

    new-array v6, v8, [I

    aput v2, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 278
    .local v1, dockMoveAnimator:Landroid/animation/Animator;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 281
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    invoke-virtual {v4, v7}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->setVisibility(I)V

    .line 283
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->gotoEditMode()V

    .line 284
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->gotoEditMode()V

    .line 285
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 286
    return-void
.end method

.method public isCurrentGestureFinished()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    return v0
.end method

.method public isSelectViewShowing()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 537
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyGadgets(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->notifyGadgets(I)V

    .line 576
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->notifyGadgets(I)V

    .line 577
    return-void
.end method

.method public notifyScrollableScreenScrolling()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 177
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildWidth()I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v8}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getWidth()I

    move-result v8

    sub-int v5, v7, v8

    .line 178
    .local v5, scrollRange:I
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v4, v7, v8

    .line 180
    .local v4, rate:F
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getChildWidth()I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v8}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getWidth()I

    move-result v8

    sub-int v1, v7, v8

    .line 181
    .local v1, backScrollRange:I
    int-to-float v7, v1

    mul-float/2addr v7, v4

    float-to-int v0, v7

    .line 182
    .local v0, backScroll:I
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScrollX(I)V

    .line 184
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getChildWidth()I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v8}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getWidth()I

    move-result v8

    sub-int v3, v7, v8

    .line 185
    .local v3, foreScrollRange:I
    int-to-float v7, v3

    mul-float/2addr v7, v4

    float-to-int v2, v7

    .line 186
    .local v2, foreScroll:I
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v7, v2}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScrollX(I)V

    .line 188
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v8}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 189
    .local v6, xStep:F
    iget-boolean v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    if-nez v7, :cond_0

    .line 190
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v7, v6, v9, v4, v9}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)V

    .line 192
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 541
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->closeSelectApps()V

    .line 549
    :goto_0
    return v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    goto :goto_0

    .line 549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 130
    const v1, 0x7f07007d

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/SceneContentView;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    .line 131
    const v1, 0x7f07007a

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    .line 132
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/FixedScreen;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    .line 133
    const v1, 0x7f07007e

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/FixedScreen;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    .line 134
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    .line 135
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/FixedScreen;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 139
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 143
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/SceneScreen$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 145
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchSlop:I

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLongClickable(Z)V

    .line 148
    return-void
.end method

.method public onHideAnimationEnd()V
    .locals 1

    .prologue
    .line 527
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setVisibility(I)V

    .line 528
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    .line 530
    return-void
.end method

.method public onHideAnimationStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    .line 523
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpStepX:F

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpOffsetX:F

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffsetAnimate(FFFF)V

    .line 524
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsLongClicked:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getHome()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0
.end method

.method onPinchIn(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoEditMode()V

    .line 348
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onPinchOut(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectApps(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->clearFocusedSprite()V

    .line 467
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->setShortcuts(Ljava/util/Collection;)Z

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 469
    return-void
.end method

.method public onShowAnimationEnd()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    .line 519
    return-void
.end method

.method public onShowAnimationStart()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setVisibility(I)V

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWpStepX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpStepX:F

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWpOffsetX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpOffsetX:F

    .line 506
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.home.launcher.upsidescene.SceneScreen.EXIT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    .line 572
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    .line 565
    :cond_0
    return-void
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return v1

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsEditMode:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    .line 250
    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsLongClicked:Z

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoEditMode()V

    goto :goto_1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 238
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    if-eqz v1, :cond_0

    .line 585
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 587
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 588
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 589
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 590
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 606
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 2
    .parameter "sprite"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 359
    .local v0, old:Lcom/miui/home/launcher/upsidescene/SpriteView;
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 360
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshEditState()V

    .line 363
    :cond_0
    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshEditState()V

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->switchEditWidgetBar()V

    .line 367
    return-void
.end method

.method public setFocusedSpriteEmpty()V
    .locals 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->clearFocusedSprite()V

    .line 474
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .line 475
    .local v0, spriteCell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->setEmpty()V

    .line 476
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 477
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 154
    return-void
.end method

.method public setSceneData(Lcom/miui/home/launcher/upsidescene/SceneData;)V
    .locals 2
    .parameter "sceneData"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getForegroundScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getBackgroundScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getDock()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    .line 170
    return-void
.end method

.method public setTouchedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 0
    .parameter "sprite"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 355
    return-void
.end method

.method public showSelectApps()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    .line 388
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->init(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->addView(Landroid/view/View;)V

    .line 391
    :cond_0
    return-void
.end method
