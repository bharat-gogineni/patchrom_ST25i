.class Lcom/miui/gallery/app/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/CropImage;->initializeData()V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/CropImage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$4;->this$0:Lcom/miui/gallery/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$4;->this$0:Lcom/miui/gallery/app/CropImage;

    const/4 v2, 0x0

    #setter for: Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;
    invoke-static {v1, v2}, Lcom/miui/gallery/app/CropImage;->access$1002(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;

    .line 823
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 824
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$4;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/CropImage;->access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage$4;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/gallery/app/CropImage;->access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
