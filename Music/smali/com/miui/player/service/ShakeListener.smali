.class public Lcom/miui/player/service/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mIsFirstSensorEvent:Z

.field private mIsRegister:Z

.field private mLastActiveTime:J

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/miui/player/service/MediaPlaybackService;

.field private mSoundEffectId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 5
    .parameter "service"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/ShakeListener;->mIsFirstSensorEvent:Z

    .line 33
    iput-wide v3, p0, Lcom/miui/player/service/ShakeListener;->mLastTime:J

    .line 35
    iput-wide v3, p0, Lcom/miui/player/service/ShakeListener;->mLastActiveTime:J

    .line 37
    iput v1, p0, Lcom/miui/player/service/ShakeListener;->mLastX:F

    .line 39
    iput v1, p0, Lcom/miui/player/service/ShakeListener;->mLastY:F

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    .line 45
    iput v2, p0, Lcom/miui/player/service/ShakeListener;->mSoundEffectId:I

    .line 47
    iput-boolean v2, p0, Lcom/miui/player/service/ShakeListener;->mIsRegister:Z

    .line 50
    iput-object p1, p0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 51
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/player/service/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 132
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/MusicShake.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/player/service/ShakeListener;->mSoundEffectId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "paramSensor"
    .parameter "paramInt"

    .prologue
    .line 57
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .parameter "sensorEvent"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    const-string v2, "shake"

    invoke-static {v1, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/player/service/ShakeListener;->mIsFirstSensorEvent:Z

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 71
    .local v11, currentTime:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/miui/player/service/ShakeListener;->mLastTime:J

    sub-long v1, v11, v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 72
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v13, v1, v2

    .line 73
    .local v13, currentX:F
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v14, v1, v2

    .line 74
    .local v14, currentY:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/player/service/ShakeListener;->mIsFirstSensorEvent:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/miui/player/service/ShakeListener;->mLastActiveTime:J

    sub-long v1, v11, v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 75
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/player/service/ShakeListener;->mLastX:F

    sub-float v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 76
    .local v15, deltaX:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/player/service/ShakeListener;->mLastY:F

    sub-float v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 77
    .local v16, deltaY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    const-string v2, "shake_degree"

    invoke-static {v1, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 78
    .local v10, accuracy:I
    int-to-float v1, v10

    const/high16 v2, 0x3f80

    mul-float v8, v1, v2

    .line 79
    .local v8, accelationX:F
    int-to-float v1, v10

    const v2, 0x3ee66666

    mul-float v9, v1, v2

    .line 80
    .local v9, accelationY:F
    cmpl-float v1, v15, v8

    if-lez v1, :cond_3

    cmpl-float v1, v16, v9

    if-lez v1, :cond_3

    .line 81
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    new-instance v17, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.next"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v17, nextIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/miui/player/service/ShakeListener;->mLastActiveTime:J

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/player/service/ShakeListener;->mSoundEffectId:I

    if-eqz v1, :cond_3

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/player/service/ShakeListener;->mSoundEffectId:I

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 91
    .end local v8           #accelationX:F
    .end local v9           #accelationY:F
    .end local v10           #accuracy:I
    .end local v15           #deltaX:F
    .end local v16           #deltaY:F
    .end local v17           #nextIntent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/player/service/ShakeListener;->mLastX:F

    .line 92
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/player/service/ShakeListener;->mLastY:F

    .line 93
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/miui/player/service/ShakeListener;->mLastTime:J

    .line 94
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/player/service/ShakeListener;->mIsFirstSensorEvent:Z

    goto/16 :goto_0
.end method

.method public onUpdatePref()V
    .locals 2

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    const-string v1, "shake"

    invoke-static {v0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/miui/player/service/ShakeListener;->register()V

    .line 128
    :goto_0
    monitor-exit p0

    .line 129
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/ShakeListener;->unregister()V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/player/service/ShakeListener;->mIsRegister:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/ShakeListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    const-string v2, "shake"

    invoke-static {v1, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/miui/player/service/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 103
    .local v0, localSensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/miui/player/service/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/service/ShakeListener;->mIsRegister:Z

    .line 105
    const-string v1, "com.miui.player.helper.ShakeListener"

    const-string v2, "register success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0           #localSensor:Landroid/hardware/Sensor;
    :cond_0
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    .line 143
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/player/service/ShakeListener;->mIsRegister:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/player/service/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/ShakeListener;->mIsRegister:Z

    .line 115
    const-string v0, "com.miui.player.helper.ShakeListener"

    const-string v1, "unregister success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    monitor-exit p0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
