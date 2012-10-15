.class public interface abstract Lcom/miui/gallery/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/miui/gallery/ui/TileImageView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getImageRotation()I
.end method

.method public abstract getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
.end method

.method public abstract getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
.end method

.method public abstract next()V
.end method

.method public abstract notifyDirty()V
.end method

.method public abstract previous()V
.end method
