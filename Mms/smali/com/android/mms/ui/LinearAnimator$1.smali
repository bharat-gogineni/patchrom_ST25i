.class final Lcom/android/mms/ui/LinearAnimator$1;
.super Ljava/lang/Object;
.source "LinearAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LinearAnimator;->start(FFJLcom/android/mms/ui/LinearAnimator$FrameHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:J

.field final synthetic val$endValue:F

.field final synthetic val$frameHandler:Lcom/android/mms/ui/LinearAnimator$FrameHandler;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$startTime:J

.field final synthetic val$startValue:F


# direct methods
.method constructor <init>(JFFJLcom/android/mms/ui/LinearAnimator$FrameHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$duration:J

    iput p3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    iput p4, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startValue:F

    iput-wide p5, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startTime:J

    iput-object p7, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$frameHandler:Lcom/android/mms/ui/LinearAnimator$FrameHandler;

    iput-object p8, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    .local v0, time:J
    const/4 v2, 0x0

    .line 22
    .local v2, value:F
    iget-wide v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 23
    iget v2, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    .line 27
    :goto_0
    iget v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startValue:F

    iget v4, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    cmpl-float v3, v2, v3

    if-gez v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startValue:F

    iget v4, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$frameHandler:Lcom/android/mms/ui/LinearAnimator$FrameHandler;

    iget v4, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    invoke-interface {v3, v4}, Lcom/android/mms/ui/LinearAnimator$FrameHandler;->onFrame(F)V

    .line 30
    iget-object v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$frameHandler:Lcom/android/mms/ui/LinearAnimator$FrameHandler;

    invoke-interface {v3}, Lcom/android/mms/ui/LinearAnimator$FrameHandler;->onEnd()V

    .line 35
    :goto_1
    return-void

    .line 25
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startValue:F

    iget v4, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$endValue:F

    iget v5, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startValue:F

    sub-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$startTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$duration:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    add-float v2, v3, v4

    goto :goto_0

    .line 32
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$frameHandler:Lcom/android/mms/ui/LinearAnimator$FrameHandler;

    invoke-interface {v3, v2}, Lcom/android/mms/ui/LinearAnimator$FrameHandler;->onFrame(F)V

    .line 33
    iget-object v3, p0, Lcom/android/mms/ui/LinearAnimator$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
