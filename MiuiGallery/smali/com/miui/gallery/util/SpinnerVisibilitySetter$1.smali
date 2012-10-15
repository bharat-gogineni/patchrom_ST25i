.class Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;
.super Landroid/os/Handler;
.source "SpinnerVisibilitySetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/SpinnerVisibilitySetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0x7d0

    const-wide/16 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 55
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->removeMessages(I)V

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    #getter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J
    invoke-static {v2}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$000(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J
    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$002(Lcom/miui/gallery/util/SpinnerVisibilitySetter;J)J

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    #getter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$100(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->removeMessages(I)V

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    #getter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J
    invoke-static {v2}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$000(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-ltz v2, :cond_0

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    #getter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J
    invoke-static {v4}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$000(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 66
    .local v0, t:J
    cmp-long v2, v0, v9

    if-ltz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    const-wide/16 v3, -0x1

    #setter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J
    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$002(Lcom/miui/gallery/util/SpinnerVisibilitySetter;J)J

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->this$0:Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    #getter for: Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->access$100(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 70
    :cond_1
    sub-long v2, v9, v0

    invoke-virtual {p0, v6, v2, v3}, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
