.class Lcom/miui/gallery/photoeditor/actions/TouchView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/TouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

.field final synthetic val$swipeThreshold:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/TouchView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    iput p2, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->val$swipeThreshold:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 84
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    invoke-static {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$100(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 85
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 86
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 87
    .local v1, absY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v2, v6, v7

    .line 88
    .local v2, deltaX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v3, v6, v7

    .line 89
    .local v3, deltaY:F
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    invoke-virtual {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->getWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x4

    .line 90
    .local v4, travelX:I
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    invoke-virtual {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->getHeight()I

    move-result v6

    div-int/lit8 v5, v6, 0x4

    .line 91
    .local v5, travelY:I
    iget v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->val$swipeThreshold:I

    int-to-float v6, v6

    cmpl-float v6, p3, v6

    if-lez v6, :cond_1

    cmpg-float v6, v1, v0

    if-gez v6, :cond_1

    int-to-float v6, v4

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1

    .line 92
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    invoke-static {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$100(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;->onSwipeRight()V

    .line 101
    .end local v0           #absX:F
    .end local v1           #absY:F
    .end local v2           #deltaX:F
    .end local v3           #deltaY:F
    .end local v4           #travelX:I
    .end local v5           #travelY:I
    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 93
    .restart local v0       #absX:F
    .restart local v1       #absY:F
    .restart local v2       #deltaX:F
    .restart local v3       #deltaY:F
    .restart local v4       #travelX:I
    .restart local v5       #travelY:I
    :cond_1
    iget v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->val$swipeThreshold:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, p3, v6

    if-gez v6, :cond_2

    cmpg-float v6, v1, v0

    if-gez v6, :cond_2

    neg-int v6, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 94
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    invoke-static {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$100(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;->onSwipeLeft()V

    goto :goto_0

    .line 95
    :cond_2
    iget v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->val$swipeThreshold:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, p4, v6

    if-gez v6, :cond_3

    cmpg-float v6, v0, v1

    if-gez v6, :cond_3

    neg-int v6, v5

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    .line 96
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    invoke-static {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$100(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;->onSwipeUp()V

    goto :goto_0

    .line 97
    :cond_3
    iget v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->val$swipeThreshold:I

    int-to-float v6, v6

    cmpl-float v6, p4, v6

    if-lez v6, :cond_0

    const/high16 v6, 0x4000

    div-float v6, v1, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    int-to-float v6, v5

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 98
    iget-object v6, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    invoke-static {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$100(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;->onSwipeDown()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->singleTapListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$000(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 75
    .local v0, point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/gallery/photoeditor/actions/TouchView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TouchView;

    #getter for: Lcom/miui/gallery/photoeditor/actions/TouchView;->singleTapListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/TouchView;->access$000(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;->onSingleTap(Landroid/graphics/PointF;)V

    .line 78
    .end local v0           #point:Landroid/graphics/PointF;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
