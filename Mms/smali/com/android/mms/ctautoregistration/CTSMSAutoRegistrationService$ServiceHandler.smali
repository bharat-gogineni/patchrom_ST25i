.class Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;
.super Landroid/os/Handler;
.source "CTSMSAutoRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;


# direct methods
.method private constructor <init>(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;-><init>(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 173
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 194
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v2, v2, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v3, v3, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v2, v2, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, newImsi:Ljava/lang/String;
    const-string v2, "ro.ril.esn_changed"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 181
    .local v0, esn_changed:Z
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v2, v2, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    invoke-virtual {v2}, Lcom/android/mms/ctautoregistration/Data;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v2, v2, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    invoke-virtual {v2}, Lcom/android/mms/ctautoregistration/Data;->getOldImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    invoke-virtual {v2}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->stopSelf()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v2, v2, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ctautoregistration/Data;->setRegistered(Z)V

    .line 189
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    #calls: Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->sendRegistrationSms()V
    invoke-static {v2}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->access$200(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
