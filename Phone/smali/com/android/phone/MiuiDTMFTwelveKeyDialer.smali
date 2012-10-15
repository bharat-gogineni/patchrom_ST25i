.class public Lcom/android/phone/MiuiDTMFTwelveKeyDialer;
.super Lcom/android/phone/DTMFTwelveKeyDialer;
.source "MiuiDTMFTwelveKeyDialer.java"


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .locals 0
    .parameter "parent"
    .parameter "dialerView"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    .line 9
    return-void
.end method


# virtual methods
.method public closeDialer(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public openDialer(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->showDialpadInternal(Z)V

    .line 23
    :cond_0
    return-void
.end method

.method protected processDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    .line 28
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/phone/MiuiExtraConnectionData;->onDigitPressed(Lcom/android/internal/telephony/Call;C)V

    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v0, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallCard;->updateForDigitPressed()V

    .line 32
    :cond_0
    return-void
.end method
