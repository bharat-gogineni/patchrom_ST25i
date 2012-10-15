.class public Lcom/miui/player/ui/ScanningProgress;
.super Landroid/app/Activity;
.source "ScanningProgress.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Lcom/miui/player/ui/ScanningProgress$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ScanningProgress$1;-><init>(Lcom/miui/player/ui/ScanningProgress;)V

    iput-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/ScanningProgress;->setVolumeControlStream(I)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/ScanningProgress;->requestWindowFeature(I)Z

    .line 71
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/ScanningProgress;->setContentView(I)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/ScanningProgress;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/ScanningProgress;->setResult(I)V

    .line 80
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void

    .line 74
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/ScanningProgress;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method
