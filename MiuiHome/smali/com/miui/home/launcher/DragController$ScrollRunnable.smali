.class Lcom/miui/home/launcher/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/miui/home/launcher/DragController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 813
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    #getter for: Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    iget v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    #getter for: Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragScroller;->scrollDragingLeft()V

    .line 819
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->access$102(Lcom/miui/home/launcher/DragController;I)I

    .line 820
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    #getter for: Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$300(Lcom/miui/home/launcher/DragController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    #getter for: Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;
    invoke-static {v1}, Lcom/miui/home/launcher/DragController;->access$200(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragController$ScrollRunnable;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 822
    :cond_0
    return-void

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragController;

    #getter for: Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragScroller;->scrollDragingRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 825
    iput p1, p0, Lcom/miui/home/launcher/DragController$ScrollRunnable;->mDirection:I

    .line 826
    return-void
.end method
