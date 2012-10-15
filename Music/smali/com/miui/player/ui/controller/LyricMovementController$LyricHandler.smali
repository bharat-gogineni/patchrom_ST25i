.class Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;
.super Landroid/os/Handler;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/LyricMovementController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 151
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v2, v2, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    const/4 v3, 0x2

    iput v3, v2, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 153
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v2, v2, Lcom/miui/player/ui/controller/LyricMovementController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-wide v3, v3, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/meta/LyricParser$LyricShot;

    move-result-object v1

    .line 154
    .local v1, lyricShot:Lcom/miui/player/meta/LyricParser$LyricShot;
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v4, v4, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricView:Lcom/miui/player/ui/controller/LyricMovementController$LyricView;

    invoke-virtual {v4}, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/player/ui/controller/LyricMovementController;->getScrollOffset(Lcom/miui/player/meta/LyricParser$LyricShot;IF)I

    move-result v0

    .line 156
    .local v0, end:I
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v2, v2, Lcom/miui/player/ui/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/ui/view/VerticalSlideAnimation;

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->slideTo(I)V

    .line 157
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-wide v3, v3, Lcom/miui/player/ui/controller/LyricMovementController;->mLastPosition:J

    invoke-virtual {v2, v3, v4, v7}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 159
    .end local v0           #end:I
    .end local v1           #lyricShot:Lcom/miui/player/meta/LyricParser$LyricShot;
    :cond_0
    return-void
.end method
