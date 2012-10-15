.class public Lcom/miui/player/receiver/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field static sFirstDownTime:J

.field private static sIsOneShot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    .line 33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    .line 35
    new-instance v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/miui/player/receiver/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sIsOneShot:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static handDoubleClick(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "command"

    const-string v2, "previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "handDoubleClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method private static handleList(Landroid/content/Context;Landroid/content/Intent;Landroid/view/KeyEvent;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    sparse-switch p3, :sswitch_data_0

    .line 148
    :goto_0
    sget-object v1, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "action = %d, repeatCount = %d, command = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "forbid_double_click"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 152
    if-eqz v0, :cond_4

    .line 153
    if-nez v1, :cond_3

    const-string v1, "togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    if-nez p4, :cond_2

    .line 155
    sget-wide v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    .line 157
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 182
    :goto_2
    return v0

    .line 128
    :sswitch_0
    const-string v0, "stop"

    goto :goto_0

    .line 132
    :sswitch_1
    const-string v0, "togglepause"

    goto :goto_0

    .line 135
    :sswitch_2
    const-string v0, "next"

    goto :goto_0

    .line 138
    :sswitch_3
    const-string v0, "previous"

    goto :goto_0

    .line 141
    :sswitch_4
    const-string v0, "pause"

    goto :goto_0

    .line 144
    :sswitch_5
    const-string v0, "play"

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 159
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    invoke-static {p0}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->handDoubleClick(Landroid/content/Context;)V

    .line 161
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    goto :goto_1

    .line 164
    :cond_2
    sget-wide v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 165
    invoke-static {p0}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->handleShortClick(Landroid/content/Context;)V

    .line 166
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 171
    :cond_3
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const-string v2, "com.miui.player.musicservicecommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 182
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x7e -> :sswitch_5
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method static handleLongClick(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "handleLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method private static handleOneShot(Landroid/content/Context;Landroid/content/Intent;Landroid/view/KeyEvent;II)Z
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "event"
    .parameter "keycode"
    .parameter "action"

    .prologue
    const/4 v7, 0x1

    .line 187
    if-nez p4, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v7

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 191
    .local v0, command:Ljava/lang/String;
    sparse-switch p3, :sswitch_data_0

    .line 205
    :goto_1
    sget-object v2, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v3, "action = %d, repeatCount = %d, command = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    .end local v1           #i:Landroid/content/Intent;
    :sswitch_0
    const-string v0, "oneshot_togglepause"

    .line 195
    goto :goto_1

    .line 198
    :sswitch_1
    const-string v0, "oneshot_pause"

    .line 199
    goto :goto_1

    .line 201
    :sswitch_2
    const-string v0, "oneshot_play"

    goto :goto_1

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method static handleShortClick(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    sget-object v0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "handleShortClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static setOneShot(Z)V
    .locals 0
    .parameter "oneShot"

    .prologue
    .line 120
    sput-boolean p0, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sIsOneShot:Z

    .line 121
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->toggleFadeOutMode(I)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 92
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 96
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 99
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 105
    :cond_2
    sget-boolean v3, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sIsOneShot:Z

    if-eqz v3, :cond_3

    .line 106
    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->handleOneShot(Landroid/content/Context;Landroid/content/Intent;Landroid/view/KeyEvent;II)Z

    move-result v0

    .line 107
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->sFirstDownTime:J

    .line 112
    :goto_1
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->handleList(Landroid/content/Context;Landroid/content/Intent;Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1
.end method
