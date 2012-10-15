.class public Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/settings/sound/RingerVolumeActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 407
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 408
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v1, -0x1

    .line 410
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 389
    iput v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 391
    iput v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 393
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;-><init>(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 411
    iput-object p2, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 412
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 413
    iput p4, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    .line 414
    iput-object p3, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 416
    invoke-direct {p0, p3, p5}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 417
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 422
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 423
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 429
    if-nez p2, :cond_0

    .line 430
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 431
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 439
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 441
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 444
    :cond_1
    return-void

    .line 432
    :cond_2
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 433
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 435
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 458
    if-nez p3, :cond_0

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 537
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 538
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 539
    iget v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 540
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->postSetVolume(I)V

    .line 542
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 530
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 531
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->volume:I

    .line 532
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/MiuiVolumePreference$VolumeStore;->originalVolume:I

    .line 534
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 473
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->startSample()V

    .line 479
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 467
    iput p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 468
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 483
    return-void
.end method

.method public startSample()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity;->onSampleStarting(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 494
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 448
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 450
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 500
    :cond_0
    return-void
.end method
