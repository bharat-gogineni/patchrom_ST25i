.class Lcom/miui/gallery/ui/PhotoView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/miui/gallery/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/high16 v6, 0x4040

    const/4 v5, 0x1

    .line 589
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    :goto_0
    return v5

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v0

    .line 591
    .local v0, controller:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->getCurrentScale()F

    move-result v1

    .line 594
    .local v1, scale:F
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z
    invoke-static {v2, v5}, Lcom/miui/gallery/ui/PhotoView;->access$1702(Lcom/miui/gallery/ui/PhotoView;Z)Z

    .line 595
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float v4, v1, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/gallery/ui/PositionController;->zoomIn(FFF)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->resetToFullView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #calls: Lcom/miui/gallery/ui/PhotoView;->swipeImages(F)Z
    invoke-static {v0, p3}, Lcom/miui/gallery/ui/PhotoView;->access$1600(Lcom/miui/gallery/ui/PhotoView;F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1500(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1500(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;->onSwapStarted()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->access$1702(Lcom/miui/gallery/ui/PhotoView;Z)Z

    .line 584
    :cond_1
    :goto_0
    return v1

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/miui/gallery/ui/PositionController;->fling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->access$1702(Lcom/miui/gallery/ui/PhotoView;Z)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v5, 0x1

    .line 553
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    :goto_0
    return v5

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView;->access$1300(Lcom/miui/gallery/ui/PhotoView;)[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    move-result-object v2

    aget-object v0, v2, v5

    .line 556
    .local v0, next:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView;->access$1300(Lcom/miui/gallery/ui/PhotoView;)[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 558
    .local v1, prev:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v3

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, p3, p4, v3, v4}, Lcom/miui/gallery/ui/PositionController;->startScroll(FFZZ)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1500(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1500(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;->onSingleTapUp(II)V

    .line 568
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
