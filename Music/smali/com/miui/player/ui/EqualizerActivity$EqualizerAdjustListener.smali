.class Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EqualizerAdjustListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/miui/player/ui/view/VerticalSeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 380
    if-nez p3, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 385
    .local v2, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v2, :cond_0

    .line 389
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/player/ui/EqualizerActivity;->notifyServiceEqualizer(Z)V

    .line 391
    invoke-virtual {p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 392
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 393
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 394
    .local v0, i:I
    if-ltz v0, :cond_0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v4

    iget-object v5, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v5}, Lcom/miui/player/ui/EqualizerActivity;->getMinBandLevel(Landroid/content/Context;)I

    move-result v5

    add-int v1, v4, v5

    .line 396
    .local v1, level:I
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v4, v4, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    invoke-virtual {v4, v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->setBand(II)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v2}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 404
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 405
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 406
    .local v0, custom:[I
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v2, v3, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateEqualizerConfig(Landroid/content/Context;I[I)I

    .line 408
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 409
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2, v3, v0, v3}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(I[IZ)V

    .line 413
    .end local v0           #custom:[I
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 418
    .local v0, custom:[I
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v1, v2, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateEqualizerConfig(Landroid/content/Context;I[I)I

    .line 420
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 421
    return-void
.end method
