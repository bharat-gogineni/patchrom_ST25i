.class public Lcom/android/mms/ui/LinearAnimator;
.super Ljava/lang/Object;
.source "LinearAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LinearAnimator$FrameHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static start(FFJLcom/android/mms/ui/LinearAnimator$FrameHandler;)V
    .locals 9
    .parameter "startValue"
    .parameter "endValue"
    .parameter "duration"
    .parameter "frameHandler"

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 15
    .local v5, startTime:J
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 17
    .local v8, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/mms/ui/LinearAnimator$1;

    move-wide v1, p2

    move v3, p1

    move v4, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/LinearAnimator$1;-><init>(JFFJLcom/android/mms/ui/LinearAnimator$FrameHandler;Landroid/os/Handler;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method
