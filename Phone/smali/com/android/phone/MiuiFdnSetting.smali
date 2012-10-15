.class public Lcom/android/phone/MiuiFdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiFdnSetting.java"

# interfaces
.implements Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;


# instance fields
.field private mChangePin2:Landroid/preference/Preference;

.field private mDialog:Lcom/android/phone/MiuiEditPinDialog;

.field private mEnableFdn:Landroid/preference/CheckBoxPreference;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateEnableFDN()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public OnDialogClose(Lcom/android/phone/MiuiEditPinDialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "cancel"

    .prologue
    .line 78
    if-nez p2, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/phone/MiuiEditPinDialog;->getMode()Lcom/android/phone/MiuiEditPinDialog$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v0, v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/phone/MiuiFdnSetting;->updateEnableFDN()V

    .line 83
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiFdnSetting;->addPreferencesFromResource(I)V

    .line 37
    const-string v0, "button_fdn_enable"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiFdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    .line 38
    const-string v0, "button_change_pin2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiFdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mChangePin2:Landroid/preference/Preference;

    .line 40
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog;

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/phone/MiuiEditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiEditPinDialog$Mode;Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    .line 42
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 88
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    iget-object v2, p0, Lcom/android/phone/MiuiFdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/phone/MiuiFdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/MiuiFdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v0, v2}, Lcom/android/phone/MiuiEditPinDialog;->setMode(Lcom/android/phone/MiuiEditPinDialog$Mode;)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    .line 73
    :goto_0
    return v1

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiFdnSetting;->mChangePin2:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v0, v2}, Lcom/android/phone/MiuiEditPinDialog;->setMode(Lcom/android/phone/MiuiEditPinDialog$Mode;)V

    .line 70
    iget-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 73
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiFdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    invoke-direct {p0}, Lcom/android/phone/MiuiFdnSetting;->updateEnableFDN()V

    .line 50
    return-void
.end method
