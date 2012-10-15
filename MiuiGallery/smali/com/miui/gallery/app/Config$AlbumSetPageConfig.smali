.class public Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;


# instance fields
.field public cloudTitleViewHeight:I

.field public labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

.field public microThumbnailSize:I

.field public slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field public titleViewHeight:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f090019

    const v3, 0x7f090018

    const/4 v1, -0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->titleViewHeight:I

    .line 231
    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->cloudTitleViewHeight:I

    .line 232
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->microThumbnailSize:I

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->titleViewHeight:I

    .line 249
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->cloudTitleViewHeight:I

    .line 251
    new-instance v1, Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 252
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 254
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 256
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 258
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f09001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 260
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f09001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    .line 263
    new-instance v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    .line 264
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->titleOffset:I

    .line 266
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->titleFontSize:I

    .line 268
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->leftMargin:I

    .line 271
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumSlotWidth:I

    .line 273
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumSlotHeight:I

    .line 275
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumCoverGap:I

    .line 277
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumLabelOffsetY:I

    .line 279
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumCoverWidth:I

    .line 281
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumBlurHeight:I

    .line 284
    iget-object v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v1, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->microThumbnailSize:I

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/gallery/app/Config$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    const-class v1, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    .line 238
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 242
    const-class v1, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->sInstance:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v1

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
