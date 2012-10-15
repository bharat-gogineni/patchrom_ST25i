.class Lcom/miui/gallery/app/SlideshowDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/SlideshowDataAdapter;->nextSlide(Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$1;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Lcom/miui/gallery/app/SlideshowPage$Slide;
    .locals 1
    .parameter "jc"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter$1;->this$0:Lcom/miui/gallery/app/SlideshowDataAdapter;

    #calls: Lcom/miui/gallery/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/miui/gallery/app/SlideshowPage$Slide;
    invoke-static {v0}, Lcom/miui/gallery/app/SlideshowDataAdapter;->access$900(Lcom/miui/gallery/app/SlideshowDataAdapter;)Lcom/miui/gallery/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/SlideshowDataAdapter$1;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Lcom/miui/gallery/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method
