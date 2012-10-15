.class public Lcom/android/phone/MiuiIccCardApplicationProxy;
.super Ljava/lang/Object;
.source "MiuiIccCardApplicationProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCdmaApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 46
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsmApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 41
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPin2Locked(Lcom/android/internal/telephony/IccCardStatus;)Z
    .locals 7
    .parameter "iccCardStatus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v3

    .line 20
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 21
    .local v2, phoneType:I
    if-ne v2, v4, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v1

    .line 23
    .local v1, index:I
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 35
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 26
    .end local v1           #index:I
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v1

    .line 28
    .restart local v1       #index:I
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    goto :goto_1

    .line 32
    .end local v1           #index:I
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static registerIccStatusChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 7
    .parameter "phone"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 51
    move-object v1, p1

    .line 52
    .local v1, handler:Landroid/os/Handler;
    move v0, p2

    .line 53
    .local v0, event:I
    move-object v2, p3

    .line 54
    .local v2, object:Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/phone/MiuiIccCardApplicationProxy$1;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/phone/MiuiIccCardApplicationProxy$1;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method
