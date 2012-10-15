.class public Lcom/android/phone/MiuiRinger;
.super Lcom/android/phone/Ringer;
.source "MiuiRinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiRinger$MiuiVibratorThread;
    }
.end annotation


# instance fields
.field protected mAntiStranger:Z

.field protected mMute:Z

.field protected mVibrating:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    .line 12
    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mAntiStranger:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    .line 45
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4
    .parameter

    .prologue
    .line 33
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/phone/MiuiRinger;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiRinger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    .line 39
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 37
    :cond_0
    const-string v0, "MiuiRinger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isNowVibrating()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    return v0
.end method

.method protected isRingtonePlaying()Z
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mute()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/MiuiRinger;->stopRing()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    .line 88
    :cond_0
    return-void
.end method

.method ring()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method setAntiStranger(Z)V
    .locals 0
    .parameter "antiStranger"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/MiuiRinger;->mAntiStranger:Z

    .line 81
    return-void
.end method

.method stopRing()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    .line 66
    return-void
.end method

.method unMute()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    .line 92
    return-void
.end method
