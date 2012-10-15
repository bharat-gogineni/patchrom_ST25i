.class public Lcom/android/phone/MiuiBluetoothHeadsetService;
.super Lcom/android/phone/BluetoothHeadsetService;
.source "MiuiBluetoothHeadsetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;-><init>()V

    return-void
.end method

.method private declared-synchronized resetState(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiBluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "sendConnectionStateChange exception"

    invoke-static {v2}, Lcom/android/phone/MiuiBluetoothHeadsetService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected hasValidSdpRecords(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 68
    .local v1, uuids:[Landroid/os/ParcelUuid;
    iget-object v3, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 70
    .local v0, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v1, :cond_2

    .line 71
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 74
    :cond_1
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    .line 21
    .local v0, hasStarted:Z
    invoke-super {p0, p1, p2}, Lcom/android/phone/BluetoothHeadsetService;->onStart(Landroid/content/Intent;I)V

    .line 23
    iget-object v1, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 24
    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/phone/MiuiBluetoothHeadsetService;->restoreHeadsetConnection()V

    .line 30
    :cond_0
    return-void
.end method

.method protected restoreHeadsetConnection()V
    .locals 7

    .prologue
    .line 33
    iget-object v5, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 39
    .local v4, state:I
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 44
    :goto_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 45
    iget-object v5, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 47
    .local v1, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 49
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 52
    .local v0, bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiBluetoothHeadsetService;->hasValidSdpRecords(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    const-string v5, "find valid sdp records try to reconnect"

    invoke-static {v5}, Lcom/android/phone/MiuiBluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiBluetoothHeadsetService;->resetState(Landroid/bluetooth/BluetoothDevice;)V

    .line 56
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/MiuiBluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v5, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "connect exception"

    invoke-static {v5}, Lcom/android/phone/MiuiBluetoothHeadsetService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0           #bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_1
    move-exception v2

    .line 41
    .restart local v2       #e:Landroid/os/RemoteException;
    const/4 v4, 0x0

    goto :goto_1
.end method
