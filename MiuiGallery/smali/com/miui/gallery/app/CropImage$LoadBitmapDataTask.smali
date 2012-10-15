.class Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mItem:Lcom/miui/gallery/data/MediaItem;

.field final synthetic this$0:Lcom/miui/gallery/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput-object p2, p0, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/miui/gallery/data/MediaItem;

    .line 919
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;->mItem:Lcom/miui/gallery/data/MediaItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/util/ThreadPool$Job;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
