.class public Lcom/miui/gallery/app/SlideshowPage$Slide;
.super Ljava/lang/Object;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slide"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public item:Lcom/miui/gallery/data/MediaItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaItem;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "item"
    .parameter "index"
    .parameter "bitmap"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p3, p0, Lcom/miui/gallery/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowPage$Slide;->item:Lcom/miui/gallery/data/MediaItem;

    .line 72
    iput p2, p0, Lcom/miui/gallery/app/SlideshowPage$Slide;->index:I

    .line 73
    return-void
.end method
