.class Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/SleepModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSeekBarSleepModeListener"
.end annotation


# instance fields
.field private mPopupTextView:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0
    .parameter "seekbar"
    .parameter "popupTextView"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    .line 117
    iput-object p1, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    .line 118
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->refreshPopUpTime()V

    .line 123
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->refreshPopUpTime()V

    .line 128
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 133
    return-void
.end method

.method public refreshPopUpTime()V
    .locals 6

    .prologue
    .line 136
    iget-object v3, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 137
    .local v2, progress:I
    iget-object v3, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    iget-object v4, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int v0, v3, v4

    .line 142
    .local v0, leftMargin:I
    int-to-float v3, v0

    mul-int/lit8 v4, v2, 0x32

    int-to-float v4, v4

    const/high16 v5, 0x42b4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 143
    iget-object v3, p0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method
