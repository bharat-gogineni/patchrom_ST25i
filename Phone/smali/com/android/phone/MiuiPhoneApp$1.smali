.class Lcom/android/phone/MiuiPhoneApp$1;
.super Landroid/os/Handler;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPhoneApp;->initializPreferredNetworkType(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiPhoneApp;

.field final synthetic val$cdmaSubscription:I

.field final synthetic val$ci:Lcom/android/internal/telephony/CommandsInterface;

.field final synthetic val$preferredNetworkMode:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/internal/telephony/CommandsInterface;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp$1;->this$0:Lcom/android/phone/MiuiPhoneApp;

    iput-object p2, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$ci:Lcom/android/internal/telephony/CommandsInterface;

    iput p3, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$preferredNetworkMode:I

    iput p4, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$type:I

    iput p5, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$cdmaSubscription:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 361
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 364
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$ci:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$preferredNetworkMode:I

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiPhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 370
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 371
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 372
    iget v1, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$type:I

    if-eq v1, v3, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$ci:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiPhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiPhoneApp$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 380
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 381
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$cdmaSubscription:I

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-eq v2, v1, :cond_3

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$ci:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$cdmaSubscription:I

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiPhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    goto :goto_0

    .line 384
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiPhoneApp$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 388
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp$1;->val$ci:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1, v2}, Lcom/android/phone/MiuiUtils;->tryToUpdateVoiceRadioTechnology(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
