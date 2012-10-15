.class Lcom/miui/gallery/app/SlideshowPage$3;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/SlideshowPage;->loadNextBitmap()V
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
        "Lcom/miui/gallery/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SlideshowPage;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowPage$3;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Lcom/miui/gallery/app/SlideshowPage$Slide;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Lcom/miui/gallery/app/SlideshowPage$Slide;>;"
    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage$3;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/SlideshowPage$Slide;

    #setter for: Lcom/miui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/miui/gallery/app/SlideshowPage$Slide;
    invoke-static {v1, v0}, Lcom/miui/gallery/app/SlideshowPage;->access$302(Lcom/miui/gallery/app/SlideshowPage;Lcom/miui/gallery/app/SlideshowPage$Slide;)Lcom/miui/gallery/app/SlideshowPage$Slide;

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$3;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    #getter for: Lcom/miui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/SlideshowPage;->access$400(Lcom/miui/gallery/app/SlideshowPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    return-void
.end method
