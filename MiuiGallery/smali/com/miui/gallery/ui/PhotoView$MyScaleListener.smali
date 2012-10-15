.class Lcom/miui/gallery/ui/PhotoView$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;-><init>(Lcom/miui/gallery/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 610
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 611
    .local v0, scale:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v4

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/gallery/ui/PositionController;->scaleBy(FFF)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PositionController;->beginScale(FF)V

    .line 623
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->endScale()V

    .line 629
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->snapToNeighborImage()Z

    .line 630
    return-void
.end method
