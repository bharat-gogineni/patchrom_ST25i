.class public Lcom/android/mms/ctautoregistration/SMSSentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSSentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/android/mms/ctautoregistration/SMSSentReceiver;->getResultCode()I

    move-result v0

    .line 14
    const-class v1, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 16
    const-string v0, "com.xiaomi.ctsmsautoregistration.SMS_SENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 21
    return-void

    .line 18
    :cond_0
    const-string v0, "com.xiaomi.ctsmsautoregistration.SEND_SMS_FAILED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
