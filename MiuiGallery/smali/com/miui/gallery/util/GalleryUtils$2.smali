.class final Lcom/miui/gallery/util/GalleryUtils$2;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/GalleryUtils;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ios:Lcom/miui/gallery/util/InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/InterruptableOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryUtils$2;->val$ios:Lcom/miui/gallery/util/InterruptableOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryUtils$2;->val$ios:Lcom/miui/gallery/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/miui/gallery/util/InterruptableOutputStream;->interrupt()V

    .line 720
    return-void
.end method
