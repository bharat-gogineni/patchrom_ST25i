.class public Lcom/lidroid/systemui/quickpanel/SoundButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "SoundButton.java"


# static fields
.field public static AUDIO_MANAGER:Landroid/media/AudioManager; = null

.field public static final CM_MODE_SOUNDVIB_SOUND_VIB_SILENT:I = 0x5

.field public static final CM_MODE_SOUNDVIB_VIB:I = 0x0

.field public static final CM_MODE_SOUNDVIB_VIB_SILENT:I = 0x3

.field public static final CM_MODE_SOUND_SILENT:I = 0x2

.field public static final CM_MODE_SOUND_VIB:I = 0x1

.field public static final CM_MODE_SOUND_VIB_SILENT:I = 0x4

.field public static final CM_MODE_VIB_SILENT:I = 0x6

.field public static final RINGER_MODE_SILENT:I = 0x1

.field public static final RINGER_MODE_SOUND_AND_VIBRATE:I = 0x4

.field public static final RINGER_MODE_SOUND_ONLY:I = 0x3

.field public static final RINGER_MODE_UNKNOWN:I = 0x0

.field public static final RINGER_MODE_VIBRATE_ONLY:I = 0x2

.field public static final VIBRATE_DURATION:I = 0x1f4

.field public static VIBRATOR:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    sput-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_ring_mode"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSoundState(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->initServices(Landroid/content/Context;)V

    sget-object v2, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sget-object v2, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    if-ne v0, v4, :cond_0

    if-ne v1, v3, :cond_0

    const/4 v2, 0x4

    :goto_0
    return v2

    :cond_0
    if-ne v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_0
.end method

.method private static hapticFeedbackEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_haptic_feedback"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_2

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private static initServices(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    :cond_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    :cond_1
    return-void
.end method

.method private supports(I)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    if-eq v0, v6, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_1
    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_2
    if-eq v0, v2, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static updateSettings(Landroid/content/Context;IIIZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_in_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v0, p3}, Landroid/media/AudioManager;->setRingerMode(I)V

    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->hapticFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lidroid/systemui/quickpanel/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 2

    const v1, 0x7f08007f

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f080080

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080082

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080081

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->initServices(Landroid/content/Context;)V

    packed-switch v1, :pswitch_data_0

    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v6}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v3, v4, v4, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v3, v3, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v5, v5, v5, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v3, v3, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v3, v4, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, v5, v5, v5, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v7}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_5
    invoke-static {v0, v3, v3, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, v5, v5, v5, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v7}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v6}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0, v3, v4, v4, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_8
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v7}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_9
    invoke-direct {p0, v6}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0, v3, v4, v4, v5}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_0

    :cond_a
    invoke-direct {p0, v4}, Lcom/lidroid/systemui/quickpanel/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v0, v3, v4, v3, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v0, v3, v3, v4, v3}, Lcom/lidroid/systemui/quickpanel/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0200fe

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0200fd

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02010b

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020108

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mIcon:I

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/SoundButton;->mState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
