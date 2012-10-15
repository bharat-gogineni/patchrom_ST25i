.class public Lcom/miui/gallery/app/Config$HomePageConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomePageConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;


# instance fields
.field public recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

.field public slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field public titleViewHeight:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f090006

    const v3, 0x7f090005

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->titleViewHeight:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 152
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->titleViewHeight:I

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 160
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    .line 165
    new-instance v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    .line 166
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotWidth:I

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotHeight:I

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverGap:I

    .line 172
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumLabelOffsetY:I

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverWidth:I

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverHeight:I

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumBlackCoverHeight:I

    .line 181
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleOffset:I

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleFontSize:I

    .line 185
    iget-object v1, p0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->leftMargin:I

    .line 187
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 141
    const-class v1, Lcom/miui/gallery/app/Config$HomePageConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/miui/gallery/app/Config$HomePageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$HomePageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;

    .line 144
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 190
    const-class v1, Lcom/miui/gallery/app/Config$HomePageConfig;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/gallery/app/Config$HomePageConfig;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$HomePageConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$HomePageConfig;->sInstance:Lcom/miui/gallery/app/Config$HomePageConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v1

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
