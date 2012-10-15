.class public Lcom/miui/gallery/app/Config$GlobalConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$GlobalConfig;


# instance fields
.field private homeCameraViewRecentItemSize:I

.field private homePageCameraViewHeight:I

.field private final onlyShowCloud:Z

.field private screenHeightPixels:I

.field private screenWidthPixels:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->onlyShowCloud:Z

    .line 97
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 99
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->screenWidthPixels:I

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->screenHeightPixels:I

    .line 101
    return-void
.end method

.method public static declared-synchronized get()Lcom/miui/gallery/app/Config$GlobalConfig;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/miui/gallery/app/Config$GlobalConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$GlobalConfig;->sInstance:Lcom/miui/gallery/app/Config$GlobalConfig;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/miui/gallery/app/Config$GlobalConfig;

    invoke-direct {v0}, Lcom/miui/gallery/app/Config$GlobalConfig;-><init>()V

    sput-object v0, Lcom/miui/gallery/app/Config$GlobalConfig;->sInstance:Lcom/miui/gallery/app/Config$GlobalConfig;

    .line 51
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$GlobalConfig;->sInstance:Lcom/miui/gallery/app/Config$GlobalConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    const-class v1, Lcom/miui/gallery/app/Config$GlobalConfig;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/gallery/app/Config$GlobalConfig;

    invoke-direct {v0}, Lcom/miui/gallery/app/Config$GlobalConfig;-><init>()V

    sput-object v0, Lcom/miui/gallery/app/Config$GlobalConfig;->sInstance:Lcom/miui/gallery/app/Config$GlobalConfig;

    .line 113
    invoke-static {p0}, Lcom/miui/gallery/app/Config$HomePageConfig;->refresh(Landroid/content/Context;)V

    .line 114
    invoke-static {p0}, Lcom/miui/gallery/app/Config$StringViewSpec;->refresh(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->refresh(Landroid/content/Context;)V

    .line 116
    invoke-static {p0}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->refresh(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/miui/gallery/app/Config$ManageCachePage;->refresh(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v1

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dynamicConfigCameraView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v12, 0x7f090044

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x60a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 58
    .local v8, statusBarHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090045

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v0

    .line 62
    .local v0, cameraTitleHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v5

    .line 66
    .local v5, recentTitleHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    .line 70
    .local v1, homeItemTitleHeight:I
    invoke-static {p1}, Lcom/miui/gallery/app/Config$HomePageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v7, v10, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 72
    .local v7, slotHeight:I
    const/4 v2, 0x2

    .line 73
    .local v2, itemLineCount:I
    add-int v10, v0, v5

    add-int/2addr v10, v7

    mul-int v11, v2, v1

    add-int v9, v10, v11

    .line 77
    .local v9, totalHeight:I
    iget v10, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->screenHeightPixels:I

    sub-int/2addr v10, v9

    sub-int v3, v10, v8

    .line 79
    .local v3, leftHeightSpace:I
    div-int v6, v3, v7

    .line 80
    .local v6, rowCount:I
    const/4 v10, 0x3

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, recentItemSize:I
    if-lez v6, :cond_0

    .line 83
    mul-int/lit8 v10, v6, 0x4

    add-int/lit8 v4, v10, -0x1

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090042

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v10}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v10

    mul-int/2addr v10, v6

    iput v10, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->homePageCameraViewHeight:I

    .line 87
    iput v4, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->homeCameraViewRecentItemSize:I

    .line 88
    return-void
.end method

.method public getHomeCameraViewHeight()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->homePageCameraViewHeight:I

    return v0
.end method

.method public getHomeCameraViewRecentItemSize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->homeCameraViewRecentItemSize:I

    return v0
.end method

.method public getScreenHeightPixel()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->screenHeightPixels:I

    return v0
.end method

.method public getScreenWidthPixel()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->screenWidthPixels:I

    return v0
.end method

.method public onlyShowCloud()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/miui/gallery/app/Config$GlobalConfig;->onlyShowCloud:Z

    return v0
.end method
