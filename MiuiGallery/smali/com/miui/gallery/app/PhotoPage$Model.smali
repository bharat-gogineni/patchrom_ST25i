.class public interface abstract Lcom/miui/gallery/app/PhotoPage$Model;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract notifyDirty()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V
.end method
