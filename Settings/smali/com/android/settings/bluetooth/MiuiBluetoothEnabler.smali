.class public final Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;
.super Ljava/lang/Object;
.source "MiuiBluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlidingButton:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V
    .locals 3
    .parameter "context"
    .parameter "slidingButton"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    .line 57
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 58
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 61
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 65
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 66
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 139
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 106
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 117
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->handleStateChanged(I)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
