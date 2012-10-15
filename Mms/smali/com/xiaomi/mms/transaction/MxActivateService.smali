.class public Lcom/xiaomi/mms/transaction/MxActivateService;
.super Landroid/app/IntentService;
.source "MxActivateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final INTS:[J

.field private static volatile activating:Z

.field private static mActivateRetryCount:I

.field private static volatile mBusy:Z

.field private static volatile mMxPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    .line 93
    sput-boolean v1, Lcom/xiaomi/mms/transaction/MxActivateService;->mBusy:Z

    .line 95
    sput-boolean v1, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    return-void

    .line 68
    :array_0
    .array-data 0x8
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "MxActivateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private clearAllInfo()V
    .locals 1

    .prologue
    .line 700
    const-string v0, "pref_mid"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 701
    const-string v0, "pref_token"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    const-string v0, "pref_security"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 703
    const-string v0, "pref_phone"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 704
    const-string v0, "pref_imsi"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 705
    const-string v0, "pref_iccid"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public static clearLastFailureCode(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 655
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->setLastFailureCode(Landroid/content/Context;I)V

    .line 656
    return-void
.end method

.method private closeChannel()V
    .locals 2

    .prologue
    .line 758
    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-static {p0, v1}, Lcom/xiaomi/mms/transaction/PushStatus;->setStatus(Landroid/content/Context;Lcom/xiaomi/mms/transaction/PushStatus$Status;)V

    .line 759
    invoke-static {p0}, Lmiui/push/ServiceClient;->getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;

    move-result-object v0

    .line 760
    .local v0, sc:Lmiui/push/ServiceClient;
    invoke-virtual {v0}, Lmiui/push/ServiceClient;->closeChannel()Z

    .line 761
    return-void
.end method

.method private enableConnectivityListener(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 625
    invoke-static {p0, p1}, Lcom/xiaomi/mms/transaction/MxActivationConnectivityReceiver;->enableReceiver(Landroid/content/Context;Z)V

    .line 626
    return-void
.end method

.method public static enableMx(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "enable"
    .parameter "manually"

    .prologue
    .line 772
    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->resetMxCount(Landroid/content/Context;)V

    .line 774
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mms/transaction/MxActivateService;->setBusy(Z)V

    .line 775
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "com.xiaomi.mms.action.ACTIVATE_MX"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_manually"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 779
    return-void

    .line 775
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "com.xiaomi.mms.action.DEACTIVATE_MX"

    goto :goto_0
.end method

.method public static enableMxDirectly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "phone"
    .parameter "deviceId"
    .parameter "simId"
    .parameter "pwd"

    .prologue
    .line 783
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->setBusy(Z)V

    .line 784
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.ACTIVATE_DIRECTLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const-string v1, "simId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v1, "pwd"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 791
    return-void
.end method

.method public static getLastFailureCode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 649
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 651
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_last_failure_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static invalidMxToken(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 794
    const-string v0, "pref_token"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 795
    const-string v0, "pref_security"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method private static invalidPassToken(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 799
    const-string v0, "pref_pass_token"

    invoke-static {p0, v0}, Lcom/xiaomi/mms/utils/PrefUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public static isBusy()Z
    .locals 1

    .prologue
    .line 859
    sget-boolean v0, Lcom/xiaomi/mms/transaction/MxActivateService;->mBusy:Z

    return v0
.end method

.method private isConnected()Z
    .locals 3

    .prologue
    .line 618
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 620
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 621
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMxEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 666
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 668
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_mx"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private markMxUsed()V
    .locals 3

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mx_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    return-void
.end method

.method public static needSendSms(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 875
    const-string v5, "pref_token"

    invoke-static {p0, v5}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, token:Ljava/lang/String;
    const-string v5, "pref_security"

    invoke-static {p0, v5}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 877
    .local v3, security:Ljava/lang/String;
    const-string v5, "pref_mid"

    invoke-static {p0, v5}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, mid:Ljava/lang/String;
    const-string v5, "pref_phone"

    invoke-static {p0, v5}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, phone:Ljava/lang/String;
    const-string v5, "pref_pass_token"

    invoke-static {p0, v5}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, passToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/xiaomi/mms/transaction/MxActivateService;->mMxPassword:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private onActivateDelayed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 825
    invoke-static {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->setMxEnabled(Landroid/content/Context;Z)V

    .line 826
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->setBusy(Z)V

    .line 827
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.ACTIVATE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 831
    return-void
.end method

.method private onActivateFailure(Ljava/lang/String;Z)V
    .locals 3
    .parameter "errorMsg"
    .parameter "manually"

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-static {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->setMxEnabled(Landroid/content/Context;Z)V

    .line 816
    invoke-static {v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->setBusy(Z)V

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.ACTIVATE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 822
    return-void
.end method

.method private onActivateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mid"
    .parameter "token"
    .parameter "security"
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 835
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mms/transaction/MxActivateService;->openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {p0, v3}, Lcom/xiaomi/mms/transaction/MxActivateService;->setMxEnabled(Landroid/content/Context;Z)V

    .line 838
    invoke-static {v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->setBusy(Z)V

    .line 839
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.ACTIVATE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "success"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    invoke-direct {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableConnectivityListener(Z)V

    .line 843
    sput v2, Lcom/xiaomi/mms/transaction/MxActivateService;->mActivateRetryCount:I

    .line 844
    invoke-direct {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->scheduleGetToken(Z)V

    .line 845
    return-void
.end method

.method private onDeactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    invoke-static {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->setMxEnabled(Landroid/content/Context;Z)V

    .line 849
    invoke-static {v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->setBusy(Z)V

    .line 850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.DEACTIVATE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 853
    invoke-direct {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableConnectivityListener(Z)V

    .line 854
    sput v2, Lcom/xiaomi/mms/transaction/MxActivateService;->mActivateRetryCount:I

    .line 855
    invoke-direct {p0, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->scheduleGetToken(Z)V

    .line 856
    return-void
.end method

.method private onSevereFailure(I)V
    .locals 0
    .parameter "failureCode"

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->clearAllInfo()V

    .line 810
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyActivateMxFailure(Landroid/content/Context;I)V

    .line 811
    invoke-static {p0, p1}, Lcom/xiaomi/mms/transaction/MxActivateService;->setLastFailureCode(Landroid/content/Context;I)V

    .line 812
    return-void
.end method

.method private onStartActivate()V
    .locals 2

    .prologue
    .line 803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.STATUS_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, startIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    return-void
.end method

.method private openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "mid"
    .parameter "token"
    .parameter "security"
    .parameter "phone"

    .prologue
    .line 721
    invoke-static {}, Lcom/xiaomi/mms/transaction/PushStatus;->getStatus()Lcom/xiaomi/mms/transaction/PushStatus$Status;

    move-result-object v12

    .line 722
    .local v12, status:Lcom/xiaomi/mms/transaction/PushStatus$Status;
    sget-object v2, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    if-eq v12, v2, :cond_0

    sget-object v2, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTING:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    if-ne v12, v2, :cond_1

    .line 724
    :cond_0
    const-string v2, "MxActivateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no need to re-open channel, current status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return-void

    .line 727
    :cond_1
    const/4 v11, 0x0

    .line 729
    .local v11, resId:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudManager;->getResourceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 733
    :goto_1
    if-nez v11, :cond_2

    .line 734
    const-string v2, "MxActivateService"

    const-string v3, "failed to get res id, do NOT open channel"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 730
    :catch_0
    move-exception v10

    .line 731
    .local v10, e:Lmiui/telephony/exception/IllegalDeviceException;
    const-string v2, "MxActivateService"

    const-string v3, "failed to get res id"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 737
    .end local v10           #e:Lmiui/telephony/exception/IllegalDeviceException;
    :cond_2
    invoke-static {p1, v11}, Lcom/android/mms/MmsApp;->setMyFullMid(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static/range {p4 .. p4}, Lcom/android/mms/MmsApp;->setMyPhone(Ljava/lang/String;)V

    .line 740
    const-string v2, "MxActivateService"

    const-string v3, "opening channel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {p0}, Lmiui/push/ServiceClient;->getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;

    move-result-object v1

    .line 743
    .local v1, sc:Lmiui/push/ServiceClient;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v9, cloudExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "phone"

    move-object/from16 v0, p4

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v2, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTING:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-static {p0, v2}, Lcom/xiaomi/mms/transaction/PushStatus;->setStatus(Landroid/content/Context;Lcom/xiaomi/mms/transaction/PushStatus$Status;)V

    .line 747
    invoke-static {}, Lcom/android/mms/MmsApp;->getMyFullMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    const-string v5, "XIAOMI-PASS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v9}, Lmiui/push/ServiceClient;->openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)I

    goto :goto_0
.end method

.method private persistIccid(Ljava/lang/String;)V
    .locals 1
    .parameter "iccid"

    .prologue
    .line 696
    const-string v0, "pref_iccid"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mms/utils/PrefUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private persistMid(Ljava/lang/String;)V
    .locals 1
    .parameter "mid"

    .prologue
    .line 683
    const-string v0, "pref_mid"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mms/utils/PrefUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method private persistPassToken(Ljava/lang/String;)V
    .locals 1
    .parameter "passToken"

    .prologue
    .line 692
    const-string v0, "pref_pass_token"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mms/utils/PrefUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method private persistPhone(Ljava/lang/String;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 679
    const-string v0, "pref_phone"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mms/utils/PrefUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method private persistToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "security"

    .prologue
    .line 687
    const-string v0, "pref_token"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mms/utils/PrefUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "pref_security"

    invoke-static {p0, v0, p2}, Lcom/xiaomi/mms/utils/PrefUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method private queryByPwd(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pwd"
    .parameter "manually"
    .parameter "deviceId"
    .parameter "simId"

    .prologue
    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.action.QUERY_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, queryIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v1, "pwd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v1, "simId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "extra_manually"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 717
    return-void
.end method

.method private scheduleGetToken(Z)V
    .locals 8
    .parameter "schedule"

    .prologue
    const/4 v7, 0x0

    .line 629
    if-eqz p1, :cond_0

    sget v3, Lcom/xiaomi/mms/transaction/MxActivateService;->mActivateRetryCount:I

    sget-object v4, Lcom/xiaomi/mms/MxConfig;->ACTIVATE_RETRY_INTERVALS:[J

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 631
    const-string v3, "MxActivateService"

    const-string v4, "activate max retry count reaches, ignore schedule"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void

    .line 634
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.xiaomi.mms.action.ACTIVATE_MX"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const/high16 v3, 0x1000

    invoke-static {p0, v7, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 638
    .local v2, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/xiaomi/mms/transaction/MxActivateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 639
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz p1, :cond_1

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/xiaomi/mms/MxConfig;->ACTIVATE_RETRY_INTERVALS:[J

    sget v6, Lcom/xiaomi/mms/transaction/MxActivateService;->mActivateRetryCount:I

    aget-wide v5, v5, v6

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 642
    sget v3, Lcom/xiaomi/mms/transaction/MxActivateService;->mActivateRetryCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/xiaomi/mms/transaction/MxActivateService;->mActivateRetryCount:I

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static setBusy(Z)V
    .locals 1
    .parameter "busy"

    .prologue
    .line 863
    sput-boolean p0, Lcom/xiaomi/mms/transaction/MxActivateService;->mBusy:Z

    .line 864
    sget-boolean v0, Lcom/xiaomi/mms/transaction/MxActivateService;->mBusy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    .line 865
    :cond_0
    return-void
.end method

.method private static setLastFailureCode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "code"

    .prologue
    .line 659
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_last_failure_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    return-void
.end method

.method private static setMxEnabled(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 672
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_mx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 676
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 46
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, action:Ljava/lang/String;
    const-string v43, "MxActivateService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "receive action:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v43, "com.xiaomi.mms.action.ACTIVATE_MX"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_e

    .line 112
    sget-boolean v43, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    if-eqz v43, :cond_1

    .line 113
    const-string v43, "MxActivateService"

    const-string v44, "a previous activation is in process, activate ignored"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v43, "extra_manually"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 119
    .local v21, manually:Z
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v11

    .line 120
    .local v11, enabled:Z
    const/16 v23, 0x1

    .line 121
    .local v23, needCloseChannel:Z
    if-nez v21, :cond_2

    if-eqz v11, :cond_c

    .line 123
    :cond_2
    const-string v43, "MxActivateService"

    const-string v44, "mi message is enabled"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->onStartActivate()V

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->markMxUsed()V

    .line 127
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->clearLastFailureCode(Landroid/content/Context;)V

    .line 128
    const-string v43, "pref_token"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 129
    .local v40, token:Ljava/lang/String;
    const-string v43, "pref_security"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 131
    .local v32, security:Ljava/lang/String;
    const-string v43, "pref_mid"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 132
    .local v22, mid:Ljava/lang/String;
    const-string v43, "pref_phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 133
    .local v25, phone:Ljava/lang/String;
    const-string v43, "pref_imsi"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 134
    .local v17, imsi:Ljava/lang/String;
    const-string v43, "pref_iccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, iccid:Ljava/lang/String;
    const-string v43, "pref_pass_token"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/xiaomi/mms/utils/PrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 141
    .local v24, passToken:Ljava/lang/String;
    const/4 v7, 0x0

    .line 143
    .local v7, currentIccid:Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 148
    :goto_1
    const/4 v8, 0x0

    .line 150
    .local v8, currentImsi:Ljava/lang/String;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetImsi(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 155
    :goto_2
    const/4 v9, 0x0

    .line 157
    .local v9, deviceId:Ljava/lang/String;
    :try_start_2
    invoke-static/range {p0 .. p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 163
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    if-nez v9, :cond_4

    .line 165
    :cond_3
    const-string v43, "MxActivateService"

    const-string v44, "failed to get imsi, iccid or device id after retry"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v7           #currentIccid:Ljava/lang/String;
    .end local v8           #currentImsi:Ljava/lang/String;
    .end local v9           #deviceId:Ljava/lang/String;
    .end local v16           #iccid:Ljava/lang/String;
    .end local v17           #imsi:Ljava/lang/String;
    .end local v22           #mid:Ljava/lang/String;
    .end local v24           #passToken:Ljava/lang/String;
    .end local v25           #phone:Ljava/lang/String;
    .end local v32           #security:Ljava/lang/String;
    .end local v40           #token:Ljava/lang/String;
    :goto_4
    if-eqz v23, :cond_0

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->closeChannel()V

    .line 241
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 145
    .restart local v7       #currentIccid:Ljava/lang/String;
    .restart local v16       #iccid:Ljava/lang/String;
    .restart local v17       #imsi:Ljava/lang/String;
    .restart local v22       #mid:Ljava/lang/String;
    .restart local v24       #passToken:Ljava/lang/String;
    .restart local v25       #phone:Ljava/lang/String;
    .restart local v32       #security:Ljava/lang/String;
    .restart local v40       #token:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 146
    .local v10, e:Lmiui/telephony/exception/IllegalDeviceException;
    const-string v43, "MxActivateService"

    const-string v44, "error when get icc id"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 152
    .end local v10           #e:Lmiui/telephony/exception/IllegalDeviceException;
    .restart local v8       #currentImsi:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 153
    .restart local v10       #e:Lmiui/telephony/exception/IllegalDeviceException;
    const-string v43, "MxActivateService"

    const-string v44, "error when get imsi"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 159
    .end local v10           #e:Lmiui/telephony/exception/IllegalDeviceException;
    .restart local v9       #deviceId:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 160
    .restart local v10       #e:Lmiui/telephony/exception/IllegalDeviceException;
    const-string v43, "MxActivateService"

    const-string v44, "error when get device id"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 167
    .end local v10           #e:Lmiui/telephony/exception/IllegalDeviceException;
    :cond_4
    if-eqz v21, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->needSendSms(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_5

    .line 171
    const-string v43, "MxActivateService"

    const-string v44, "an SMS is required"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v43, 0x1

    sput-boolean v43, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    .line 176
    new-instance v33, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.SEND_SMS"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v33, sendSmsIntent:Landroid/content/Intent;
    const-string v43, "extra_manually"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    const/16 v23, 0x0

    .line 181
    goto :goto_4

    .end local v33           #sendSmsIntent:Landroid/content/Intent;
    :cond_5
    if-nez v21, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_6

    .line 187
    const-string v43, "MxActivateService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "SIM changed, notify user, current: |"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "|, imsi: |"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "|"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", current icc: |"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "|, icc: |"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "|"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->onSevereFailure(I)V

    goto/16 :goto_4

    .line 194
    :cond_6
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_a

    .line 196
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_7

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_7

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v40

    move-object/from16 v3, v32

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 201
    :cond_7
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_8

    .line 202
    const/16 v43, 0x1

    sput-boolean v43, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    .line 204
    new-instance v20, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.QUERY_TOKEN"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v20, loginIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v43, "mid"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v43, "phone"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v43, "passToken"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v43, "extra_manually"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    const/16 v23, 0x0

    .line 212
    goto/16 :goto_4

    .end local v20           #loginIntent:Landroid/content/Intent;
    :cond_8
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->mMxPassword:Ljava/lang/String;

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_9

    .line 213
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->mMxPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/xiaomi/mms/transaction/MxActivateService;->queryByPwd(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 215
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 217
    :cond_9
    const-string v43, "MxActivateService"

    const-string v44, "tokens are missing"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->onSevereFailure(I)V

    goto/16 :goto_4

    .line 220
    :cond_a
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->mMxPassword:Ljava/lang/String;

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_b

    .line 221
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->mMxPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/xiaomi/mms/transaction/MxActivateService;->queryByPwd(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 224
    :cond_b
    const-string v43, "MxActivateService"

    const-string v44, "mid or phone is missing"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v43, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->onSevereFailure(I)V

    goto/16 :goto_4

    .line 229
    .end local v7           #currentIccid:Ljava/lang/String;
    .end local v8           #currentImsi:Ljava/lang/String;
    .end local v9           #deviceId:Ljava/lang/String;
    .end local v16           #iccid:Ljava/lang/String;
    .end local v17           #imsi:Ljava/lang/String;
    .end local v22           #mid:Ljava/lang/String;
    .end local v24           #passToken:Ljava/lang/String;
    .end local v25           #phone:Ljava/lang/String;
    .end local v32           #security:Ljava/lang/String;
    .end local v40           #token:Ljava/lang/String;
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getLastFailureCode(Landroid/content/Context;)I

    move-result v12

    .line 230
    .local v12, failureCode:I
    if-lez v12, :cond_d

    .line 231
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/xiaomi/mms/transaction/MxActivateService;->onSevereFailure(I)V

    .line 237
    :goto_5
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableConnectivityListener(Z)V

    goto/16 :goto_4

    .line 234
    :cond_d
    const-string v43, "MxActivateService"

    const-string v44, "mi message is disabled, no need to activate"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 244
    .end local v11           #enabled:Z
    .end local v12           #failureCode:I
    .end local v21           #manually:Z
    .end local v23           #needCloseChannel:Z
    :cond_e
    const-string v43, "com.xiaomi.mms.action.SEND_SMS"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_12

    .line 245
    const-string v43, "extra_manually"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 247
    .restart local v21       #manually:Z
    new-instance v34, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.SMS_SENT"

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v34, sentIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const/16 v43, 0x0

    const/high16 v44, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v34

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    .line 251
    .local v26, pi:Landroid/app/PendingIntent;
    new-instance v30, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;

    const/16 v43, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;-><init>(Lcom/xiaomi/mms/transaction/MxActivateService;Lcom/xiaomi/mms/transaction/MxActivateService$1;)V

    .line 253
    .local v30, receiver:Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;
    new-instance v13, Landroid/content/IntentFilter;

    const-string v43, "com.xiaomi.mms.action.SMS_SENT"

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v13, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lcom/xiaomi/mms/transaction/MxActivateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    const-string v43, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/TelephonyManager;

    .line 257
    .local v39, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 258
    .restart local v9       #deviceId:Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v16

    .line 259
    .restart local v16       #iccid:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/mms/net/CloudHelper;->generatePassword()Ljava/lang/String;

    move-result-object v27

    .line 260
    .local v27, pwd:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move-object/from16 v3, v27

    invoke-static {v0, v1, v9, v2, v3}, Lcom/xiaomi/mms/net/CloudHelper;->sendActivateSms(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    .line 262
    .local v38, success:Z
    if-nez v38, :cond_f

    .line 263
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 269
    :cond_f
    :try_start_3
    invoke-virtual/range {v30 .. v30}, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 273
    :goto_6
    invoke-virtual/range {v30 .. v30}, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->getSentStatus()I

    move-result v43

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_10

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistIccid(Ljava/lang/String;)V

    .line 275
    sput-object v27, Lcom/xiaomi/mms/transaction/MxActivateService;->mMxPassword:Ljava/lang/String;

    .line 276
    const-string v43, "MxActivateService"

    const-string v44, "sms sent successfully"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v28, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.action.QUERY_PHONE"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v28, queryIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v43, "deviceId"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v43, "simId"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v43, "pwd"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v43, "extra_manually"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 345
    .end local v28           #queryIntent:Landroid/content/Intent;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 270
    :catch_3
    move-exception v10

    .line 271
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 285
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_10
    const-string v43, "MxActivateService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "failed to send sms, result:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v30 .. v30}, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->getSentStatus()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v21, :cond_11

    .line 288
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto :goto_7

    .line 293
    :cond_11
    const-string v43, "MxActivateService"

    const-string v44, "waiting for sim service ready"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v15, Landroid/os/HandlerThread;

    const-string v43, "listen SIM service thread"

    move-object/from16 v0, v43

    invoke-direct {v15, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 303
    .local v15, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    .line 304
    new-instance v14, Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v43

    new-instance v44, Lcom/xiaomi/mms/transaction/MxActivateService$1;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/xiaomi/mms/transaction/MxActivateService$1;-><init>(Lcom/xiaomi/mms/transaction/MxActivateService;Landroid/telephony/TelephonyManager;ZLandroid/os/HandlerThread;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v14, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 335
    .local v14, h:Landroid/os/Handler;
    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/os/Message;->sendToTarget()V

    .line 339
    :try_start_4
    invoke-virtual {v15}, Landroid/os/HandlerThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 340
    :catch_4
    move-exception v10

    .line 341
    .restart local v10       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 346
    .end local v9           #deviceId:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/InterruptedException;
    .end local v13           #filter:Landroid/content/IntentFilter;
    .end local v14           #h:Landroid/os/Handler;
    .end local v15           #handlerThread:Landroid/os/HandlerThread;
    .end local v16           #iccid:Ljava/lang/String;
    .end local v21           #manually:Z
    .end local v26           #pi:Landroid/app/PendingIntent;
    .end local v27           #pwd:Ljava/lang/String;
    .end local v30           #receiver:Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;
    .end local v34           #sentIntent:Landroid/content/Intent;
    .end local v38           #success:Z
    .end local v39           #tm:Landroid/telephony/TelephonyManager;
    :cond_12
    const-string v43, "com.xiaomi.mms.action.action.QUERY_PHONE"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_17

    .line 347
    const-string v43, "pwd"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 348
    .restart local v27       #pwd:Ljava/lang/String;
    const-string v43, "deviceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 349
    .restart local v9       #deviceId:Ljava/lang/String;
    const-string v43, "simId"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 350
    .local v37, simId:Ljava/lang/String;
    const-string v43, "extra_manually"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 352
    .restart local v21       #manually:Z
    const/4 v6, 0x0

    .line 353
    .local v6, count:I
    const/16 v25, 0x0

    .line 354
    .restart local v25       #phone:Ljava/lang/String;
    const/16 v42, 0x0

    .line 355
    .local v42, waitForNetwork:Z
    :goto_8
    if-nez v25, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v43

    if-nez v43, :cond_14

    .line 356
    const/16 v42, 0x0

    .line 358
    :try_start_5
    move-object/from16 v0, v37

    invoke-static {v9, v0}, Lcom/xiaomi/mms/net/CloudRequestFactory;->newQueryPhoneRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;

    move-result-object v31

    .line 360
    .local v31, request:Lcom/xiaomi/mms/net/SimpleRequest;
    invoke-static/range {v31 .. v31}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->queryPhone(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/xiaomi/mms/net/exception/InvalidResponseException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v25

    .line 366
    .end local v31           #request:Lcom/xiaomi/mms/net/SimpleRequest;
    :goto_9
    if-eqz v25, :cond_13

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistPhone(Ljava/lang/String;)V

    .line 368
    new-instance v29, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.QUERY_MID"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v29, queryMid:Landroid/content/Intent;
    const-string v43, "phone"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v43, "pwd"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v43, "extra_manually"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8

    .line 361
    .end local v29           #queryMid:Landroid/content/Intent;
    :catch_5
    move-exception v10

    .line 362
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 363
    .end local v10           #e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 364
    .local v10, e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    invoke-virtual {v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;->printStackTrace()V

    goto :goto_9

    .line 375
    .end local v10           #e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isConnected()Z

    move-result v43

    if-eqz v43, :cond_15

    .line 376
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v6, v0, :cond_14

    .line 378
    :try_start_6
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    aget-wide v43, v43, v6

    invoke-static/range {v43 .. v44}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7

    .line 382
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 379
    :catch_7
    move-exception v10

    .line 397
    :cond_14
    :goto_a
    if-nez v25, :cond_0

    .line 398
    if-eqz v42, :cond_16

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateDelayed()V

    goto/16 :goto_0

    .line 388
    :cond_15
    const-string v43, "MxActivateService"

    const-string v44, "no network, wait for connectivity resumes"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v42, 0x1

    .line 392
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableConnectivityListener(Z)V

    goto :goto_a

    .line 401
    :cond_16
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 405
    .end local v6           #count:I
    .end local v9           #deviceId:Ljava/lang/String;
    .end local v21           #manually:Z
    .end local v25           #phone:Ljava/lang/String;
    .end local v27           #pwd:Ljava/lang/String;
    .end local v37           #simId:Ljava/lang/String;
    .end local v42           #waitForNetwork:Z
    :cond_17
    const-string v43, "com.xiaomi.mms.action.QUERY_MID"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1d

    .line 406
    const-string v43, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 407
    .restart local v25       #phone:Ljava/lang/String;
    const-string v43, "pwd"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 408
    .restart local v27       #pwd:Ljava/lang/String;
    const-string v43, "extra_manually"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 410
    .restart local v21       #manually:Z
    if-eqz v25, :cond_1c

    if-eqz v27, :cond_1c

    .line 411
    const/4 v6, 0x0

    .line 412
    .restart local v6       #count:I
    const/16 v22, 0x0

    .line 413
    .restart local v22       #mid:Ljava/lang/String;
    const/16 v42, 0x0

    .line 414
    .restart local v42       #waitForNetwork:Z
    :goto_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v43

    if-nez v43, :cond_18

    .line 415
    const/16 v42, 0x0

    .line 417
    :try_start_7
    invoke-static/range {v25 .. v25}, Lcom/xiaomi/mms/net/CloudRequestFactory;->newGetUserIdRequest(Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;

    move-result-object v31

    .line 419
    .restart local v31       #request:Lcom/xiaomi/mms/net/SimpleRequest;
    invoke-static/range {v31 .. v31}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->getUid(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/xiaomi/mms/net/exception/InvalidResponseException; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v22

    .line 425
    .end local v31           #request:Lcom/xiaomi/mms/net/SimpleRequest;
    :goto_c
    if-eqz v22, :cond_19

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistMid(Ljava/lang/String;)V

    .line 427
    new-instance v41, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.QUERY_TOKEN"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v41, tokenIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v43, "mid"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v43, "pwd"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v43, "phone"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v43, "extra_manually"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 455
    .end local v41           #tokenIntent:Landroid/content/Intent;
    :cond_18
    :goto_d
    const-string v43, "MxActivateService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get mid:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-nez v22, :cond_0

    .line 458
    if-eqz v42, :cond_1b

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateDelayed()V

    goto/16 :goto_0

    .line 420
    :catch_8
    move-exception v10

    .line 421
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 422
    .end local v10           #e:Ljava/io/IOException;
    :catch_9
    move-exception v10

    .line 423
    .local v10, e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    invoke-virtual {v10}, Lcom/xiaomi/mms/net/exception/InvalidResponseException;->printStackTrace()V

    goto :goto_c

    .line 436
    .end local v10           #e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isConnected()Z

    move-result v43

    if-eqz v43, :cond_1a

    .line 437
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v6, v0, :cond_18

    .line 439
    :try_start_8
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    aget-wide v43, v43, v6

    invoke-static/range {v43 .. v44}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 440
    :catch_a
    move-exception v10

    .line 441
    .local v10, e:Ljava/lang/InterruptedException;
    goto :goto_d

    .line 448
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_1a
    const/16 v42, 0x1

    .line 449
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableConnectivityListener(Z)V

    goto :goto_d

    .line 461
    :cond_1b
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 467
    .end local v6           #count:I
    .end local v22           #mid:Ljava/lang/String;
    .end local v42           #waitForNetwork:Z
    :cond_1c
    const-string v43, "MxActivateService"

    const-string v44, "no phone or pwd in extra"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 471
    .end local v21           #manually:Z
    .end local v25           #phone:Ljava/lang/String;
    .end local v27           #pwd:Ljava/lang/String;
    :cond_1d
    const-string v43, "com.xiaomi.mms.action.QUERY_TOKEN"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_2a

    .line 472
    const-string v43, "mid"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 473
    .restart local v22       #mid:Ljava/lang/String;
    const-string v43, "pwd"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 474
    .restart local v27       #pwd:Ljava/lang/String;
    const-string v43, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 475
    .restart local v25       #phone:Ljava/lang/String;
    const-string v43, "passToken"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 476
    .restart local v24       #passToken:Ljava/lang/String;
    const-string v43, "extra_manually"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 479
    .restart local v21       #manually:Z
    const-string v43, "MxActivateService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "querying token for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/16 v35, 0x0

    .line 482
    .local v35, serviceToken:Ljava/lang/String;
    const/16 v32, 0x0

    .line 483
    .restart local v32       #security:Ljava/lang/String;
    const/4 v6, 0x0

    .line 484
    .restart local v6       #count:I
    const/16 v19, 0x0

    .line 485
    .local v19, invalidToken:Z
    const/16 v42, 0x0

    .line 486
    .restart local v42       #waitForNetwork:Z
    :goto_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v43

    if-nez v43, :cond_1e

    .line 487
    const/16 v19, 0x0

    .line 488
    const/16 v42, 0x0

    .line 491
    if-eqz v27, :cond_1f

    .line 492
    :try_start_9
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/xiaomi/mms/net/CloudRequestFactory;->newLoginRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;

    move-result-object v31

    .line 494
    .restart local v31       #request:Lcom/xiaomi/mms/net/SimpleRequest;
    invoke-static/range {v31 .. v31}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->login(Lcom/xiaomi/mms/net/SimpleRequest;)Lcom/xiaomi/mms/data/LoginInfo;

    move-result-object v18

    .line 495
    .local v18, info:Lcom/xiaomi/mms/data/LoginInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xiaomi/mms/data/LoginInfo;->passToken:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistPassToken(Ljava/lang/String;)V

    .line 504
    :goto_f
    if-eqz v18, :cond_21

    .line 505
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xiaomi/mms/data/LoginInfo;->security:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 506
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xiaomi/mms/data/LoginInfo;->serviceTokenUrl:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xiaomi/mms/data/LoginInfo;->nonce:Ljava/lang/Long;

    move-object/from16 v44, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xiaomi/mms/data/LoginInfo;->security:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-static/range {v43 .. v45}, Lcom/xiaomi/mms/net/CloudRequestFactory;->newGetServiceTokenRequest(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;

    move-result-object v36

    .line 511
    .local v36, serviceTokenRequest:Lcom/xiaomi/mms/net/SimpleRequest;
    invoke-static/range {v36 .. v36}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->getServiceToken(Lcom/xiaomi/mms/net/SimpleRequest;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Lcom/xiaomi/mms/net/exception/InvalidResponseException; {:try_start_9 .. :try_end_9} :catch_c

    move-result-object v35

    .line 523
    .end local v18           #info:Lcom/xiaomi/mms/data/LoginInfo;
    .end local v31           #request:Lcom/xiaomi/mms/net/SimpleRequest;
    .end local v36           #serviceTokenRequest:Lcom/xiaomi/mms/net/SimpleRequest;
    :goto_10
    if-eqz v35, :cond_22

    if-eqz v32, :cond_22

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1e
    :goto_11
    if-eqz v35, :cond_25

    if-eqz v32, :cond_25

    .line 552
    const-string v43, "MxActivateService"

    const-string v44, "get token successfully"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v32

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :cond_1f
    if-eqz v24, :cond_20

    .line 497
    :try_start_a
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/xiaomi/mms/net/CloudRequestFactory;->newLoginByTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mms/net/SimpleRequest;

    move-result-object v31

    .line 499
    .restart local v31       #request:Lcom/xiaomi/mms/net/SimpleRequest;
    invoke-static/range {v31 .. v31}, Lcom/xiaomi/mms/net/CloudRequestExecutor;->login(Lcom/xiaomi/mms/net/SimpleRequest;)Lcom/xiaomi/mms/data/LoginInfo;

    move-result-object v18

    .line 500
    .restart local v18       #info:Lcom/xiaomi/mms/data/LoginInfo;
    goto :goto_f

    .line 501
    .end local v18           #info:Lcom/xiaomi/mms/data/LoginInfo;
    .end local v31           #request:Lcom/xiaomi/mms/net/SimpleRequest;
    :cond_20
    const-string v43, "MxActivateService"

    const-string v44, "no pwd and passToken, query aborted"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Lcom/xiaomi/mms/net/exception/InvalidResponseException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_11

    .line 518
    :catch_b
    move-exception v10

    .line 519
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 515
    .end local v10           #e:Ljava/io/IOException;
    .restart local v18       #info:Lcom/xiaomi/mms/data/LoginInfo;
    .restart local v31       #request:Lcom/xiaomi/mms/net/SimpleRequest;
    :cond_21
    :try_start_b
    const-string v43, "MxActivateService"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "failed to get token, count:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Lcom/xiaomi/mms/net/exception/InvalidResponseException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_10

    .line 520
    .end local v18           #info:Lcom/xiaomi/mms/data/LoginInfo;
    .end local v31           #request:Lcom/xiaomi/mms/net/SimpleRequest;
    :catch_c
    move-exception v10

    .line 521
    .local v10, e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    const/16 v19, 0x1

    goto :goto_10

    .line 527
    .end local v10           #e:Lcom/xiaomi/mms/net/exception/InvalidResponseException;
    :cond_22
    if-eqz v24, :cond_23

    if-eqz v19, :cond_23

    .line 529
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->invalidPassToken(Landroid/content/Context;)V

    goto :goto_11

    .line 532
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isConnected()Z

    move-result v43

    if-eqz v43, :cond_24

    .line 533
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v6, v0, :cond_1e

    .line 535
    :try_start_c
    sget-object v43, Lcom/xiaomi/mms/transaction/MxActivateService;->INTS:[J

    aget-wide v43, v43, v6

    invoke-static/range {v43 .. v44}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_d

    .line 539
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 536
    :catch_d
    move-exception v10

    .line 537
    .local v10, e:Ljava/lang/InterruptedException;
    goto :goto_11

    .line 544
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_24
    const/16 v42, 0x1

    .line 545
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableConnectivityListener(Z)V

    goto/16 :goto_11

    .line 556
    :cond_25
    const-string v44, "MxActivateService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "failed to get token by "

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    if-eqz v27, :cond_27

    const-string v43, "pw"

    :goto_12
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-nez v19, :cond_26

    if-eqz v21, :cond_28

    .line 559
    :cond_26
    const v43, 0x7f0a01bd

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateFailure(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 556
    :cond_27
    const-string v43, "pt"

    goto :goto_12

    .line 562
    :cond_28
    if-eqz v42, :cond_29

    .line 563
    const-string v43, "MxActivateService"

    const-string v44, "failed to get token, waiting connectivity"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->onActivateDelayed()V

    goto/16 :goto_0

    .line 565
    :cond_29
    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->scheduleGetToken(Z)V

    .line 566
    const-string v43, "MxActivateService"

    const-string v44, "reactivate scheduled"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 571
    .end local v6           #count:I
    .end local v19           #invalidToken:Z
    .end local v21           #manually:Z
    .end local v22           #mid:Ljava/lang/String;
    .end local v24           #passToken:Ljava/lang/String;
    .end local v25           #phone:Ljava/lang/String;
    .end local v27           #pwd:Ljava/lang/String;
    .end local v32           #security:Ljava/lang/String;
    .end local v35           #serviceToken:Ljava/lang/String;
    .end local v42           #waitForNetwork:Z
    :cond_2a
    const-string v43, "com.xiaomi.mms.action.DEACTIVATE_MX"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_2c

    .line 572
    sget-boolean v43, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    if-eqz v43, :cond_2b

    .line 573
    const-string v43, "MxActivateService"

    const-string v44, "a previous activation is in process, deactivate ignored"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    :cond_2b
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->clearLastFailureCode(Landroid/content/Context;)V

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->closeChannel()V

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->onDeactivate()V

    goto/16 :goto_0

    .line 580
    :cond_2c
    const-string v43, "com.xiaomi.mms.action.ACTIVATE_DIRECTLY"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 581
    const-string v43, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 582
    .restart local v25       #phone:Ljava/lang/String;
    const-string v43, "deviceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 584
    .restart local v9       #deviceId:Ljava/lang/String;
    const-string v43, "simId"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 585
    .restart local v37       #simId:Ljava/lang/String;
    const-string v43, "pwd"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 586
    .restart local v27       #pwd:Ljava/lang/String;
    sget-boolean v43, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    if-eqz v43, :cond_2d

    .line 587
    const-string v43, "MxActivateService"

    const-string v44, "a previous activation is in process, direct activation ignored"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 591
    :cond_2d
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_2e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_2e

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_2e

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-eqz v43, :cond_2f

    .line 593
    :cond_2e
    const-string v43, "MxActivateService"

    const-string v44, "params missing, activation ignored"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 597
    :cond_2f
    const-string v43, "MxActivateService"

    const-string v44, "enabling mx externally"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/16 v43, 0x1

    sput-boolean v43, Lcom/xiaomi/mms/transaction/MxActivateService;->activating:Z

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->onStartActivate()V

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->markMxUsed()V

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistIccid(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->persistPhone(Ljava/lang/String;)V

    .line 604
    new-instance v29, Landroid/content/Intent;

    const-string v43, "com.xiaomi.mms.action.QUERY_MID"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v29       #queryMid:Landroid/content/Intent;
    const-string v43, "phone"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v43, "pwd"

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
