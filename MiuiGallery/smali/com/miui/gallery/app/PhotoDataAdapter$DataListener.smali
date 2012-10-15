.class public interface abstract Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onPhotoAvailable(JZ)V
.end method

.method public abstract onPhotoChanged(ILcom/miui/gallery/data/Path;)V
.end method
