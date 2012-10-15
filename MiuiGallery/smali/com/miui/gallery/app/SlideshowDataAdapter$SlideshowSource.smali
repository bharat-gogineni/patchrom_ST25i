.class public interface abstract Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlideshowSource"
.end annotation


# virtual methods
.method public abstract addContentListener(Lcom/miui/gallery/data/ContentListener;)V
.end method

.method public abstract findItemIndex(Lcom/miui/gallery/data/Path;I)I
.end method

.method public abstract getMediaItem(I)Lcom/miui/gallery/data/MediaItem;
.end method

.method public abstract reload()J
.end method

.method public abstract removeContentListener(Lcom/miui/gallery/data/ContentListener;)V
.end method
