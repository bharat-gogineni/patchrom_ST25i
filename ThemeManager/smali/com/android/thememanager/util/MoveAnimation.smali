.class public abstract Lcom/android/thememanager/util/MoveAnimation;
.super Ljava/lang/Object;
.source "MoveAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 0
    .parameter "totalMoveOffset"

    .prologue
    .line 11
    return-void
.end method

.method public abstract onMove(I)V
.end method

.method public start(I)V
    .locals 2
    .parameter "moveOffset"

    .prologue
    .line 14
    const/16 v0, 0xa

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/thememanager/util/MoveAnimation;->start(III)V

    .line 15
    return-void
.end method

.method public start(III)V
    .locals 2
    .parameter "moveOffset"
    .parameter "animMostCnt"
    .parameter "animInternal"

    .prologue
    .line 18
    new-instance v0, Lcom/android/thememanager/util/MoveAnimation$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/thememanager/util/MoveAnimation$1;-><init>(Lcom/android/thememanager/util/MoveAnimation;III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/thememanager/util/MoveAnimation$1;->sendEmptyMessage(I)Z

    .line 39
    return-void
.end method
