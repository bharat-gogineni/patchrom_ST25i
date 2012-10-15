.class public abstract Lcom/miui/player/ui/controller/MediaPlaybackController;
.super Ljava/lang/Object;
.source "MediaPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;,
        Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;
    }
.end annotation


# instance fields
.field protected mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

.field private mIsActive:Z

.field private mIsDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsDirty:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsActive:Z

    return-void
.end method


# virtual methods
.method public active()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->update()V

    .line 65
    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsActive:Z

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->setVisible(Z)V

    .line 67
    return-void
.end method

.method public deactive()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsActive:Z

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->setVisible(Z)V

    .line 75
    return-void
.end method

.method protected abstract dirty(I)Z
.end method

.method protected abstract doUpdate()Z
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsActive:Z

    return v0
.end method

.method protected isDirty()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsDirty:Z

    return v0
.end method

.method protected abstract setVisible(Z)V
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 92
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 96
    return-void
.end method

.method public touch(ILcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;)V
    .locals 1
    .parameter "type"
    .parameter "controllerInfo"

    .prologue
    .line 56
    iput-object p2, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/controller/MediaPlaybackController;->dirty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsDirty:Z

    .line 58
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->doUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MediaPlaybackController;->mIsDirty:Z

    .line 88
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
