.class public Lcom/miui/gallery/app/Config$AlbumPageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;


# instance fields
.field public albumThumbnailSize:I

.field public selectIndicatorRightMargin:I

.field public selectIndicatorTopMargin:I

.field public slotDetailFontSize:I

.field public slotDetailLabelOffset:I

.field public slotUpCoverBlurHeight:I

.field public slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field public titleViewHeight:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput v2, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    .line 293
    iput v2, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailLabelOffset:I

    .line 294
    iput v2, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    .line 295
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->titleViewHeight:I

    .line 296
    iput v2, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->selectIndicatorRightMargin:I

    .line 297
    iput v2, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->selectIndicatorTopMargin:I

    .line 298
    iput v2, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->albumThumbnailSize:I

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 314
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->titleViewHeight:I

    .line 316
    new-instance v1, Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 317
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 319
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 321
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 323
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 325
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    .line 327
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    .line 329
    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailLabelOffset:I

    .line 331
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    .line 334
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->selectIndicatorRightMargin:I

    .line 336
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->selectIndicatorTopMargin:I

    .line 339
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v1, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->albumThumbnailSize:I

    .line 340
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 301
    const-class v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$AlbumPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    .line 304
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 308
    const-class v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$AlbumPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit v1

    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
