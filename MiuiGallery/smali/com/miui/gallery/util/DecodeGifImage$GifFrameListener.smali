.class public interface abstract Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;
.super Ljava/lang/Object;
.source "DecodeGifImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/DecodeGifImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GifFrameListener"
.end annotation


# virtual methods
.method public abstract onUpdateGifFrame(JLcom/miui/gallery/util/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
