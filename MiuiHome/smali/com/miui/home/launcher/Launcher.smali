.class public final Lcom/miui/home/launcher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$WallpaperChangedIntentReceiver;,
        Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;,
        Lcom/miui/home/launcher/Launcher$ScreenOnOffReceiver;,
        Lcom/miui/home/launcher/Launcher$Padding;,
        Lcom/miui/home/launcher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field private static final DISABLE_TOUCH_IMPROVE:[B

.field private static final ENABLE_TOUCH_IMPROVE:[B

.field private static mConfigurationChanged:Z

.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsHardwareAccelerated:Z


# instance fields
.field private mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

.field private mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

.field private mDeleteZoneEditingExit:Landroid/view/animation/Animation;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnim:Landroid/animation/ValueAnimator;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mDragLayerBackground:Lcom/miui/home/launcher/Background;

.field private mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

.field private mEditingState:I

.field private mErrorBar:Lcom/miui/home/launcher/ErrorBar;

.field private mFolderCling:Lcom/miui/home/launcher/FolderCling;

.field public mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSeats:Lcom/miui/home/launcher/HotSeats;

.field private mHotseatEditingEnter:Landroid/view/animation/Animation;

.field private mHotseatEditingExit:Landroid/view/animation/Animation;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mInstallPresetAppDialog:Landroid/app/ProgressDialog;

.field private mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mLastPausedTime:J

.field private mLoadingProgressDialog:Landroid/app/ProgressDialog;

.field mLockSettings:Lmiui/security/ChooseLockSettingsHelper;

.field private mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOnResumeExpectedForActivityResult:Z

.field private mPositionSnap:Landroid/view/View;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSceneAnimating:Z

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSceneScreenLoading:Landroid/view/ViewGroup;

.field private mScreen:Landroid/view/View;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTmpPoint:Landroid/graphics/Point;

.field private mUpsideScene:Lcom/miui/home/launcher/upsidescene/SceneData;

.field private mWaitingForResult:Z

.field private final mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWidgetEditingEnter:Landroid/view/animation/Animation;

.field private mWidgetEditingExit:Landroid/view/animation/Animation;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

.field private mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;

.field private mWorkspaceLoading:Z

.field private mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 245
    sput-boolean v2, Lcom/miui/home/launcher/Launcher;->mConfigurationChanged:Z

    .line 2221
    new-array v0, v3, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v2

    sput-object v0, Lcom/miui/home/launcher/Launcher;->DISABLE_TOUCH_IMPROVE:[B

    .line 2222
    new-array v0, v3, [B

    const/16 v1, 0x31

    aput-byte v1, v0, v2

    sput-object v0, Lcom/miui/home/launcher/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 174
    new-instance v0, Lcom/miui/home/launcher/Launcher$ScreenOnOffReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$ScreenOnOffReceiver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/miui/home/launcher/Launcher$WallpaperChangedIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$WallpaperChangedIntentReceiver;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 204
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 206
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    .line 208
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 211
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 212
    const/4 v0, 0x7

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 221
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Lcom/miui/home/launcher/Launcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$1;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 420
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTmpPoint:Landroid/graphics/Point;

    .line 517
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1490
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    .line 1872
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 619
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 621
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Launcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Launcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Launcher;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/Launcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)V

    return-void
.end method

.method private checkForLocaleChange()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 322
    new-instance v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;

    const/4 v11, 0x0

    invoke-direct {v3, v11}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/miui/home/launcher/Launcher$1;)V

    .line 323
    .local v3, localeConfiguration:Lcom/miui/home/launcher/Launcher$LocaleConfiguration;
    invoke-static {p0, v3}, Lcom/miui/home/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 327
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 328
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, locale:Ljava/lang/String;
    iget v7, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 331
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 333
    .local v4, mcc:I
    iget v8, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 334
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 336
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-ne v4, v7, :cond_0

    if-eq v5, v8, :cond_1

    :cond_0
    move v2, v9

    .line 338
    .local v2, localeChanged:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 339
    iput-object v1, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 340
    iput v4, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 341
    iput v5, v3, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 343
    invoke-static {p0, v3}, Lcom/miui/home/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 346
    :goto_1
    return v9

    .end local v2           #localeChanged:Z
    :cond_1
    move v2, v10

    .line 336
    goto :goto_0

    .restart local v2       #localeChanged:Z
    :cond_2
    move v9, v10

    .line 346
    goto :goto_1
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 657
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 841
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 842
    .local v10, extras:Landroid/os/Bundle;
    const-string v0, "appWidgetId"

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 846
    .local v9, appWidgetId:I
    if-eq v9, v2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v11, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 851
    .local v11, providerInfo:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 854
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v9, v11}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 856
    .local v1, launcherInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    iget-wide v2, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 857
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget v6, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v7, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object v2, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, p0, v9, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 867
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v9, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 868
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 870
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v4, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v5, v11, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v6, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v7, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 782
    const/4 v9, 0x0

    .line 783
    .local v9, cellX:I
    const/4 v10, 0x0

    .line 784
    .local v10, cellY:I
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v0, :cond_0

    .line 785
    iget-object v12, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v12, Lcom/miui/home/launcher/ShortcutProviderInfo;

    .line 786
    .local v12, providerInfo:Lcom/miui/home/launcher/ShortcutProviderInfo;
    iget v9, v12, Lcom/miui/home/launcher/ShortcutProviderInfo;->cellX:I

    .line 787
    iget v10, v12, Lcom/miui/home/launcher/ShortcutProviderInfo;->cellY:I

    .line 789
    .end local v12           #providerInfo:Lcom/miui/home/launcher/ShortcutProviderInfo;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 790
    invoke-direct {p0, v9, v10, v4}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v7

    .line 791
    .local v7, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v7, :cond_2

    .line 800
    :cond_1
    :goto_0
    return-void

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 794
    .local v8, cellLayout:Lcom/miui/home/launcher/CellLayout;
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1, v7}, Lcom/miui/home/launcher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v11

    .line 795
    .local v11, info:Lcom/miui/home/launcher/ShortcutInfo;
    if-eqz v11, :cond_1

    .line 796
    invoke-virtual {p0, v8, v11}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    .line 797
    .local v1, shortcut:Landroid/view/View;
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v2, v7, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v3, v7, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createFolderIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 759
    const v0, 0x7f03000d

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method private createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 772
    const v0, 0x7f030002

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    return-object v0
.end method

.method private enableTouchImprove(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2226
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 2227
    const-string v0, "/proc/touch_ramp"

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2228
    const-string v0, "/proc/touch_idle_lock"

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2230
    :cond_0
    return-void
.end method

.method private findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "showError"

    .prologue
    const/4 v3, 0x1

    .line 1313
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 8
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showError"

    .prologue
    .line 1317
    const-wide/16 v1, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Launcher;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1321
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1323
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v6

    .line 1342
    :goto_1
    return-object v0

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 1327
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIIIZ)[I

    move-result-object v1

    .line 1328
    if-nez v1, :cond_3

    .line 1329
    if-eqz p7, :cond_2

    .line 1330
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    move-object v0, v6

    .line 1332
    goto :goto_1

    .line 1335
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    .line 1336
    aget v2, v1, v5

    iput v2, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 1337
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 1338
    iput p5, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 1339
    iput p6, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 1340
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    goto :goto_1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goOutOldLayer()V
    .locals 5

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    .line 1672
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 1675
    :cond_0
    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1676
    return-void
.end method

.method private installPresetApp(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 1493
    const-string v0, ""

    const v1, 0x7f0c002d

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    .line 1494
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1495
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/Launcher$3;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1508
    return-void
.end method

.method public static final isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 312
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->mIsHardwareAccelerated:Z

    return v0
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 7
    .parameter "state"

    .prologue
    .line 544
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 545
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .local v0, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v3, v0

    .line 546
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 547
    .local v2, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    packed-switch p1, :pswitch_data_0

    .line 544
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 549
    :pswitch_0
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 552
    :pswitch_1
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 555
    :pswitch_2
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 558
    :pswitch_3
    iget-wide v3, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 559
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 563
    :pswitch_4
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 566
    :pswitch_5
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 569
    :pswitch_6
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 572
    :pswitch_7
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 577
    .end local v0           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v2           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyGadgets(I)V

    .line 580
    :cond_2
    return-void

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    .line 1416
    return-void
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 1813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1814
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1815
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0c000f

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1817
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1818
    return-void
.end method

.method private prepairSceneMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1028
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1033
    :goto_0
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1034
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1035
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1036
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x52

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1038
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1040
    return v3

    .line 1031
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c0025

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 359
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 360
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 361
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 367
    if-eqz v1, :cond_2

    .line 369
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 375
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 370
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 372
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 362
    :catch_1
    move-exception v2

    .line 367
    :goto_1
    if-eqz v0, :cond_0

    .line 369
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 370
    :catch_2
    move-exception v2

    goto :goto_0

    .line 364
    :catch_3
    move-exception v2

    .line 367
    :goto_2
    if-eqz v0, :cond_0

    .line 369
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 370
    :catch_4
    move-exception v2

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 369
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 372
    :cond_1
    :goto_4
    throw v2

    .line 370
    :catch_5
    move-exception v3

    goto :goto_4

    .line 367
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 364
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 362
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1363
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1364
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1366
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1368
    return-void
.end method

.method private sceneOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1095
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1110
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1097
    :pswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoEditMode()V

    goto :goto_0

    .line 1104
    :pswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V

    goto :goto_0

    .line 1107
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen()V

    goto :goto_0

    .line 1095
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setWallpaperDimension()V
    .locals 7

    .prologue
    .line 422
    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 424
    .local v5, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 426
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 427
    .local v3, rotation:I
    if-eqz v3, :cond_0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 429
    .local v2, isPortrait:Z
    :goto_0
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 430
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->x:I

    .line 431
    .local v4, width:I
    :goto_1
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 432
    .local v1, height:I
    :goto_2
    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 433
    return-void

    .line 427
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v4           #width:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    .restart local v2       #isPortrait:Z
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 431
    .restart local v4       #width:I
    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    goto :goto_2
.end method

.method private setupAnimations()V
    .locals 3

    .prologue
    .line 726
    const v0, 0x7f04000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    .line 727
    const v0, 0x7f04000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    .line 728
    const v0, 0x7f040017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 729
    const v0, 0x7f040018

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    .line 730
    const v0, 0x7f04001f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    .line 731
    const v0, 0x7f040020

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    .line 732
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    .line 733
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 734
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 735
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$2;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 742
    return-void
.end method

.method private setupViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 663
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 665
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 666
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Background;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    .line 667
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 668
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 670
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    .line 672
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/WidgetThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    .line 673
    new-instance v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    .line 674
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 675
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/WidgetThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    .line 676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WidgetThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 678
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ErrorBar;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    .line 680
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f070064

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 681
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 682
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v3, 0x7f070065

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 686
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 687
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 688
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/Workspace;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 689
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Workspace;->setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    .line 691
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v3, 0x7f070068

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeleteZone;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    .line 692
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeleteZone;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 693
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeleteZone;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 695
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v3, 0x7f070067

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/HotSeats;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 696
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/HotSeats;->setLaucher(Lcom/miui/home/launcher/Launcher;)V

    .line 697
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 699
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderCling;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 700
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderCling;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 701
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 703
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setDragScoller(Lcom/miui/home/launcher/DragScroller;)V

    .line 704
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 705
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 706
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 709
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 710
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 711
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 713
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupAnimations()V

    .line 715
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 716
    const-string v1, "pref_key_guide_tips_editing_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 718
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0, v4}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    .line 723
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1772
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 1774
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/DeleteZone;->setVisibility(I)V

    .line 1775
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1777
    if-eqz p2, :cond_4

    .line 1799
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 1772
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1774
    goto :goto_1

    .line 1775
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    goto :goto_2

    .line 1780
    :cond_4
    if-eqz p1, :cond_6

    .line 1781
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterEditingMode()V

    .line 1786
    :goto_4
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1787
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_8

    move v0, v3

    :goto_6
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 1788
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/WidgetThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1789
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    if-eqz p1, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/WidgetThumbnailView;->setVisibility(I)V

    .line 1790
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_a

    .line 1791
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailView:Lcom/miui/home/launcher/WidgetThumbnailView;

    invoke-virtual {v0, v3, v2, v2, v1}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 1792
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1793
    const-string v1, "pref_key_guide_tips_editing_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1794
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1783
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitEditingMode()V

    goto :goto_4

    .line 1786
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_5

    :cond_8
    move v0, v2

    .line 1787
    goto :goto_6

    .line 1788
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    goto :goto_7

    .line 1795
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    goto :goto_3
.end method

.method private showSceneScreenCore()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1620
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    if-nez v0, :cond_0

    .line 1621
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 1623
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1625
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUpsideScene()Lcom/miui/home/launcher/upsidescene/SceneData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setSceneData(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V

    .line 1631
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setTranslationY(F)V

    .line 1633
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    new-instance v1, Lcom/miui/home/launcher/Launcher$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    .line 1651
    return-void
.end method

.method private showStatusBar(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1760
    .local v1, launcherWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1761
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    :goto_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1764
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1765
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    move-object v2, v3

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 1766
    .local v2, vr:Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    .line 1767
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->skipNextResizedMsg()V

    .line 1769
    :cond_0
    return-void

    .line 1761
    .end local v2           #vr:Landroid/view/ViewRootImpl;
    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    goto :goto_0
.end method

.method private showUpsideEnterOrExitTipIfNeed(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x2

    .line 2095
    if-eqz p1, :cond_0

    const-string v0, "pref_is_shown_upside_enter_tip"

    .line 2096
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2097
    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2098
    if-eqz v1, :cond_1

    .line 2129
    :goto_1
    return-void

    .line 2095
    :cond_0
    const-string v0, "pref_is_shown_upside_exit_tip"

    goto :goto_0

    .line 2103
    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f0200d9

    move v2, v1

    .line 2104
    :goto_2
    if-eqz p1, :cond_3

    const v1, 0x7f0c007f

    .line 2106
    :goto_3
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2107
    const/high16 v5, -0x5600

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2109
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2110
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2112
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v6, v4, v7, v7}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    .line 2113
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x31

    invoke-direct {v6, v8, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    const v7, 0x3f333333

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2117
    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2119
    invoke-direct {p0, v9, v1, v5}, Lcom/miui/home/launcher/Launcher;->showUserGuideInner(IILandroid/view/View;)Lmiui/widget/GuidePopupWindow;

    move-result-object v1

    .line 2121
    new-instance v2, Lcom/miui/home/launcher/Launcher$10;

    invoke-direct {v2, p0, v4}, Lcom/miui/home/launcher/Launcher$10;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2128
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 2103
    :cond_2
    const v1, 0x7f0200da

    move v2, v1

    goto :goto_2

    .line 2104
    :cond_3
    const v1, 0x7f0c0080

    goto :goto_3
.end method

.method private showUserGuideInner(IILandroid/view/View;)Lmiui/widget/GuidePopupWindow;
    .locals 3
    .parameter "arrowMode"
    .parameter "resId"
    .parameter "anchor"

    .prologue
    const/4 v2, 0x0

    .line 2132
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 2133
    .local v0, guideWindow:Lmiui/widget/GuidePopupWindow;
    invoke-virtual {v0, p1}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 2134
    invoke-virtual {v0, p2}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 2135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 2136
    invoke-virtual {v0, p3, v2, v2, v2}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 2137
    return-object v0
.end method

.method private sortDesktopItems()V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 1346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1347
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.WallpaperSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1356
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 1423
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 1424
    .local v1, item:Lcom/miui/home/launcher/ItemInfo;
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    goto :goto_0

    .line 1426
    .end local v1           #item:Lcom/miui/home/launcher/ItemInfo;
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 381
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 382
    iget v3, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 383
    iget v3, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 384
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8

    .line 398
    if-eqz v2, :cond_2

    .line 400
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 406
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 401
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 403
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 385
    :catch_1
    move-exception v3

    .line 398
    :goto_1
    if-eqz v1, :cond_0

    .line 400
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 401
    :catch_2
    move-exception v3

    goto :goto_0

    .line 387
    :catch_3
    move-exception v0

    .line 389
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    if-eqz v1, :cond_0

    .line 400
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 401
    :catch_4
    move-exception v3

    goto :goto_0

    .line 390
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 398
    :goto_3
    if-eqz v1, :cond_0

    .line 400
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 401
    :catch_6
    move-exception v3

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_1

    .line 400
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 403
    :cond_1
    :goto_5
    throw v3

    .line 401
    :catch_7
    move-exception v4

    goto :goto_5

    .line 398
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 390
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 387
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 385
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method

.method private writeProcHandle(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "isEnable"

    .prologue
    .line 2234
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2235
    .local v0, fos:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/miui/home/launcher/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2236
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2240
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 2235
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/Launcher;->DISABLE_TOUCH_IMPROVE:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2238
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2237
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v6, -0x1

    .line 1173
    iget-object v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1176
    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v1

    .line 1177
    if-nez v1, :cond_0

    .line 1178
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move v0, v6

    .line 1220
    :goto_0
    return v0

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1184
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    iget v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iput v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    .line 1191
    iget v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    .line 1192
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 1194
    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    iget-object v2, v7, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1198
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1199
    invoke-virtual {p0, v1, v8}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    move v0, v6

    .line 1187
    goto :goto_0

    .line 1202
    :cond_1
    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1203
    iget-object v2, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1205
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1206
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1209
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1211
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    :goto_1
    invoke-virtual {p0, v8, v6, v3}, Lcom/miui/home/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1214
    :cond_2
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;
    .locals 10
    .parameter "info"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v9, 0x1

    .line 1266
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 1268
    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    .line 1275
    .local v1, newFolder:Lcom/miui/home/launcher/FolderIcon;
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v2, p2

    move v3, p3

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1277
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    return-object v1

    .line 1271
    .end local v1           #newFolder:Lcom/miui/home/launcher/FolderIcon;
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->createFolderIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v8

    .line 1272
    .local v8, newFolder:Lcom/miui/home/launcher/FolderIcon;
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    move-object v1, v8

    .end local v8           #newFolder:Lcom/miui/home/launcher/FolderIcon;
    .restart local v1       #newFolder:Lcom/miui/home/launcher/FolderIcon;
    goto :goto_0
.end method

.method addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 1225
    iget v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v3, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v8

    .line 1226
    .local v8, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v8, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    .line 1230
    .local v9, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v9, :cond_0

    .line 1233
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget v6, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v7, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 1237
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 1238
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 1240
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    move-object v1, v9

    check-cast v1, Landroid/view/View;

    iget v2, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iget v3, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1243
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1245
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1246
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0
.end method

.method addItem(Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 9
    .parameter "info"
    .parameter "insert"

    .prologue
    const/4 v6, 0x1

    .line 2169
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 2170
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;)Z

    .line 2177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 2178
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    move-object v0, p1

    .line 2180
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 2182
    :cond_1
    return-void

    .line 2171
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2172
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    goto :goto_0

    .line 2173
    :cond_3
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 2174
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 2142
    return-void
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2185
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2186
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 2187
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_0

    .line 2188
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 2189
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 2190
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 2198
    :goto_0
    return-void

    .line 2192
    :cond_0
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find user folder of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2195
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    move v7, v6

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method public bindAppMessage(Lcom/miui/home/launcher/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage;->addApplication(Lcom/miui/home/launcher/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 2215
    return-void
.end method

.method public bindAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 11
    .parameter

    .prologue
    .line 1950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1952
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1956
    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1957
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1958
    if-nez v2, :cond_0

    .line 1960
    const-string v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :goto_0
    return-void

    .line 1965
    :cond_0
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindAppWidget: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " belongs to component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1982
    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1983
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1985
    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1988
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 1990
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound widget id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1970
    :catch_0
    move-exception v0

    .line 1972
    const-string v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidget: out of memory,ignore it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1975
    :catch_1
    move-exception v0

    .line 1977
    const-string v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidget: server side exception,ignore it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2067
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    new-instance v1, Lcom/miui/home/launcher/Launcher$8;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$8;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2075
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 2206
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 2207
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/HotSeats;->removeItems(Ljava/util/ArrayList;)V

    .line 2208
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 2209
    .local v1, ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    iget-object v3, v1, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ApplicationsMessage;->removeApplication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2211
    .end local v1           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :cond_0
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/miui/home/launcher/FolderInfo;>;"
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1941
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1942
    return-void
.end method

.method public bindGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 10
    .parameter "item"

    .prologue
    .line 2004
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    .line 2005
    .local v9, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-nez v9, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    instance-of v0, v9, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v1, v9

    .line 2008
    check-cast v1, Landroid/view/View;

    .line 2010
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2011
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 2013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 2015
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 2017
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2020
    invoke-interface {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1915
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ItemInfo;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-nez v3, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1919
    .local v2, workspace:Lcom/miui/home/launcher/Workspace;
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 1920
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 1921
    .local v1, item:Lcom/miui/home/launcher/ItemInfo;
    iget-wide v3, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1922
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    :cond_1
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 1919
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1928
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    goto :goto_2

    .line 1933
    .end local v1           #item:Lcom/miui/home/launcher/ItemInfo;
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    goto :goto_0

    .line 1924
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindUpsideScene(Lcom/miui/home/launcher/upsidescene/SceneData;)V
    .locals 2
    .parameter "us"

    .prologue
    .line 2079
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUpsideScene:Lcom/miui/home/launcher/upsidescene/SceneData;

    .line 2080
    if-eqz p1, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    new-instance v1, Lcom/miui/home/launcher/Launcher$9;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$9;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->post(Ljava/lang/Runnable;)Z

    .line 2087
    :cond_0
    return-void
.end method

.method closeFolder()Z
    .locals 1

    .prologue
    .line 1526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    move-result v0

    return v0
.end method

.method closeFolder(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->close(Z)V

    .line 1532
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1533
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1534
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1535
    const/4 v0, 0x1

    .line 1537
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1533
    :array_0
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 917
    return-void
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, ii:Lcom/miui/home/launcher/ItemIcon;
    instance-of v1, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 747
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createShortcutIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 752
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    :cond_1
    return-object v0

    .line 749
    .restart local p2
    :cond_2
    instance-of v1, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_0

    .line 750
    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createFolderIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    goto :goto_0
.end method

.method createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1282
    new-instance v1, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 1283
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1286
    const-wide/16 v2, -0x64

    move-object v0, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 1287
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 1292
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1372
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1373
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1390
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1377
    :sswitch_1
    const-string v1, "debug.launcher2.dumpstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dumpState()V

    goto :goto_1

    .line 1383
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1384
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1373
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1384
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2246
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesktopItems.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->dumpState()V

    .line 2254
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-void
.end method

.method findGadget(J)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 4
    .parameter "itemId"

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .local v0, g:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v2, v0

    .line 1252
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1257
    .end local v0           #g:Lcom/miui/home/launcher/gadget/Gadget;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishBindingMissingItems()V
    .locals 0

    .prologue
    .line 2052
    return-void
.end method

.method public finishBindingSavedItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2031
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2036
    :cond_0
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2040
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2041
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 2044
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 2046
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requareUpdateMessages()V

    .line 2048
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->finishBinding()V

    .line 2049
    return-void
.end method

.method public finishLoading()V
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 2059
    :cond_0
    return-void
.end method

.method public getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCurrentOpenedFolder()Landroid/view/View;
    .locals 1

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 1548
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 1869
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/miui/home/launcher/DragLayer;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method public getEditingState()I
    .locals 1

    .prologue
    .line 1713
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return v0
.end method

.method public getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 5
    .parameter "fi"

    .prologue
    const/4 v0, 0x0

    .line 2153
    if-nez p1, :cond_1

    .line 2161
    :cond_0
    :goto_0
    return-object v0

    .line 2156
    :cond_1
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2157
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    goto :goto_0

    .line 2158
    :cond_2
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    goto :goto_0
.end method

.method public getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method getPaddingForWidget(Landroid/content/ComponentName;)Lcom/miui/home/launcher/Launcher$Padding;
    .locals 4
    .parameter

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 811
    new-instance v0, Lcom/miui/home/launcher/Launcher$Padding;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$Padding;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 815
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 821
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 825
    const v2, 0x60a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/Launcher$Padding;->left:I

    .line 826
    const v2, 0x60a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/Launcher$Padding;->right:I

    .line 827
    const v2, 0x60a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/Launcher$Padding;->top:I

    .line 828
    const v2, 0x60a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/Launcher$Padding;->bottom:I

    .line 831
    :cond_0
    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1
    .parameter "si"

    .prologue
    .line 2165
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;
    .locals 4
    .parameter "si"

    .prologue
    .line 2145
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2147
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 2149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTouchTranslator()Lcom/miui/home/launcher/DragController$TouchTranslator;
    .locals 2

    .prologue
    .line 1751
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpsideScene()Lcom/miui/home/launcher/upsidescene/SceneData;
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUpsideScene:Lcom/miui/home/launcher/upsidescene/SceneData;

    return-object v0
.end method

.method getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method public hideSceneScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1679
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 1680
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1682
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationStart()V

    .line 1684
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const-string v1, "translationY"

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1686
    new-instance v1, Lcom/miui/home/launcher/Launcher$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$6;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1693
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1695
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1697
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1698
    return-void
.end method

.method public isFolderShowing()Z
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    return v0
.end method

.method public isInEditing()Z
    .locals 2

    .prologue
    .line 1705
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewShowing()Z
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isPrivacyModeEnabled()Z
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLockSettings:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isSceneAnimating()Z
    .locals 1

    .prologue
    .line 1701
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return v0
.end method

.method public isSceneShowing()Z
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 437
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 445
    if-ne p2, v6, :cond_4

    .line 446
    sparse-switch p1, :sswitch_data_0

    .line 489
    :cond_0
    :goto_0
    :sswitch_0
    if-eq p1, v8, :cond_1

    const/4 v5, 0x7

    if-eq p1, v5, :cond_1

    if-eq p1, v7, :cond_1

    const/16 v5, 0x65

    if-eq p1, v5, :cond_1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_2

    .line 494
    :cond_1
    iput-boolean v7, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 496
    :cond_2
    return-void

    .line 448
    :sswitch_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    :sswitch_2
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 454
    :sswitch_3
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 460
    :sswitch_4
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v5, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 463
    :sswitch_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 464
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v5, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeGadgetConfig(Landroid/content/Intent;)V

    goto :goto_0

    .line 466
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 467
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 468
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetItemId(Landroid/os/Bundle;)J

    move-result-wide v3

    .line 469
    .local v3, itemId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 471
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Launcher;->findGadget(J)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v2

    .line 472
    .local v2, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v2, :cond_0

    .line 473
    invoke-interface {v2, v1}, Lcom/miui/home/launcher/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    goto :goto_0

    .line 480
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v3           #itemId:J
    :cond_4
    if-ne p1, v8, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 483
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 484
    .local v0, appWidgetId:I
    if-eq v0, v6, :cond_0

    .line 485
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1434
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1435
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_3

    .line 1436
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1457
    .end local v3           #tag:Ljava/lang/Object;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local v3       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_1
    move-object v0, v3

    .line 1438
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1439
    .local v0, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1440
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->installPresetApp(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 1442
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1443
    .local v1, intent:Landroid/content/Intent;
    new-array v2, v10, [I

    .line 1444
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1445
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1447
    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 1449
    iget v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-ne v10, v4, :cond_0

    .line 1450
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1451
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .end local p1
    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 1454
    .end local v0           #info:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .restart local p1
    :cond_3
    instance-of v4, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_0

    .line 1455
    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {p0, v3, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x100

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    const-string v3, "Launcher"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 253
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 255
    const v3, -0x10001

    const/high16 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 259
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->isHardwareAccelerated()Z

    move-result v3

    sput-boolean v3, Lcom/miui/home/launcher/Launcher;->mIsHardwareAccelerated:Z

    .line 261
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->updateGadgetBackup(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 264
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 265
    sget-boolean v3, Lcom/miui/home/launcher/Launcher;->mConfigurationChanged:Z

    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->reloadResConfig(Lcom/miui/home/launcher/LauncherApplication;)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkForLocaleChange()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/miui/home/launcher/Launcher;->mConfigurationChanged:Z

    if-eqz v3, :cond_2

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v3}, Lcom/miui/home/launcher/IconCache;->updateDefaultIcon()V

    .line 271
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v3}, Lcom/miui/home/launcher/IconCache;->flush()V

    .line 274
    :cond_2
    new-instance v3, Lcom/miui/home/launcher/DragController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 276
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerContentObservers()V

    .line 278
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 279
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/16 v4, 0x400

    invoke-direct {v3, p0, p0, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 281
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ApplicationsMessage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 287
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setWallpaperDimension()V

    .line 289
    const v3, 0x7f030023

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setContentView(I)V

    .line 290
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupViews()V

    .line 296
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 299
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 300
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 302
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v1, screenIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    new-instance v3, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v3, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLockSettings:Lmiui/security/ChooseLockSettingsHelper;

    .line 309
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    :goto_0
    return v0

    .line 1004
    :cond_0
    const v2, 0x7f0c0025

    invoke-interface {p1, v3, v3, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1006
    const v2, 0x7f0c0012

    invoke-interface {p1, v4, v4, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1009
    const v2, 0x7f0c0013

    invoke-interface {p1, v0, v5, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1012
    const/4 v2, 0x5

    const v3, 0x7f0c0014

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200a2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1015
    const/4 v2, 0x6

    const v3, 0x7f0c0027

    invoke-interface {p1, v5, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1017
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1018
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1021
    const/4 v3, 0x7

    const v4, 0x7f0c0016

    invoke-interface {p1, v0, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080049

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x50

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v0, v1

    .line 1024
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 961
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 963
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 965
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->stopLoaderAsync()V

    .line 967
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unbindDesktopItems()V

    .line 969
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 970
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    .line 974
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 976
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->destory()V

    .line 977
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 978
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isChangingConfigurations()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->mConfigurationChanged:Z

    .line 979
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finishLoading()V

    .line 980
    return-void
.end method

.method onDropShortcut(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/content/Intent;)V
    .locals 1
    .parameter "d"
    .parameter "intent"

    .prologue
    .line 1261
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1263
    return-void

    .line 1261
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 626
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 627
    .local v1, handled:Z
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    if-eq p1, v2, :cond_1

    .line 628
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 630
    .local v0, gotKey:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    move-result v1

    .line 646
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_0
    :goto_0
    return v1

    .line 642
    .restart local v1       #handled:Z
    :cond_1
    const/16 v2, 0x52

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1553
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1585
    :goto_0
    return v1

    .line 1557
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/CellLayout;

    if-nez v1, :cond_1

    .line 1558
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1561
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1564
    .local v0, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v3

    .line 1565
    goto :goto_0

    .line 1568
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1569
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1571
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 1574
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->performHapticFeedback(II)Z

    :cond_3
    :goto_2
    move v1, v3

    .line 1585
    goto :goto_0

    .line 1571
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    .line 1577
    :cond_5
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/miui/home/launcher/Folder;

    if-nez v1, :cond_3

    .line 1579
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->performHapticFeedback(II)Z

    .line 1581
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x40

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 921
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 924
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeSystemDialogs()V

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 940
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    .line 942
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 943
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 945
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eq v2, v6, :cond_4

    move v0, v1

    .line 949
    :cond_4
    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v0, 0x1

    .line 1115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->sceneOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return v0

    .line 1118
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1149
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1120
    :pswitch_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v1, v3, :cond_2

    .line 1121
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->pickShortcut()V

    goto :goto_0

    .line 1122
    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v1, v2, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1124
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->sortDesktopItems()V

    goto :goto_0

    .line 1126
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 1131
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startWallpaper()V

    goto :goto_0

    .line 1134
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    goto :goto_0

    .line 1137
    :pswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 1139
    :cond_4
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v1, v2, :cond_5

    .line 1140
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 1142
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 1146
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/home/launcher/LauncherPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 522
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 523
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 525
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->enableTouchImprove(Z)V

    .line 526
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 527
    .local v0, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 528
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1045
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1046
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepairSceneMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1091
    :goto_0
    return v1

    .line 1049
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 1050
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 1052
    :goto_2
    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    .line 1055
    :goto_3
    if-eqz v0, :cond_8

    .line 1056
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080033

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0c0011

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x41

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1061
    invoke-direct {p0, v2, v2, v2}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1062
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMenuAddInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1076
    :cond_1
    :goto_5
    if-nez v4, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1077
    const/4 v0, 0x3

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1078
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v0, v6, :cond_a

    .line 1079
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0c0015

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1082
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1089
    :goto_6
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0c0027

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x4c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1049
    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 1050
    goto :goto_2

    :cond_6
    move v4, v2

    .line 1052
    goto :goto_3

    :cond_7
    move v0, v2

    .line 1062
    goto :goto_4

    .line 1063
    :cond_8
    if-eqz v3, :cond_9

    .line 1064
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x108003e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0c0025

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x45

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1068
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_5

    .line 1069
    :cond_9
    if-eqz v4, :cond_1

    .line 1070
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x108009c

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0c0026

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x53

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1074
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_5

    .line 1084
    :cond_a
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0c0014

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x50

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1087
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_6
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 501
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onResume()V

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 503
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 504
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 507
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 508
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 509
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requareUpdateMessages()V

    .line 510
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->updateWallpaper()V

    .line 511
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->enableTouchImprove(Z)V

    .line 512
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 513
    .local v0, statusBar:Landroid/app/StatusBarManager;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 514
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    .line 515
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 615
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1163
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1164
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 602
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 603
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onStart()V

    .line 604
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    .line 608
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 609
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 585
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onStop()V

    .line 586
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    .line 589
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 590
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 597
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 598
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onWorkspaceDropExternalComplate()V
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 1806
    :cond_0
    return-void
.end method

.method public openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 1519
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->open()V

    .line 1520
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1521
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1522
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDimAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1523
    return-void

    .line 1521
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data
.end method

.method preRemoveItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1295
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1296
    .local v0, vg:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 1297
    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    .end local v0           #vg:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->preRemoveView(Landroid/view/View;)V

    .line 1299
    :cond_0
    return-void
.end method

.method reloadResConfig(Lcom/miui/home/launcher/LauncherApplication;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 317
    invoke-static {p0}, Lcom/miui/home/launcher/ResConfig;->Init(Landroid/content/Context;)V

    .line 318
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider;->onCreate()Z

    .line 319
    return-void
.end method

.method public reloadWidgetPreview()V
    .locals 2

    .prologue
    .line 902
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetThumbnailViewAdapter:Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 906
    return-void

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 876
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 877
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1301
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1302
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1303
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 1304
    .local v0, info:Lcom/miui/home/launcher/FolderInfo;
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 1305
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 1306
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1309
    sget-object v0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 884
    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 885
    const/4 v1, 0x0

    .line 886
    .local v1, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .local v0, g:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v3, v0

    .line 887
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 888
    move-object v1, v0

    .line 892
    .end local v0           #g:Lcom/miui/home/launcher/gadget/Gadget;
    :cond_1
    if-eqz v1, :cond_2

    .line 893
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 894
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 895
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 898
    .end local v1           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 539
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 541
    return-void
.end method

.method public setEditingState(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1721
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPrivacyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1745
    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 1746
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    if-eq p1, v4, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/miui/home/launcher/ErrorBar;->setMargins(IIII)V

    goto :goto_0

    .line 1730
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v5, v0, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(ZZ)V

    .line 1731
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1732
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v3, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v3, v5, :cond_4

    :goto_4
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1730
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1732
    goto :goto_4

    .line 1735
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->showEditPanel(ZZ)V

    .line 1736
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1737
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    .line 1738
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    goto :goto_1

    .line 1741
    :pswitch_2
    invoke-direct {p0, v1, v1}, Lcom/miui/home/launcher/Launcher;->showEditPanel(ZZ)V

    .line 1742
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    goto :goto_1

    .line 1746
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 1728
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    .line 910
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDeleteZone:Lcom/miui/home/launcher/DeleteZone;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeleteZone;->onShowError()V

    .line 911
    return-void
.end method

.method public showPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    :goto_0
    return-void

    .line 1592
    :cond_0
    if-eqz p1, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterPreviewMode()V

    .line 1597
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 1598
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1599
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->showPreview(Z)V

    goto :goto_0

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitPreviewMode()V

    goto :goto_1

    .line 1597
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1598
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_3
.end method

.method public showSceneScreen()V
    .locals 1

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 1612
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    if-nez v0, :cond_0

    .line 1613
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenLoading()V

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore()V

    goto :goto_0
.end method

.method public showSceneScreenLoading()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1654
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 1656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;I)V

    .line 1658
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1659
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1660
    new-instance v1, Lcom/miui/home/launcher/Launcher$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$5;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1665
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1667
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    .line 1668
    return-void
.end method

.method startActivity(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1460
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1462
    :try_start_0
    instance-of v1, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 1463
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    move-object v1, v0

    .line 1464
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch()V

    .line 1465
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 1466
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->onLaunchApplication(Landroid/content/ComponentName;)V

    .line 1468
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1469
    :catch_0
    move-exception v1

    .line 1470
    const v2, 0x7f0c0023

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1471
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher cannot start this activity(app2sd?)tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0008

    const/4 v1, 0x0

    .line 1478
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 1479
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1488
    :goto_0
    return-void

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1482
    :catch_1
    move-exception v0

    .line 1483
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1484
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 1885
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1886
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1888
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1889
    .local v2, workspace:Lcom/miui/home/launcher/Workspace;
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    .line 1890
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1892
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->removeAllViewsInLayout()V

    .line 1890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1906
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v3}, Lcom/miui/home/launcher/HotSeats;->startBinding()V

    .line 1907
    return-void
.end method

.method public startLoading()V
    .locals 3

    .prologue
    .line 1875
    const-string v0, ""

    const v1, 0x60c0022

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    .line 1876
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1877
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 986
    if-nez p1, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearTypedText()V

    .line 992
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 994
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 996
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 2219
    return-void
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)V

    .line 1856
    return-void
.end method

.method public updateWallpaperOffsetAnimate(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffsetAnimate(FFFF)V

    .line 1860
    return-void
.end method
