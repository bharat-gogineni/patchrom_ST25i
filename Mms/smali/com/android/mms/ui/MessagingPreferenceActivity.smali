.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$MxStatusReceiver;
    }
.end annotation


# instance fields
.field private mBroadcastFilter:Landroid/content/IntentFilter;

.field private mDateTypePref:Landroid/preference/ListPreference;

.field private mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

.field private mMessageThemePref:Landroid/preference/PreferenceScreen;

.field private mMxEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mPopupPref:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSignaturePref:Landroid/preference/EditTextPreference;

.field private mWakeupScreenPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 450
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateMxPrefStatus()V

    return-void
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 3
    .parameter "enabled"
    .parameter "context"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_key_enable_notification"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillDateTypeSummary(Ljava/lang/String;)V
    .locals 5
    .parameter "type"

    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, index:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 355
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f080006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, typeNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDateTypePref:Landroid/preference/ListPreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 443
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getPushStatusRes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Lcom/xiaomi/mms/transaction/PushStatus;->getStatus()Lcom/xiaomi/mms/transaction/PushStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a01d5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a01d6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "signature"

    .prologue
    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, summary:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, nextlineindex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const v3, 0x60c0190

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleIntent()V
    .locals 4

    .prologue
    .line 268
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->getLastFailureCode(Landroid/content/Context;)I

    move-result v1

    .line 269
    .local v1, mxFailureCode:I
    if-lez v1, :cond_0

    .line 271
    packed-switch v1, :pswitch_data_0

    .line 280
    const v3, 0x7f0a01cd

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, reason:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "reason"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 288
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #reason:Ljava/lang/String;
    :cond_0
    return-void

    .line 273
    :pswitch_0
    const v3, 0x7f0a01cb

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    .restart local v2       #reason:Ljava/lang/String;
    goto :goto_0

    .line 276
    .end local v2           #reason:Ljava/lang/String;
    :pswitch_1
    const v3, 0x7f0a01cc

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2       #reason:Ljava/lang/String;
    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "pref_key_enable_mx_switch"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    const-string v0, "pref_key_enable_notification"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    const-string v0, "pref_key_enable_notification_body"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    const-string v0, "pref_key_enable_new_message_popup"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    .line 248
    const-string v0, "pref_key_enable_wake_up_screen"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    const-string v0, "pref_key_launch_theme_modify"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    const-string v0, "pref_key_message_theme_setting"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    .line 255
    const-string v0, "pref_key_edit_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    const-string v0, "pref_key_date_type"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDateTypePref:Landroid/preference/ListPreference;

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDateTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getDateType(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->fillDateTypeSummary(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private updateMxPrefStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 398
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 400
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a01b9

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 424
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {}, Lcom/xiaomi/mms/transaction/MxActivateService;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 404
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 405
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a01b8

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 408
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 409
    .local v1, mx_enabled:Z
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 410
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxMessageService;->getMxCount(Landroid/content/Context;)I

    move-result v0

    .line 411
    .local v0, mx_count:I
    if-eqz v1, :cond_3

    .line 412
    if-lez v0, :cond_2

    .line 413
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a01c0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPushStatusRes()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a01bf

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPushStatusRes()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a01be

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 146
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastFilter:Landroid/content/IntentFilter;

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastFilter:Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mms.action.ACTIVATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastFilter:Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mms.action.DEACTIVATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastFilter:Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mms.action.STATUS_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastFilter:Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mms.PUSH_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$MxStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MxStatusReceiver;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/android/mms/ui/MessagingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->handleIntent()V

    .line 158
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0a01b7

    const v4, 0x1010355

    .line 180
    packed-switch p1, :pswitch_data_0

    .line 237
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 182
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a01b5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01b6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 198
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 209
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a01c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 225
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setIntent(Landroid/content/Intent;)V

    .line 164
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->handleIntent()V

    .line 165
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 393
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    if-ne p1, v4, :cond_4

    .line 317
    if-nez p2, :cond_1

    const-string v1, ""

    .line 318
    .local v1, signature:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1           #signature:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_1
    move v2, v3

    .line 349
    :goto_2
    return v2

    .line 317
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 322
    .restart local v1       #signature:Ljava/lang/String;
    :cond_2
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 331
    .end local v1           #signature:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_6

    .line 332
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 333
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification"

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 336
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_8

    .line 337
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 338
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification_body"

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 341
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_a

    .line 342
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 343
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_wake_up_screen"

    if-eqz v0, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 346
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDateTypePref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 347
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->fillDateTypeSummary(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 292
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    if-ne p1, v3, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.thememanager"

    const-string v4, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    const-string v2, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v3, 0x80

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMxEnabledPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 299
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->needSendSms(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-static {p0, v1, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMx(Landroid/content/Context;ZZ)V

    .line 304
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateMxPrefStatus()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {p0, v2, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMx(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 311
    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 362
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBroadcastFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationBodyEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefWakeupScreenEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateMxPrefStatus()V

    .line 369
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAccessControlled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0161

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 372
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 373
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0164

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 381
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, style:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0150

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    :goto_1
    return-void

    .line 375
    .end local v0           #style:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0160

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 377
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 385
    .restart local v0       #style:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0151

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
