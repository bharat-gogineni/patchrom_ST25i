.class public Lcom/xiaomi/mms/transaction/ExternalActivateMxService;
.super Landroid/app/Service;
.source "ExternalActivateMxService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.xiaomi.action.ACTIVATE_MX_EXTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    const-string v5, "ExternalActivateMxService"

    const-string v6, "receive activate mx externally intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v5, "extra_phone"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, phone:Ljava/lang/String;
    const-string v5, "extra_deviceId"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, deviceId:Ljava/lang/String;
    const-string v5, "extra_simId"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, simId:Ljava/lang/String;
    const-string v5, "extra_pwd"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, pwd:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    :cond_0
    const-string v5, "ExternalActivateMxService"

    const-string v6, "params missing, action ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v1           #deviceId:Ljava/lang/String;
    .end local v2           #phone:Ljava/lang/String;
    .end local v3           #pwd:Ljava/lang/String;
    .end local v4           #simId:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v5, 0x2

    return v5

    .line 40
    .restart local v1       #deviceId:Ljava/lang/String;
    .restart local v2       #phone:Ljava/lang/String;
    .restart local v3       #pwd:Ljava/lang/String;
    .restart local v4       #simId:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v2, v1, v4, v3}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMxDirectly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
