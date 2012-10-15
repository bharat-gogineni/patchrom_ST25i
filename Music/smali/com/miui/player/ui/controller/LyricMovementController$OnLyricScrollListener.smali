.class Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;
.super Ljava/lang/Object;
.source "LyricMovementController.java"

# interfaces
.implements Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnLyricScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/LyricMovementController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(I)V
    .locals 2
    .parameter "deltaScrollY"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget v0, v0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;
    invoke-static {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->access$100(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/view/ExtendScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;)V

    .line 389
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/controller/LyricMovementController;->onVerticalScroll(I)Z

    .line 390
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;
    invoke-static {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->access$100(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/view/ExtendScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mLyricScrollListener:Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;
    invoke-static {v1}, Lcom/miui/player/ui/controller/LyricMovementController;->access$000(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onTouchEventEnd()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->access$200(Lcom/miui/player/ui/controller/LyricMovementController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 402
    :cond_0
    return-void
.end method

.method public onTouchEventStart()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 396
    return-void
.end method
