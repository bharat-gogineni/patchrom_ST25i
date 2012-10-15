.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;
.super Ljava/lang/Object;
.source "Weather_2x4_new.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_new;->switchCity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

.field final synthetic val$aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;ZLcom/miui/home/launcher/gadget/Rotate3dAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    iput-boolean p2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$reverse:Z

    iput-object p3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$400(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    move-result-object v2

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintUpPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$500(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 554
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$400(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    move-result-object v2

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintDownPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$600(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 556
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$reverse:Z

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDown:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 569
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isFlip()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDown:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;->val$aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 548
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 543
    return-void
.end method
