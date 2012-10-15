.class public Lcom/android/settings/wifi/MiuiWifiEnabler;
.super Ljava/lang/Object;
.source "MiuiWifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mStateMachineEvent:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V
    .locals 2
    .parameter "context"
    .parameter "slidingButton"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiEnabler$1;-><init>(Lcom/android/settings/wifi/MiuiWifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    .line 71
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/MiuiWifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/MiuiWifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 175
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setSlidingButtonChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 151
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setSlidingButtonChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setSlidingButtonChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSlidingButtonChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 108
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01b7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 116
    .local v0, wifiApState:I
    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v3}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01b6

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    return-void
.end method
