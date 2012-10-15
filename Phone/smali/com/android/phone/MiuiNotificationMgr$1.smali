.class Lcom/android/phone/MiuiNotificationMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiNotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiNotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiNotificationMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 318
    const-string v0, "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/MiuiNotificationMgr;->getMissedCallNotifyTimes()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mMissedCallSetting:I
    invoke-static {v2}, Lcom/android/phone/MiuiNotificationMgr;->access$100(Lcom/android/phone/MiuiNotificationMgr;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/phone/MiuiNotificationMgr;->access$012(Lcom/android/phone/MiuiNotificationMgr;I)I

    .line 320
    const-class v1, Lcom/android/phone/MiuiNotificationMgr;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    iget v0, v0, Lcom/android/phone/MiuiNotificationMgr;->mNumberMissedCalls:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I
    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$000(Lcom/android/phone/MiuiNotificationMgr;)I

    move-result v0

    if-lez v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$200(Lcom/android/phone/MiuiNotificationMgr;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$200(Lcom/android/phone/MiuiNotificationMgr;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$200(Lcom/android/phone/MiuiNotificationMgr;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0, v2}, Lcom/android/phone/MiuiNotificationMgr;->access$202(Lcom/android/phone/MiuiNotificationMgr;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    iget-object v2, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    iget-object v2, v2, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    #setter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0, v2}, Lcom/android/phone/MiuiNotificationMgr;->access$202(Lcom/android/phone/MiuiNotificationMgr;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 331
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$200(Lcom/android/phone/MiuiNotificationMgr;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    #getter for: Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$200(Lcom/android/phone/MiuiNotificationMgr;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-static {v0}, Lcom/android/phone/MiuiNotificationMgr;->access$010(Lcom/android/phone/MiuiNotificationMgr;)I

    .line 336
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    iget-object v0, v0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 340
    :goto_0
    monitor-exit v1

    .line 342
    :cond_3
    return-void

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr$1;->this$0:Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MiuiNotificationMgr;->cancelMissedCallRepeatReminder()V

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
