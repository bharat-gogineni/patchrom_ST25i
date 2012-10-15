.class public Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "MiuiGsmUmtsCallerIdSetting.java"


# instance fields
.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->addPreferencesFromResource(I)V

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 31
    const-string v0, "button_clir"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CLIRListPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 33
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 52
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 53
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/MiuiGsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 47
    :cond_0
    return-void
.end method
