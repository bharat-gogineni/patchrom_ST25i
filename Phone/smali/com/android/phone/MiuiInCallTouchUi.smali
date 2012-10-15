.class public Lcom/android/phone/MiuiInCallTouchUi;
.super Lcom/android/phone/InCallTouchUi;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallTouchUi$3;,
        Lcom/android/phone/MiuiInCallTouchUi$Handler;,
        Lcom/android/phone/MiuiInCallTouchUi$PanelState;,
        Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mAddButton:Landroid/widget/Button;

.field protected mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

.field private mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

.field private mAudioModeButton:Landroid/widget/ToggleButton;

.field private mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

.field private mAudioModePanel:Landroid/view/View;

.field private mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

.field private mCallRecordPrompt:Landroid/widget/TextView;

.field private mCallRecordTimer:Landroid/widget/Chronometer;

.field private mContactButton:Landroid/widget/Button;

.field private mDampingInterpolator:Lmiui/animation/DampingInterpolator;

.field private mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

.field private mDialerButton:Landroid/widget/ToggleButton;

.field private mEndButton:Landroid/widget/Button;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mInCallControlsMask:Landroid/view/View;

.field protected mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

.field private mIsAutoHideAudioModePanel:Z

.field private mLastClickTime:J

.field mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoteButton:Landroid/widget/Button;

.field private mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordButton:Landroid/widget/ToggleButton;

.field private mStopRecordButton:Landroid/view/View;

.field private mSwapButton:Landroid/widget/Button;

.field private mToolsButton:Landroid/widget/ToggleButton;

.field private mToolsPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lmiui/animation/DampingInterpolator;

    const/high16 v1, 0x4120

    invoke-direct {v0, v1}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 61
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 756
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 132
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallTouchUi$Handler;-><init>(Lcom/android/phone/MiuiInCallTouchUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 134
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 135
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private resetStartCallRecordButtonCheckState()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 753
    :cond_0
    return-void
.end method

.method private setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v1, 0x1

    const v9, 0x3c03126f

    const/4 v8, 0x0

    .line 765
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 769
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v0, v2, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 771
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto :goto_0

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 776
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 777
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v0, :cond_3

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    :cond_3
    const/4 v0, 0x0

    .line 782
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 785
    :cond_4
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 789
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 791
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_9

    .line 792
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 793
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 797
    if-eqz v0, :cond_8

    .line 798
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 802
    :goto_1
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 804
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 831
    :cond_6
    :goto_2
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_e

    .line 832
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 833
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v2, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v2

    .line 835
    if-eqz v0, :cond_d

    .line 836
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 840
    :goto_3
    invoke-virtual {v2}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    .line 842
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 866
    :cond_7
    :goto_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 867
    new-instance v1, Lcom/android/phone/MiuiInCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiInCallTouchUi$2;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 880
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 881
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 884
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    goto/16 :goto_0

    .line 800
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_1

    .line 805
    :cond_9
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_b

    .line 806
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 807
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 811
    if-eqz v0, :cond_a

    .line 812
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 816
    :goto_5
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 814
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_5

    .line 817
    :cond_b
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_6

    .line 818
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 819
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v4, v10, v8, v9}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 823
    if-eqz v0, :cond_c

    .line 824
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 828
    :goto_6
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 826
    :cond_c
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_6

    .line 838
    :cond_d
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto/16 :goto_3

    .line 843
    :cond_e
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_10

    .line 844
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 845
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v1, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v1

    .line 847
    if-eqz v0, :cond_f

    .line 848
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 852
    :goto_7
    invoke-virtual {v1}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 850
    :cond_f
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_7

    .line 853
    :cond_10
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_7

    .line 854
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 855
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v1, v10, v9, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v1

    .line 857
    if-eqz v0, :cond_11

    .line 858
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 862
    :goto_8
    invoke-virtual {v1}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto/16 :goto_4

    .line 860
    :cond_11
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_8
.end method

.method private showAudioModePopup(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/16 v3, 0x64

    .line 604
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 606
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 608
    return-void
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f040025

    return v0
.end method

.method protected getIncomingCallWidget()Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 612
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_answer_widget"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    :goto_0
    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 616
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-nez v1, :cond_1

    .line 617
    const v1, 0x7f0700af

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 618
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 619
    const v1, 0x7f070084

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiInCallAnswerWidget;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 620
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 621
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f070099

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setSlidingTarget(Landroid/view/View;Landroid/view/View;)V

    .line 623
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 645
    .end local v0           #stub:Landroid/view/ViewStub;
    :goto_1
    return-object v1

    .line 612
    :cond_0
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    goto :goto_0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-nez v1, :cond_2

    .line 625
    const v1, 0x7f0700ae

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 626
    .restart local v0       #stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 627
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 628
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 629
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTranslationY(F)V

    .line 630
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    goto :goto_1

    .line 633
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_2
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$3;->$SwitchMap$com$android$phone$MiuiInCallTouchUi$AnswerWidgetType:[I

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 645
    const/4 v1, 0x0

    goto :goto_1

    .line 635
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 638
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    goto :goto_1

    .line 640
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-eqz v1, :cond_4

    .line 641
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 643
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    goto :goto_1

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAudioModePanelOpened()Z
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialerPanelOpened()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStartCallRecordingRequestPending()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolsPanelOpened()Z
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 274
    .local v2, now:J
    iget-wide v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 326
    :goto_0
    return-void

    .line 277
    :cond_0
    iput-wide v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 280
    .local v1, id:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 324
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 291
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 294
    :pswitch_3
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 295
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 298
    :pswitch_4
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 299
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 303
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_2

    .line 306
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_3

    .line 309
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_4

    .line 313
    :pswitch_8
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 314
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 315
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v4, v5, :cond_5

    .line 316
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_1

    .line 319
    :cond_5
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_1

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700a9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    const v1, 0x7f07009b

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 157
    const v1, 0x7f0700c0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    new-instance v2, Lcom/android/phone/MiuiInCallTouchUi$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiInCallTouchUi$1;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 168
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 170
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 172
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 174
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 176
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 178
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    .line 180
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    .line 182
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    .line 184
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    .line 189
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    .line 191
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    .line 195
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    .line 199
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    .line 203
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 206
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0041

    invoke-static {v1, v2, v3}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    .line 224
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    .line 225
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    .line 227
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    .line 229
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v1, 0x7f0700b0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    .line 234
    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    .line 235
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 596
    const/4 v0, 0x1

    return v0
.end method

.method onStartCallRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 731
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 733
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 735
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 736
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallStreamRecording(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    :cond_0
    return-void
.end method

.method onStopCallRecord()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 742
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 743
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    return-void
.end method

.method resetPanelState()V
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 760
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 761
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallTouchUi;->resetStartCallRecordButtonCheckState()V

    .line 762
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    .line 149
    :cond_0
    return-void
.end method

.method protected setInCallWidgetResources(Z)V
    .locals 2
    .parameter "allowRespondViaSms"

    .prologue
    .line 650
    if-eqz p1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 666
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 661
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 663
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method public showAudioModePanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 707
    if-eqz p1, :cond_1

    .line 708
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showAudioModePopup()V
    .locals 1

    .prologue
    .line 591
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 592
    return-void
.end method

.method public showDialerPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 695
    if-eqz p1, :cond_1

    .line 696
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v1

    .line 671
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-ne v1, v2, :cond_1

    .line 672
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 673
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 675
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->reset(Lcom/android/internal/telephony/CallManager;)V

    .line 681
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public showToolsPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 719
    if-eqz p1, :cond_1

    .line 720
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method public triggerPing()V
    .locals 2

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-ne v0, v1, :cond_0

    .line 686
    invoke-super {p0}, Lcom/android/phone/InCallTouchUi;->triggerPing()V

    .line 688
    :cond_0
    return-void
.end method

.method protected updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 7
    .parameter "inCallControlState"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 537
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 538
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-nez v4, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 540
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 541
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 542
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 545
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 546
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 547
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 549
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c034d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 552
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020057

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 565
    :goto_1
    const/4 v1, 0x0

    .line 566
    .local v1, switchAudioModeFinished:Z
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v4, :cond_4

    .line 567
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 568
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 569
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 570
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 582
    :goto_2
    if-eqz v1, :cond_0

    .line 583
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 584
    sget-object v2, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0

    .line 557
    .end local v0           #buttonText:Ljava/lang/CharSequence;
    .end local v1           #switchAudioModeFinished:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c034c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 559
    .restart local v0       #buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020054

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .restart local v1       #switchAudioModeFinished:Z
    :cond_3
    move v1, v3

    .line 570
    goto :goto_2

    .line 571
    :cond_4
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v4, :cond_6

    .line 572
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 573
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 574
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 575
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_5

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 577
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 578
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 579
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 580
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_7

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_4
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const v12, 0x7f0e0041

    const v11, 0x7f0e0040

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 338
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 339
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_9

    .line 342
    move-object v3, v1

    .line 352
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 366
    .local v5, phoneType:I
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v4

    check-cast v4, Lcom/android/phone/MiuiInCallControlState;

    .line 372
    .local v4, inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v6, :cond_b

    .line 373
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 376
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 396
    :goto_1
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_1

    .line 397
    if-eq v5, v10, :cond_0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 404
    :cond_0
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->canEndCall:Z

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 420
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 423
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 424
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 427
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 428
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 431
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 434
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v6}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 435
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v6, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 436
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 437
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :cond_2
    :goto_2
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMute:Z

    if-eqz v6, :cond_f

    .line 448
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 449
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 450
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 463
    :goto_3
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v6, :cond_10

    .line 464
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 465
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 466
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->onHold:Z

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 467
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 476
    :goto_4
    iget-object v9, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_11

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 483
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 484
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 485
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 488
    :cond_3
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v6, :cond_4

    .line 494
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 498
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_5

    .line 504
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 510
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v6, :cond_6

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_12

    .line 512
    :cond_6
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 513
    sget-object v6, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 514
    sget-object v6, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 515
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    :goto_6
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->bluetoothEnabled:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v8, :cond_13

    .line 523
    iput-boolean v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 524
    const/16 v6, 0x1388

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 529
    :cond_7
    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_8

    .line 531
    iput-boolean v10, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 533
    :cond_8
    return-void

    .line 343
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v4           #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .end local v5           #phoneType:I
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_a

    .line 346
    move-object v3, v0

    goto/16 :goto_0

    .line 349
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_0

    .line 377
    .restart local v4       #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .restart local v5       #phoneType:I
    :cond_b
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_c

    .line 378
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 382
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 391
    :cond_c
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 392
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 394
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 406
    :cond_d
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 411
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    :cond_e
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 440
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 441
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v11}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 442
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 452
    :cond_f
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 453
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9, v12}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 454
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 469
    :cond_10
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 470
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_11
    move v6, v8

    .line 476
    goto/16 :goto_5

    .line 517
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_12
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 525
    :cond_13
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->popupToolsPanel:Z

    if-eqz v6, :cond_7

    .line 526
    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto/16 :goto_7
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter "cm"

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const v7, 0x3b03126f

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 239
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 240
    .local v1, oldVisiblity:I
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_0
    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v7, v5}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 252
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 266
    invoke-static {v2}, Lmiui/animation/AnimatorBuilder;->of(Landroid/animation/Animator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/AnimatorBuilder;->start()Landroid/animation/Animator;

    .line 267
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
