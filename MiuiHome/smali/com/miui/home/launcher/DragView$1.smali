.class Lcom/miui/home/launcher/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragView;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$1;->val$offsetX:I

    iput p3, p0, Lcom/miui/home/launcher/DragView$1;->val$offsetY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 89
    .local v3, value:F
    iget v4, p0, Lcom/miui/home/launcher/DragView$1;->val$offsetX:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    #getter for: Lcom/miui/home/launcher/DragView;->mOffsetX:F
    invoke-static {v5}, Lcom/miui/home/launcher/DragView;->access$000(Lcom/miui/home/launcher/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 90
    .local v0, deltaX:I
    iget v4, p0, Lcom/miui/home/launcher/DragView$1;->val$offsetY:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    #getter for: Lcom/miui/home/launcher/DragView;->mOffsetY:F
    invoke-static {v5}, Lcom/miui/home/launcher/DragView;->access$100(Lcom/miui/home/launcher/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 92
    .local v1, deltaY:I
    iget-object v4, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    int-to-float v5, v0

    invoke-static {v4, v5}, Lcom/miui/home/launcher/DragView;->access$016(Lcom/miui/home/launcher/DragView;F)F

    .line 93
    iget-object v4, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/miui/home/launcher/DragView;->access$116(Lcom/miui/home/launcher/DragView;F)F

    .line 95
    iget-object v4, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    #getter for: Lcom/miui/home/launcher/DragView;->mLayoutParams:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    invoke-static {v4}, Lcom/miui/home/launcher/DragView;->access$200(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/DragLayer$LayoutParams;

    move-result-object v2

    .line 99
    .local v2, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    iget v4, v2, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 100
    iget v4, v2, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 101
    iget-object v4, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    #getter for: Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;
    invoke-static {v4}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragLayer;->requestLayout()V

    goto :goto_0
.end method
