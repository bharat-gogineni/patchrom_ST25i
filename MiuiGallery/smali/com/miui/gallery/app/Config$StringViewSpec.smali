.class public Lcom/miui/gallery/app/Config$StringViewSpec;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringViewSpec"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$StringViewSpec;


# instance fields
.field public labelSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/miui/gallery/ui/StringView$LabelSpec;

    invoke-direct {v1}, Lcom/miui/gallery/ui/StringView$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/app/Config$StringViewSpec;->labelSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/app/Config$StringViewSpec;->labelSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/StringView$LabelSpec;->boxHeight:I

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/app/Config$StringViewSpec;->labelSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/StringView$LabelSpec;->titleFontSize:I

    .line 214
    iget-object v1, p0, Lcom/miui/gallery/app/Config$StringViewSpec;->labelSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/StringView$LabelSpec;->countFontSize:I

    .line 216
    iget-object v1, p0, Lcom/miui/gallery/app/Config$StringViewSpec;->labelSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/ui/StringView$LabelSpec;->leftMargin:I

    .line 218
    return-void
.end method

.method public static declared-synchronized refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 221
    const-class v1, Lcom/miui/gallery/app/Config$StringViewSpec;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/gallery/app/Config$StringViewSpec;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$StringViewSpec;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$StringViewSpec;->sInstance:Lcom/miui/gallery/app/Config$StringViewSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v1

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
