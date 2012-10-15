.class public Lcom/miui/gallery/app/Config$ManageCachePage;
.super Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManageCachePage"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/app/Config$ManageCachePage;


# instance fields
.field public final cachePinMargin:I

.field public final cachePinSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 357
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;-><init>(Landroid/content/Context;Lcom/miui/gallery/app/Config$1;)V

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$ManageCachePage;->cachePinSize:I

    .line 360
    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/Config$ManageCachePage;->cachePinMargin:I

    .line 361
    return-void
.end method

.method public static declared-synchronized refresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 364
    const-class v1, Lcom/miui/gallery/app/Config$ManageCachePage;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/miui/gallery/app/Config$ManageCachePage;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/Config$ManageCachePage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/app/Config$ManageCachePage;->sInstance:Lcom/miui/gallery/app/Config$ManageCachePage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit v1

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
