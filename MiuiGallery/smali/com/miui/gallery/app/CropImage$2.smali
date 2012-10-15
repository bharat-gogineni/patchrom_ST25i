.class Lcom/miui/gallery/app/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/CropImage;->onSaveClicked()V
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
        "Landroid/content/Intent;",
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
    .line 508
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage$2;->this$0:Lcom/miui/gallery/app/CropImage;

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
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$2;->this$0:Lcom/miui/gallery/app/CropImage;

    const/4 v2, 0x0

    #setter for: Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;
    invoke-static {v1, v2}, Lcom/miui/gallery/app/CropImage;->access$702(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;

    .line 511
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 515
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$2;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/CropImage;->access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage$2;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/gallery/app/CropImage;->access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage$2;->this$0:Lcom/miui/gallery/app/CropImage;

    #getter for: Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/CropImage;->access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
