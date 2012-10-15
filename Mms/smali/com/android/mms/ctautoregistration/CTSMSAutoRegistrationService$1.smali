.class Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;
.super Landroid/telephony/PhoneStateListener;
.source "CTSMSAutoRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;


# direct methods
.method constructor <init>(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v4, 0x2

    .line 46
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v1, v1, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v2, v2, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 49
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 50
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    iget-object v1, v1, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, mcc:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    #getter for: Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mServiceHandler:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;
    invoke-static {v1}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->access$100(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 60
    .end local v0           #mcc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;->this$0:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;

    invoke-virtual {v1}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->stopSelf()V

    goto :goto_0
.end method
