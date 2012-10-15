.class Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 109
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v1, :cond_0

    .line 110
    iget-object v5, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 114
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 115
    .local v2, height:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v5, 0x4480

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/miui/gallery/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v7, v1, v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
