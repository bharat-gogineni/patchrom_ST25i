.class Lcom/miui/gallery/app/CropImage$LoadDataTask;
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
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
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
    .line 905
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$LoadDataTask;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p2, p0, Lcom/miui/gallery/app/CropImage$LoadDataTask;->mItem:Lcom/miui/gallery/data/MediaItem;

    .line 907
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .parameter "jc"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$LoadDataTask;->mItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage$LoadDataTask;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/util/ThreadPool$Job;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/CropImage$LoadDataTask;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
