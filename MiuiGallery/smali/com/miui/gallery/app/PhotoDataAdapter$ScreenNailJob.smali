.class Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/miui/gallery/data/MediaItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/miui/gallery/data/MediaItem;

    .line 649
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v3, 0x1

    .line 653
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/gallery/util/ThreadPool$Job;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 654
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 659
    :goto_0
    return-object v1

    .line 655
    :cond_0
    if-eqz v0, :cond_1

    .line 656
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1, v3}, Lcom/miui/gallery/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 659
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
