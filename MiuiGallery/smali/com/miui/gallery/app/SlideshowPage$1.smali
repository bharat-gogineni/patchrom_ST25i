.class Lcom/miui/gallery/app/SlideshowPage$1;
.super Lcom/miui/gallery/ui/GLView;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SlideshowPage;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowPage$1;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$1;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    #getter for: Lcom/miui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;
    invoke-static {v0}, Lcom/miui/gallery/app/SlideshowPage;->access$000(Lcom/miui/gallery/app/SlideshowPage;)Lcom/miui/gallery/ui/SlideshowView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/miui/gallery/ui/SlideshowView;->layout(IIII)V

    .line 88
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$1;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/SlideshowPage;->onBackPressed()V

    .line 95
    :cond_0
    return v1
.end method

.method protected renderBackground(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 100
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->clearBuffer()V

    .line 101
    return-void
.end method
