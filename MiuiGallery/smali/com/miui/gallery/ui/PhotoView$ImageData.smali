.class public Lcom/miui/gallery/ui/PhotoView$ImageData;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageData"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public rotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$ImageData;->bitmap:Landroid/graphics/Bitmap;

    .line 743
    iput p2, p0, Lcom/miui/gallery/ui/PhotoView$ImageData;->rotation:I

    .line 744
    return-void
.end method
