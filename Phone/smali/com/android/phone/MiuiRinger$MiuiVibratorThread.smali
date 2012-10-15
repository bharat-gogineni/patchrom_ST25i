.class public Lcom/android/phone/MiuiRinger$MiuiVibratorThread;
.super Lcom/android/phone/Ringer$VibratorThread;
.source "MiuiRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MiuiVibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiRinger;


# direct methods
.method protected constructor <init>(Lcom/android/phone/MiuiRinger;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/phone/MiuiRinger$MiuiVibratorThread;->this$0:Lcom/android/phone/MiuiRinger;

    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 19
    iget-object v0, p0, Lcom/android/phone/MiuiRinger$MiuiVibratorThread;->this$0:Lcom/android/phone/MiuiRinger;

    iget-boolean v0, v0, Lcom/android/phone/MiuiRinger;->mAntiStranger:Z

    if-eqz v0, :cond_0

    .line 20
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MiuiRinger$MiuiVibratorThread;->this$0:Lcom/android/phone/MiuiRinger;

    iget-boolean v0, v0, Lcom/android/phone/MiuiRinger;->mContinueVibrating:Z

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/phone/MiuiRinger$MiuiVibratorThread;->this$0:Lcom/android/phone/MiuiRinger;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    .line 24
    iget-object v0, p0, Lcom/android/phone/MiuiRinger$MiuiVibratorThread;->this$0:Lcom/android/phone/MiuiRinger;

    iget-object v0, v0, Lcom/android/phone/MiuiRinger;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 25
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiRinger$MiuiVibratorThread;->this$0:Lcom/android/phone/MiuiRinger;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    .line 27
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
