.class final Lcom/android/phone/MiuiPhoneUtils$1;
.super Landroid/os/Handler;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 91
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 94
    .local v14, ar:Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;

    .line 95
    .local v18, retrier:Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
    iget-object v1, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->retryCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 96
    :cond_1
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->orig:Landroid/os/Message;

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 97
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->orig:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 99
    :cond_2
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v18

    iput v1, v0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->retryCount:I

    .line 100
    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->retry()V

    goto :goto_0

    .line 105
    .end local v14           #ar:Landroid/os/AsyncResult;
    .end local v18           #retrier:Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 106
    .local v17, pm:Landroid/os/PowerManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, [Ljava/lang/Object;

    .line 108
    .local v16, objs:[Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v15, v16, v1

    check-cast v15, Landroid/view/KeyEvent;

    .line 109
    .local v15, event:Landroid/view/KeyEvent;
    const/4 v1, 0x0

    aget-object v1, v16, v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/internal/telephony/Phone;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    invoke-virtual {v15}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
