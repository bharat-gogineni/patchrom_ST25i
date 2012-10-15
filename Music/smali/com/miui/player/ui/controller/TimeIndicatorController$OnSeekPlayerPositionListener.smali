.class Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;
.super Ljava/lang/Object;
.source "TimeIndicatorController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/TimeIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnSeekPlayerPositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/TimeIndicatorController;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 107
    iget-object v2, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-wide v2, v2, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-wide v2, v2, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    int-to-long v4, p2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    div-long v0, v2, v6

    .line 109
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v2, v2, Lcom/miui/player/ui/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v3, v3, Lcom/miui/player/ui/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const v4, 0x7f0900dc

    invoke-static {v3, v0, v1, v4}, Lcom/miui/player/ui/UIHelper;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .end local v0           #currentTime:J
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mUserTouch:Z

    .line 117
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 10
    .parameter "seekBar"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 121
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 122
    .local v3, progress:I
    iget-object v4, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/miui/player/ui/controller/TimeIndicatorController;->mUserTouch:Z

    .line 123
    iget-object v4, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v4, v4, Lcom/miui/player/ui/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 125
    .local v2, max:I
    iget-object v4, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v4, v4, Lcom/miui/player/ui/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;

    invoke-interface {v4, v3, v2}, Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;->seek(II)V

    .line 128
    .end local v2           #max:I
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-wide v4, v4, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-wide v4, v4, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    int-to-long v6, v3

    mul-long/2addr v4, v6

    div-long/2addr v4, v8

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    div-long v0, v4, v8

    .line 130
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v4, v4, Lcom/miui/player/ui/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v5, v5, Lcom/miui/player/ui/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const v6, 0x7f0900dc

    invoke-static {v5, v0, v1, v6}, Lcom/miui/player/ui/UIHelper;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0           #currentTime:J
    :cond_1
    return-void
.end method
