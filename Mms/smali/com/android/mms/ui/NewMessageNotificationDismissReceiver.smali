.class public Lcom/android/mms/ui/NewMessageNotificationDismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NewMessageNotificationDismissReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 16
    invoke-static {p1}, Lcom/android/mms/util/Reminder;->cancelReminder(Landroid/content/Context;)V

    .line 19
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 21
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 22
    invoke-static {}, Lcom/android/mms/util/VibratorManager;->cancel()V

    .line 23
    return-void
.end method
