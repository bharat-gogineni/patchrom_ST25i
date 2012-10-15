.class Lcom/miui/home/launcher/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


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

.field final synthetic val$fadeOut:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$5;->this$0:Lcom/miui/home/launcher/DragLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/miui/home/launcher/DragLayer$5;->val$fadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragLayer$5;->val$fadeOut:Z

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$5;->this$0:Lcom/miui/home/launcher/DragLayer;

    #calls: Lcom/miui/home/launcher/DragLayer;->fadeOutDragView()V
    invoke-static {v0}, Lcom/miui/home/launcher/DragLayer;->access$300(Lcom/miui/home/launcher/DragLayer;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$5;->this$0:Lcom/miui/home/launcher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragLayer;->access$402(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
