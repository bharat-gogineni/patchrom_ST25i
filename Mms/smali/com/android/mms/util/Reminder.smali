.class public Lcom/android/mms/util/Reminder;
.super Landroid/content/BroadcastReceiver;
.source "Reminder.java"


# static fields
.field private static ACTION_REMINDER:Ljava/lang/String;

.field private static INTERVAL_FIVE_MINUTES:J

.field private static TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mWakelockSequence:I

.field private static reminderNotification:Landroid/app/Notification;

.field private static reminderRepeatCount:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string v0, "Reminder"

    sput-object v0, Lcom/android/mms/util/Reminder;->TAG:Ljava/lang/String;

    .line 26
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/mms/util/Reminder;->INTERVAL_FIVE_MINUTES:J

    .line 29
    const-string v0, "com.android.mms.action.Reminder"

    sput-object v0, Lcom/android/mms/util/Reminder;->ACTION_REMINDER:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/Reminder;->reminderNotification:Landroid/app/Notification;

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    .line 37
    sput v2, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/mms/util/Reminder;->releaseWakeLock(I)V

    return-void
.end method

.method private static acquireWakeLock(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 95
    const-class v1, Lcom/android/mms/util/Reminder;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 99
    const v2, 0x1000001a

    const-string v3, "Mms Screen Up"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    sget-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 103
    new-instance v0, Lcom/android/mms/util/Reminder$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/mms/util/Reminder$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/mms/util/Reminder;->mHandler:Landroid/os/Handler;

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    sget-object v1, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 120
    :try_start_1
    sget-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 121
    sget-object v0, Lcom/android/mms/util/Reminder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    sget v0, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    .line 123
    sget-object v0, Lcom/android/mms/util/Reminder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget v3, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 124
    sget-object v2, Lcom/android/mms/util/Reminder;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x61a8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    sget-object v0, Lcom/android/mms/util/Reminder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire wakelock with sequence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 126
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static cancelReminder(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 152
    sget-object v2, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    monitor-enter v2

    .line 153
    :try_start_0
    sget-object v1, Lcom/android/mms/util/Reminder;->reminderNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/util/Reminder;->reminderNotification:Landroid/app/Notification;

    .line 155
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    .line 157
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 158
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/android/mms/util/Reminder;->getSender(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 160
    .end local v0           #alarm:Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v2

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getPrefRepeatCount(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "sp"

    .prologue
    .line 171
    const/4 v1, 0x1

    .line 172
    .local v1, repeatCount:I
    const-string v3, "pref_key_ringtone_repeat"

    const-string v4, "1"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, repeatCountString:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getSender(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/util/Reminder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    sget-object v1, Lcom/android/mms/util/Reminder;->ACTION_REMINDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public static newNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 5
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/mms/util/Reminder;->cancelReminder(Landroid/content/Context;)V

    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 71
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 72
    .local v1, notificationEnabled:Z
    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 78
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/android/mms/util/Reminder;->getPrefRepeatCount(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 79
    .local v2, repeatCount:I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    :cond_2
    invoke-static {p0, p1}, Lcom/android/mms/util/Reminder;->updateNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 87
    :goto_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefWakeupScreenEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/mms/util/Reminder;->acquireWakeLock(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {p0, p1, v2}, Lcom/android/mms/util/Reminder;->setupReminder(Landroid/content/Context;Landroid/app/Notification;I)V

    goto :goto_1
.end method

.method private static releaseWakeLock(I)V
    .locals 4
    .parameter "seq"

    .prologue
    .line 130
    sget-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 131
    sget-object v1, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 132
    :try_start_0
    sget v0, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    if-ne p0, v0, :cond_0

    .line 133
    sget-object v0, Lcom/android/mms/util/Reminder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release wakelock with sequence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/android/mms/util/Reminder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 136
    :cond_0
    monitor-exit v1

    .line 138
    :cond_1
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupReminder(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 7
    .parameter "context"
    .parameter "notification"
    .parameter "repeatCount"

    .prologue
    .line 141
    sget-object v2, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    monitor-enter v2

    .line 142
    :try_start_0
    sput-object p1, Lcom/android/mms/util/Reminder;->reminderNotification:Landroid/app/Notification;

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    .line 144
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 147
    .local v0, alarm:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/mms/util/Reminder;->INTERVAL_FIVE_MINUTES:J

    invoke-static {p0}, Lcom/android/mms/util/Reminder;->getSender(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 149
    return-void

    .line 144
    .end local v0           #alarm:Landroid/app/AlarmManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 2
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 164
    invoke-static {p0}, Lcom/android/mms/util/VibratorManager;->vibrate(Landroid/content/Context;)V

    .line 165
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p1}, Lcom/android/mms/util/Reminder;->cancelReminder(Landroid/content/Context;)V

    .line 47
    sget v1, Lcom/android/mms/util/Reminder;->mWakelockSequence:I

    invoke-static {v1}, Lcom/android/mms/util/Reminder;->releaseWakeLock(I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    sget-object v1, Lcom/android/mms/util/Reminder;->ACTION_REMINDER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 50
    .local v0, notificationEnabled:Z
    if-nez v0, :cond_2

    .line 51
    invoke-static {p1}, Lcom/android/mms/util/Reminder;->cancelReminder(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_2
    sget-object v2, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    monitor-enter v2

    .line 55
    :try_start_0
    sget-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    .line 56
    sget-object v1, Lcom/android/mms/util/Reminder;->reminderNotification:Landroid/app/Notification;

    invoke-static {p1, v1}, Lcom/android/mms/util/Reminder;->updateNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 57
    sget-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    sget-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    .line 60
    :cond_3
    sget-object v1, Lcom/android/mms/util/Reminder;->reminderRepeatCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_4

    .line 61
    invoke-static {p1}, Lcom/android/mms/util/Reminder;->cancelReminder(Landroid/content/Context;)V

    .line 63
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
