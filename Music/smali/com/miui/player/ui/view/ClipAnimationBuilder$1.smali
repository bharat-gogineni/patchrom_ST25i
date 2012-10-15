.class Lcom/miui/player/ui/view/ClipAnimationBuilder$1;
.super Ljava/lang/Object;
.source "ClipAnimationBuilder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/view/ClipAnimationBuilder;->createAnimationListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/view/ClipAnimationBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget v1, v1, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mTop:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget v1, v1, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mBottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 60
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/player/ui/view/ClipAnimationBuilder$1;->this$0:Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v0, v0, Lcom/miui/player/ui/view/ClipAnimationBuilder;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 74
    :cond_0
    return-void
.end method
