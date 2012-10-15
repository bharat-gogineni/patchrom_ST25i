.class Lcom/android/phone/MiuiPhoneApp$Handler;
.super Landroid/os/Handler;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private mParentHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/MiuiPhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiPhoneApp;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "parentHandler"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->mParentHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x2

    .line 43
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 103
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 45
    :sswitch_0
    const-string v3, "PhoneApp"

    const-string v4, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget v3, v3, Lcom/android/phone/MiuiPhoneApp;->mBluetoothHeadsetState:I

    if-eq v3, v6, :cond_1

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v6, :cond_2

    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget v3, v3, Lcom/android/phone/MiuiPhoneApp;->mBluetoothHeadsetState:I

    if-ne v3, v6, :cond_3

    :cond_2
    move v0, v2

    .line 51
    .local v0, changed:Z
    :cond_3
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/android/phone/MiuiPhoneApp;->mBluetoothHeadsetState:I

    .line 52
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v3, v2}, Lcom/android/phone/MiuiPhoneApp;->updateBluetoothIndication(Z)V

    .line 54
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget v2, v2, Lcom/android/phone/MiuiPhoneApp;->mBluetoothHeadsetState:I

    if-ne v2, v6, :cond_4

    .line 56
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 57
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 63
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    #calls: Lcom/android/phone/MiuiPhoneApp;->isInCallScreenForeground()Z
    invoke-static {v2}, Lcom/android/phone/MiuiPhoneApp;->access$000(Lcom/android/phone/MiuiPhoneApp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v2, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallScreen;->onBluetoothAvailabilityChanged()V

    goto :goto_0

    .line 59
    :cond_5
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1

    .line 70
    .end local v0           #changed:Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 72
    .local v1, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_6

    .line 73
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_8

    .line 75
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 84
    :goto_2
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    #calls: Lcom/android/phone/MiuiPhoneApp;->isInCallScreenForeground()Z
    invoke-static {v2}, Lcom/android/phone/MiuiPhoneApp;->access$000(Lcom/android/phone/MiuiPhoneApp;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v2, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallScreen;->onHeadsetAvailabilityChanged()V

    .line 90
    :cond_6
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v2, v1}, Lcom/android/phone/MiuiPhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 93
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-boolean v2, v2, Lcom/android/phone/MiuiPhoneApp;->mTtyEnabled:Z

    if-eqz v2, :cond_0

    .line 94
    const/16 v2, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MiuiPhoneApp$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiPhoneApp$Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 78
    :cond_7
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_2

    .line 81
    :cond_8
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iget-object v2, v2, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_2

    .line 99
    .end local v1           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/MiuiPhoneApp;->onIccStatusChanged()V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x191 -> :sswitch_0
        0x1f5 -> :sswitch_2
    .end sparse-switch
.end method
