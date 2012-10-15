.class public Lcom/miui/gallery/ui/BitmapDisplayItem;
.super Lcom/miui/gallery/ui/DisplayItem;
.source "BitmapDisplayItem.java"


# instance fields
.field protected mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "bitmap"
    .parameter "fillWidth"
    .parameter "fillHeight"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/ui/DisplayItem;-><init>()V

    .line 13
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BitmapDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 14
    iput p2, p0, Lcom/miui/gallery/ui/BitmapDisplayItem;->mWidth:I

    .line 15
    iput p3, p0, Lcom/miui/gallery/ui/BitmapDisplayItem;->mHeight:I

    .line 16
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 27
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 6
    .parameter "canvas"
    .parameter "pass"

    .prologue
    const/4 v2, 0x0

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/ui/BitmapDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    iget v4, p0, Lcom/miui/gallery/ui/BitmapDisplayItem;->mWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/BitmapDisplayItem;->mHeight:I

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/BitmapTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 21
    return v2
.end method
