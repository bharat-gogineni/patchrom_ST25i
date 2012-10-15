.class public Lcom/android/settings/sound/RingerVolumeActivity;
.super Lcom/android/settings/BaseActivity;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;,
        Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    }
.end annotation


# static fields
.field static final SECTION_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private final DESCPTION_ID:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 46
    :array_0
    .array-data 0x4
        0xcft 0x0t 0x8t 0x7ft
        0xd3t 0x0t 0x8t 0x7ft
        0xd9t 0x0t 0x8t 0x7ft
        0xdat 0x0t 0x8t 0x7ft
        0xdbt 0x0t 0x8t 0x7ft
        0xdct 0x0t 0x8t 0x7ft
        0xddt 0x0t 0x8t 0x7ft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 76
    :array_2
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x6t
        0x59t 0x1t 0x2t 0x6t
        0x55t 0x1t 0x2t 0x6t
        0x5at 0x1t 0x2t 0x6t
        0x20t 0x0t 0x2t 0x6t
        0x22t 0x0t 0x2t 0x6t
        0x57t 0x1t 0x2t 0x6t
    .end array-data

    .line 86
    :array_3
    .array-data 0x4
        0x5bt 0x1t 0x2t 0x6t
        0x58t 0x1t 0x2t 0x6t
        0x54t 0x1t 0x2t 0x6t
        0x5at 0x1t 0x2t 0x6t
        0x20t 0x0t 0x2t 0x6t
        0x21t 0x0t 0x2t 0x6t
        0x56t 0x1t 0x2t 0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->DESCPTION_ID:[I

    .line 96
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 97
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    .line 99
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity$1;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    .line 379
    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0x59t 0x2t 0xbt 0x7ft
        0x5at 0x2t 0xbt 0x7ft
        0x5bt 0x2t 0xbt 0x7ft
        0xa0t 0x6t 0xbt 0x7ft
        0x58t 0x2t 0xbt 0x7ft
        0xa1t 0x6t 0xbt 0x7ft
        0xa2t 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sound/RingerVolumeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stop()V

    .line 264
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aput-object v2, v1, v0

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/RingerVolumeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    :cond_2
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private initUI()V
    .locals 14

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 115
    .local v12, view:Landroid/view/View;
    invoke-virtual {p0, v12}, Lcom/android/settings/sound/RingerVolumeActivity;->setContentView(Landroid/view/View;)V

    .line 116
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .line 118
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 120
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    aget v0, v0, v9

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 121
    .local v11, section:Landroid/view/View;
    const v0, 0x7f0800f5

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 122
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 123
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v13, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v13, v9

    .line 132
    :goto_1
    const v0, 0x7f0800f3

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 133
    .local v6, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 136
    const v0, 0x7f0800f4

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->DESCPTION_ID:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 127
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v1, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v2, v9

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 140
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    .end local v11           #section:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 144
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity$2;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/android/settings/sound/RingerVolumeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    const v10, 0x7f0800cf

    .line 165
    .local v10, id:I
    :goto_2
    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 166
    .local v8, hideSection:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {v12, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 172
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 173
    return-void

    .line 163
    .end local v8           #hideSection:Landroid/view/View;
    .end local v10           #id:I
    :cond_3
    const v10, 0x7f0800d3

    .restart local v10       #id:I
    goto :goto_2
.end method

.method private updateSlidersAndMutedStates()V
    .locals 6

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 201
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 202
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 204
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 205
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x7f020051

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 215
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 217
    .local v3, volume:I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 200
    .end local v3           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 215
    :cond_4
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_2

    .line 220
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_5
    return-void
.end method


# virtual methods
.method doRestoreAllVolumes()V
    .locals 7

    .prologue
    .line 192
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 193
    .local v3, streamType:I
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v3           #streamType:I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->initUI()V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    const v1, 0x7f0b06a3

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 358
    .local v0, item:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 361
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->cleanup()V

    .line 257
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onDestroy()V

    .line 258
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    sparse-switch p2, :sswitch_data_0

    .line 236
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 234
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->restoreAllVolumes()V

    .line 369
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 249
    .local v3, sbv:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    invoke-virtual {v3}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v3           #sbv:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onPause()V

    .line 252
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 276
    const-string v4, "save_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    .line 277
    .local v1, myState:Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->getVolumeStore(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;

    move-result-object v3

    .line 278
    .local v3, volumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 280
    .local v2, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 281
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 278
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v2           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method protected onSampleStarting(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 242
    .local v3, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v3           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 289
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    new-array v3, v4, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 290
    .local v3, volumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 291
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 292
    .local v2, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 293
    new-instance v4, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v4}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v4, v3, v0

    .line 294
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v2           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    new-instance v1, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    invoke-direct {v1, v3}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;-><init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 298
    .local v1, savedState:Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    const-string v4, "save_state"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    return-void
.end method

.method restoreAllVolumes()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b06a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/sound/RingerVolumeActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/RingerVolumeActivity$3;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b06a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void
.end method
