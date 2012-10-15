.class public Lcom/miui/gallery/ui/BitmapTexture;
.super Lcom/miui/gallery/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mAutoRecycle:Z

.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "hasBorder"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .locals 1
    .parameter "bitmap"
    .parameter "hasBorder"
    .parameter "autoRecycle"

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/UploadedTexture;-><init>(Z)V

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 46
    iput-object p1, p0, Lcom/miui/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-boolean p3, p0, Lcom/miui/gallery/ui/BitmapTexture;->mAutoRecycle:Z

    .line 48
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/UploadedTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 28
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/ui/UploadedTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BitmapTexture;->mAutoRecycle:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->updateContent(Lcom/miui/gallery/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/miui/gallery/ui/UploadedTexture;->yield()V

    return-void
.end method
