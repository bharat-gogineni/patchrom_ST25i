.class public Lcom/miui/gallery/ui/NinePatchTexture;
.super Lcom/miui/gallery/ui/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;
    }
.end annotation


# instance fields
.field private mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

.field private mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/ui/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v0, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-direct {v0}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    .line 47
    return-void
.end method

.method private findInstance(Lcom/miui/gallery/ui/GLCanvas;II)Lcom/miui/gallery/ui/NinePatchInstance;
    .locals 8
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 105
    int-to-long v1, p2

    .line 106
    .local v1, key:J
    const/16 v4, 0x20

    shl-long v4, v1, v4

    int-to-long v6, p3

    or-long v1, v4, v6

    .line 107
    iget-object v4, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/NinePatchInstance;

    .line 109
    .local v0, instance:Lcom/miui/gallery/ui/NinePatchInstance;
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/miui/gallery/ui/NinePatchInstance;

    .end local v0           #instance:Lcom/miui/gallery/ui/NinePatchInstance;
    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/ui/NinePatchInstance;-><init>(Lcom/miui/gallery/ui/NinePatchTexture;II)V

    .line 111
    .restart local v0       #instance:Lcom/miui/gallery/ui/NinePatchInstance;
    iget-object v4, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v4, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;->getJustRemoved()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/ui/NinePatchInstance;

    .line 113
    .local v3, removed:Lcom/miui/gallery/ui/NinePatchInstance;
    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v3, p1}, Lcom/miui/gallery/ui/NinePatchInstance;->recycle(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 118
    .end local v3           #removed:Lcom/miui/gallery/ui/NinePatchInstance;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/NinePatchTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;->clear()V

    .line 127
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 128
    invoke-direct {p0, p1, p4, p5}, Lcom/miui/gallery/ui/NinePatchTexture;->findInstance(Lcom/miui/gallery/ui/GLCanvas;II)Lcom/miui/gallery/ui/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/miui/gallery/ui/NinePatchInstance;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/NinePatchTexture;II)V

    .line 130
    :cond_1
    return-void
.end method

.method public getNinePatchChunk()Lcom/miui/gallery/ui/NinePatchChunk;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

    iget-object v0, v0, Lcom/miui/gallery/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 51
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    :cond_0
    return-object v0

    .line 53
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mResId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/ui/NinePatchTexture;->setSize(II)V

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 60
    .local v1, chunkData:[B
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mChunk:Lcom/miui/gallery/ui/NinePatchChunk;

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid nine-patch image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/ui/NinePatchChunk;->deserialize([B)Lcom/miui/gallery/ui/NinePatchChunk;

    move-result-object v3

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Lcom/miui/gallery/ui/ResourceTexture;->recycle()V

    .line 135
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 136
    .local v0, canvas:Lcom/miui/gallery/ui/GLCanvas;
    :goto_0
    if-nez v0, :cond_1

    .line 141
    :goto_1
    return-void

    .line 135
    .end local v0           #canvas:Lcom/miui/gallery/ui/GLCanvas;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/ui/GLCanvas;

    move-object v0, v3

    goto :goto_0

    .line 137
    .restart local v0       #canvas:Lcom/miui/gallery/ui/GLCanvas;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/NinePatchInstance;

    .line 138
    .local v2, instance:Lcom/miui/gallery/ui/NinePatchInstance;
    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/NinePatchInstance;->recycle(Lcom/miui/gallery/ui/GLCanvas;)V

    goto :goto_2

    .line 140
    .end local v2           #instance:Lcom/miui/gallery/ui/NinePatchInstance;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/NinePatchTexture;->mInstanceCache:Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/NinePatchTexture$MyCacheMap;->clear()V

    goto :goto_1
.end method
