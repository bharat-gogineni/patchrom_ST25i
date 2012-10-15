.class Lcom/miui/home/launcher/DragLayer$4;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragLayer;

.field final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$from:Landroid/graphics/Rect;

.field final synthetic val$initialAlpha:F

.field final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$to:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/DragLayer$4;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/miui/home/launcher/DragLayer$4;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/miui/home/launcher/DragLayer$4;->val$to:Landroid/graphics/Rect;

    iput p7, p0, Lcom/miui/home/launcher/DragLayer$4;->val$finalScale:F

    iput p8, p0, Lcom/miui/home/launcher/DragLayer$4;->val$finalAlpha:F

    iput p9, p0, Lcom/miui/home/launcher/DragLayer$4;->val$initialAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .parameter "animation"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 596
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 598
    .local v3, percent:F
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 599
    .local v4, width:I
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 600
    .local v1, height:I
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v10

    iget-object v7, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v8}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v8

    aget v8, v8, v10

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v9}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v9

    aget v9, v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/miui/home/launcher/DragLayer;->invalidate(IIII)V

    .line 603
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_0

    move v0, v3

    .line 605
    .local v0, alphaPercent:F
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_1

    move v2, v3

    .line 608
    .local v2, motionPercent:F
    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/miui/home/launcher/DragLayer$4;->val$to:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/miui/home/launcher/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v10

    .line 609
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/miui/home/launcher/DragLayer$4;->val$to:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/miui/home/launcher/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v11

    .line 610
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget v6, p0, Lcom/miui/home/launcher/DragLayer$4;->val$finalScale:F

    mul-float/2addr v6, v3

    sub-float v7, v12, v3

    add-float/2addr v6, v7

    #setter for: Lcom/miui/home/launcher/DragLayer;->mDropViewScale:F
    invoke-static {v5, v6}, Lcom/miui/home/launcher/DragLayer;->access$102(Lcom/miui/home/launcher/DragLayer;F)F

    .line 611
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget v6, p0, Lcom/miui/home/launcher/DragLayer$4;->val$finalAlpha:F

    mul-float/2addr v6, v0

    sub-float v7, v12, v0

    iget v8, p0, Lcom/miui/home/launcher/DragLayer$4;->val$initialAlpha:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    #setter for: Lcom/miui/home/launcher/DragLayer;->mDropViewAlpha:F
    invoke-static {v5, v6}, Lcom/miui/home/launcher/DragLayer;->access$202(Lcom/miui/home/launcher/DragLayer;F)F

    .line 612
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v10

    iget-object v7, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v8}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v8

    aget v8, v8, v10

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/miui/home/launcher/DragLayer$4;->this$0:Lcom/miui/home/launcher/DragLayer;

    #getter for: Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I
    invoke-static {v9}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)[I

    move-result-object v9

    aget v9, v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/miui/home/launcher/DragLayer;->invalidate(IIII)V

    .line 614
    return-void

    .line 603
    .end local v0           #alphaPercent:F
    .end local v2           #motionPercent:F
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_0

    .line 605
    .restart local v0       #alphaPercent:F
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer$4;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_1
.end method
