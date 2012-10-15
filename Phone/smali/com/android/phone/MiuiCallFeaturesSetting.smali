.class public Lcom/android/phone/MiuiCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiCallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAnswerWidget:Landroid/preference/ListPreference;

.field private mAutoAnswer:Landroid/preference/PreferenceScreen;

.field private mAutoIP:Landroid/preference/PreferenceScreen;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCrystalTalk:Landroid/preference/ListPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallWaitingTone:Landroid/preference/ListPreference;

.field private mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

.field private mConDisconVibrate:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mT9IndexingMethod:Landroid/preference/ListPreference;

.field private mTelocation:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 465
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 466
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 472
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_0

    .line 473
    packed-switch v0, :pswitch_data_0

    .line 482
    const/4 v0, 0x0

    .line 485
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 478
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showRebuildT9IndexDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 510
    new-instance v0, Lcom/android/phone/MiuiCallFeaturesSetting$2;

    const v4, 0x7f0c03d4

    move-object v1, p0

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiCallFeaturesSetting$2;-><init>(Lcom/android/phone/MiuiCallFeaturesSetting;Landroid/content/Context;IIZ)V

    .line 519
    .local v0, task:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 503
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 504
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    :goto_0
    return-void

    .line 500
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 215
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 218
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 219
    .local v0, phoneType:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 220
    const-string v3, "button_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 221
    const-string v3, "button_call_waiting"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 222
    const-string v3, "button_caller_id"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 224
    const-string v3, "button_auto_redial"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 234
    :goto_0
    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    const-string v3, "button_call_record_setting"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 238
    :cond_0
    const-string v3, "button_connect_disconnect_vibrate"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    .line 239
    const-string v3, "button_answer_widget"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    .line 240
    const-string v3, "button_call_waiting_tone"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    .line 241
    const-string v3, "button_auto_answer_screen"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    .line 242
    const-string v3, "button_telocation_setting"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    .line 243
    const-string v3, "button_auto_ip_setting"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    .line 244
    const-string v3, "button_dtmf_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 245
    const-string v3, "button_auto_retry"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 246
    const-string v3, "button_hac"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 247
    const-string v3, "button_tty_mode"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 248
    const-string v3, "button_display_precise_call_state"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    .line 250
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 252
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 260
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 268
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_4

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 276
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    :cond_4
    :goto_4
    const-string v3, "button_crystal_talk_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    .line 284
    sget-boolean v3, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lmiui/os/Build;->IS_DEFY:Z

    if-eqz v3, :cond_e

    .line 285
    :cond_5
    new-instance v2, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 286
    .local v2, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/phone/MiuiVoiceQualityUtility;->getVoiceQualitySetting()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 287
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    .end local v2           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    :goto_5
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    .line 294
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 297
    :cond_6
    const-string v3, "button_t9_index_method_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    .line 298
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    if-eqz v3, :cond_7

    .line 299
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    :cond_7
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 303
    return-void

    .line 225
    :cond_8
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 226
    const-string v3, "button_cdma_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 227
    const-string v3, "button_cdma_cw"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 228
    const-string v3, "button_voice_privacy"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 229
    const-string v3, "button_display_precise_call_state"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 231
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_a
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 255
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_1

    .line 262
    :cond_b
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 263
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 270
    :cond_c
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 271
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    .line 278
    :cond_d
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 279
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_4

    .line 289
    :cond_e
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 290
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 430
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 431
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    invoke-static {p0, v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x1

    .line 434
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 150
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_1

    .line 151
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, index:I
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone_type"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    .end local v2           #index:I
    :cond_0
    :goto_0
    return v6

    .line 154
    .restart local p2
    :cond_1
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_2

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_3

    .line 157
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 158
    .local v4, val:I
    new-instance v3, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v3, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 160
    .local v3, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    invoke-virtual {v3, v4}, Lcom/android/phone/MiuiVoiceQualityUtility;->updateVoiceQualityParameter(I)V

    .line 161
    invoke-virtual {v3, v4}, Lcom/android/phone/MiuiVoiceQualityUtility;->setVoiceQualitySetting(I)V

    goto :goto_0

    .line 162
    .end local v3           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    .end local v4           #val:I
    .restart local p2
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_4

    .line 163
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c03b7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c03b9

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/phone/MiuiCallFeaturesSetting$1;

    invoke-direct {v8, p0}, Lcom/android/phone/MiuiCallFeaturesSetting$1;-><init>(Lcom/android/phone/MiuiCallFeaturesSetting;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 174
    const/4 v6, 0x0

    goto :goto_0

    .line 176
    .restart local p2
    :cond_4
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_5

    .line 177
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 178
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, answerWidgetSummary:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    .end local v0           #answerWidgetSummary:[Ljava/lang/String;
    .end local v2           #index:I
    .restart local p2
    :cond_5
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_6

    .line 181
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 182
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060042

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, callWaitToneSummary:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0c03b3

    invoke-virtual {p0, v9}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    .end local v1           #callWaitToneSummary:[Ljava/lang/String;
    .end local v2           #index:I
    .restart local p2
    :cond_6
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_7

    .line 185
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 186
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, vibrateSummary:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 188
    .end local v2           #index:I
    .end local v5           #vibrateSummary:[Ljava/lang/String;
    .restart local p2
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_0

    .line 189
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 190
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "t9_indexing_key"

    sget v9, Lmiui/provider/ExtraSettings$System;->T9_INDEXING_KEY_DEFAULT:I

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v2, v7, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "t9_indexing_key"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    invoke-direct {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->showRebuildT9IndexDialog()V

    .line 196
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060048

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 439
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v4, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v3

    .line 441
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v4, :cond_0

    .line 443
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 444
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    iget-object v6, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 448
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 449
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 451
    .local v1, hac:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 456
    .local v0, am:Landroid/media/AudioManager;
    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "HACSetting"

    aput-object v6, v5, v2

    if-eqz v1, :cond_5

    const-string v2, "ON"

    :goto_2
    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #hac:I
    :cond_4
    move v1, v2

    .line 449
    goto :goto_1

    .line 456
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #hac:I
    :cond_5
    const-string v2, "OFF"

    goto :goto_2

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #hac:I
    :cond_6
    move v3, v2

    .line 460
    goto :goto_0
.end method

.method protected onResume()V
    .locals 25

    .prologue
    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v20

    if-nez v20, :cond_10

    const/4 v9, 0x1

    .line 308
    .local v9, fdnDisabled:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 309
    .local v15, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v20, "button_call_forwarding"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 310
    .local v14, pref:Landroid/preference/Preference;
    if-eqz v14, :cond_0

    .line 311
    invoke-virtual {v14, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    :cond_0
    const-string v20, "button_call_waiting"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 314
    if-eqz v14, :cond_1

    .line 315
    invoke-virtual {v14, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 317
    :cond_1
    const-string v20, "button_caller_id"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 318
    if-eqz v14, :cond_2

    .line 319
    invoke-virtual {v14, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    :cond_2
    const-string v20, "button_cdma_call_forwarding"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 322
    if-eqz v14, :cond_3

    .line 323
    invoke-virtual {v14, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    :cond_3
    const-string v20, "button_cdma_cw"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 326
    if-eqz v14, :cond_4

    .line 327
    invoke-virtual {v14, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 330
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060024

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, answerWidgetSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    .line 334
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    aget-object v21, v3, v11

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    .end local v3           #answerWidgetSummary:[Ljava/lang/String;
    .end local v11           #index:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060042

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, callWaitToneSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    .line 340
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v6, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f0c03b3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    .end local v6           #callWaitToneSummary:[Ljava/lang/String;
    .end local v11           #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060026

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 345
    .local v19, vibrateSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v11

    .line 346
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    aget-object v21, v19, v11

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    .end local v11           #index:I
    .end local v19           #vibrateSummary:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 349
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "button_auto_answer"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const v21, 0x7f0c027b

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 362
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enable_telocation"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 368
    const v20, 0x7f0c038d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 372
    .local v18, summaryTeloc:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "auto_country_code"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 375
    const v20, 0x7f0c038f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 379
    .local v17, summaryCountryCode:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    .end local v17           #summaryCountryCode:Ljava/lang/String;
    .end local v18           #summaryTeloc:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "button_autoip"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_14

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const v21, 0x7f0c028d

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 393
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "dtmf_tone_type"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 396
    .local v8, dtmf:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 398
    .end local v8           #dtmf:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "call_auto_retry"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 401
    .local v5, autoretry:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    if-eqz v5, :cond_15

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    .end local v5           #autoretry:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "hearing_aid"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 405
    .local v10, hac:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    if-eqz v10, :cond_16

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    .end local v10           #hac:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "preferred_tty_mode"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 411
    .local v16, settingsTtyMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 415
    .end local v16           #settingsTtyMode:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "t9_indexing_key"

    sget v22, Lmiui/provider/ExtraSettings$System;->T9_INDEXING_KEY_DEFAULT:I

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 419
    .local v13, method:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060048

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    aget-object v21, v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    .end local v13           #method:I
    :cond_f
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 425
    return-void

    .line 307
    .end local v9           #fdnDisabled:Z
    .end local v14           #pref:Landroid/preference/Preference;
    .end local v15           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 353
    .restart local v9       #fdnDisabled:Z
    .restart local v14       #pref:Landroid/preference/Preference;
    .restart local v15       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "button_auto_answer_delay"

    const-string v22, "3"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, delay:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060034

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, autoAnswerSummary:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "button_auto_answer_scenario"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 359
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v4, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f0c027c

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v7, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 370
    .end local v4           #autoAnswerSummary:[Ljava/lang/String;
    .end local v7           #delay:Ljava/lang/String;
    .end local v11           #index:I
    :cond_12
    const v20, 0x7f0c038e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #summaryTeloc:Ljava/lang/String;
    goto/16 :goto_2

    .line 377
    :cond_13
    const v20, 0x7f0c0390

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #summaryCountryCode:Ljava/lang/String;
    goto/16 :goto_3

    .line 386
    .end local v17           #summaryCountryCode:Ljava/lang/String;
    .end local v18           #summaryTeloc:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "autoip_prefix"

    invoke-static/range {p0 .. p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 390
    .local v12, ipPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const v21, 0x7f0c0335

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 401
    .end local v12           #ipPrefix:Ljava/lang/String;
    .restart local v5       #autoretry:I
    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 405
    .end local v5           #autoretry:I
    .restart local v10       #hac:I
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_6
.end method
