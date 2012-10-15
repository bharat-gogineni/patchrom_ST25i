.class public Lcom/android/settings/wifi/WifiConfigActivity;
.super Landroid/app/Activity;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 42
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    .line 44
    .local v1, configController:Lcom/android/settings/wifi/WifiConfigController;
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v2

    .line 45
    .local v2, networkSetup:I
    packed-switch v2, :pswitch_data_0

    .line 57
    .end local v1           #configController:Lcom/android/settings/wifi/WifiConfigController;
    .end local v2           #networkSetup:I
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v1       #configController:Lcom/android/settings/wifi/WifiConfigController;
    .restart local v2       #networkSetup:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getWpsConfig()Landroid/net/wifi/WpsInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 53
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiConfigActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 25
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, p0, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wifi_config"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 29
    .local v0, wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 30
    new-instance v1, Lcom/android/settings/wifi/WifiDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 31
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiConfigActivity$1;-><init>(Lcom/android/settings/wifi/WifiConfigActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 38
    return-void
.end method
