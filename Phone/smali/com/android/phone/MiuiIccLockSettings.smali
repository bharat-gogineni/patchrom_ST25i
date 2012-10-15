.class public Lcom/android/phone/MiuiIccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiIccLockSettings.java"

# interfaces
.implements Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;


# instance fields
.field private mChangePin1:Landroid/preference/Preference;

.field private mDialog:Lcom/android/phone/MiuiEditPinDialog;

.field private mEnableIccLock:Landroid/preference/CheckBoxPreference;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateEnableIccLock()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/phone/MiuiIccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 55
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/phone/MiuiIccLockSettings;->mChangePin1:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public OnDialogClose(Lcom/android/phone/MiuiEditPinDialog;Z)V
    .locals 3
    .parameter "dialog"
    .parameter "cancel"

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/android/phone/MiuiEditPinDialog;->getMode()Lcom/android/phone/MiuiEditPinDialog$Mode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v1, v2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 80
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/phone/MiuiIccLockSettings;->mChangePin1:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 84
    .end local v0           #enabled:Z
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiIccLockSettings;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "button_icc_lock_enable_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiIccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    .line 40
    const-string v0, "button_change_pin1_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiIccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mChangePin1:Landroid/preference/Preference;

    .line 42
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog;

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/phone/MiuiEditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiEditPinDialog$Mode;Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    .line 43
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/MiuiIccLockSettings;->finish()V

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

    .line 62
    iget-object v2, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/MiuiIccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v0, v2}, Lcom/android/phone/MiuiEditPinDialog;->setMode(Lcom/android/phone/MiuiEditPinDialog$Mode;)V

    .line 65
    iget-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    .line 72
    :goto_0
    return v1

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiIccLockSettings;->mChangePin1:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v0, v2}, Lcom/android/phone/MiuiEditPinDialog;->setMode(Lcom/android/phone/MiuiEditPinDialog$Mode;)V

    .line 69
    iget-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 72
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 49
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiIccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 50
    invoke-direct {p0}, Lcom/android/phone/MiuiIccLockSettings;->updateEnableIccLock()V

    .line 51
    return-void
.end method
