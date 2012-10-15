.class public Lcom/android/phone/MiuiVoicemailSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "MiuiVoicemailSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field mChangingVMorFwdDueToProviderChange:Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MiuiVoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 250
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 256
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 263
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 268
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 273
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 278
    iput v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    .line 284
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 302
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 308
    iput v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 344
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 734
    new-instance v0, Lcom/android/phone/MiuiVoicemailSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiVoicemailSetting$1;-><init>(Lcom/android/phone/MiuiVoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 903
    new-instance v0, Lcom/android/phone/MiuiVoicemailSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiVoicemailSetting$2;-><init>(Lcom/android/phone/MiuiVoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 963
    new-instance v0, Lcom/android/phone/MiuiVoicemailSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiVoicemailSetting$3;-><init>(Lcom/android/phone/MiuiVoicemailSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiVoicemailSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiVoicemailSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiVoicemailSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1001
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1002
    const/4 v2, 0x1

    .line 1014
    .local v2, result:Z
    :cond_0
    :goto_0
    return v2

    .line 1006
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x1

    .line 1007
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1008
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1009
    const/4 v2, 0x0

    .line 1010
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1020
    const/4 v3, 0x0

    .line 1021
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1023
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1024
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1025
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1026
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1027
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1028
    if-nez v3, :cond_1

    .line 1029
    const-string v3, ""

    .line 1034
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1044
    const-string v0, ""

    .line 1048
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1578
    :goto_0
    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 680
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #key:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1055
    const/4 v2, 0x1

    .line 1056
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1057
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1058
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1059
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    const/4 v2, 0x0

    .line 1062
    const/4 v1, 0x1

    .line 1065
    :cond_0
    if-eqz v2, :cond_1

    .line 1066
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_1

    .line 1068
    const/4 v2, 0x0

    .line 1071
    :cond_1
    if-eqz v2, :cond_2

    .line 1073
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1074
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 1084
    :goto_0
    return-void

    .line 1076
    :cond_2
    if-eqz v1, :cond_3

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MiuiVoicemailSetting;->log(Ljava/lang/String;)V

    .line 1078
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1080
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MiuiVoicemailSetting;->log(Ljava/lang/String;)V

    .line 1081
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 1101
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    .line 646
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1087
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1088
    iput p1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 1089
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1090
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 1096
    :goto_0
    return-void

    .line 1093
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1094
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 1095
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 827
    const/4 v4, 0x0

    .line 828
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 829
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 830
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 831
    move-object v4, v2

    .line 836
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_0
    return-object v4

    .line 829
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 22

    .prologue
    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1391
    const/4 v14, 0x0

    .line 1392
    .local v14, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1398
    :cond_0
    if-eqz v14, :cond_1

    .line 1399
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/MiuiVoicemailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1403
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 1406
    const v18, 0x7f0c008d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1407
    .local v10, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1411
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1412
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1414
    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 1418
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 1419
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1420
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1421
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1423
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1425
    add-int/lit8 v9, v9, -0x1

    .line 1418
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1428
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1429
    .local v11, nameForDisplay:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1430
    .local v13, providerIntent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1441
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #nameForDisplay:Ljava/lang/String;
    .end local v13           #providerIntent:Landroid/content/Intent;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v4, v9, [Ljava/lang/String;

    .line 1442
    .local v4, entries:[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1443
    .local v17, values:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 1444
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 1445
    const/4 v5, 0x1

    .line 1446
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 1447
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1448
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1446
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1451
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 1452
    aput-object v8, v17, v5

    .line 1453
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1456
    .end local v8           #key:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1459
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 841
    const/4 v0, 0x1

    .line 842
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 845
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 846
    const/4 v0, 0x0

    .line 849
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1532
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1534
    if-nez v3, :cond_0

    .line 1563
    :goto_0
    return-object v0

    .line 1539
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1541
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1542
    if-lez v2, :cond_2

    .line 1543
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1544
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 1545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1546
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 1547
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1549
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1552
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1553
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1554
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1556
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1544
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    move-object v0, v2

    .line 1561
    :cond_2
    new-instance v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    move-object v0, v1

    .line 1563
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1339
    const-string v0, "VoicemailSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 1464
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1494
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 1498
    invoke-virtual {p2, v1}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    iget-object v3, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1507
    sget-object v4, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_2

    .line 1508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1509
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1511
    aget-object v5, v3, v0

    .line 1512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1518
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1520
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 854
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 855
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V
    .locals 6
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    .line 691
    iget-object v1, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 693
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 694
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 697
    :cond_0
    iget-object v1, p2, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 703
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 705
    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    .line 710
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 732
    :goto_0
    return-void

    .line 714
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiVoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    .line 715
    iput-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 716
    iput-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 717
    iput v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 718
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 719
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 722
    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 724
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 725
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    :cond_3
    const/16 v1, 0x642

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 730
    .end local v0           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 860
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 861
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 862
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/MiuiVoicemailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 863
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->resetForwardingChangeState()V

    .line 864
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 867
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MiuiVoicemailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 870
    .local v6, doUpdate:Z
    if-eqz v6, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 864
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 874
    goto :goto_1

    .line 885
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x641

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    .line 890
    .end local v8           #i:I
    :goto_2
    return-void

    .line 888
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiVoicemailSetting;->showDialog(I)V

    .line 676
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1253
    sparse-switch p1, :sswitch_data_0

    .line 1275
    :goto_0
    return-void

    .line 1257
    :sswitch_0
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1260
    :sswitch_1
    const/16 v0, 0x5dd

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1263
    :sswitch_2
    const/16 v0, 0x5de

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1266
    :sswitch_3
    const/16 v0, 0x578

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1269
    :sswitch_4
    const/16 v0, 0x640

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1253
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1477
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1478
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1479
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1484
    :cond_0
    return-void

    .line 1477
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 473
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 474
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 476
    :cond_0
    const/16 v0, 0x643

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showDialogIfForeground(I)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 479
    .local v9, prevSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, v9, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 487
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 489
    if-nez v9, :cond_3

    const/4 v8, 0x0

    .line 491
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    :goto_0
    if-eqz v8, :cond_6

    .line 492
    iget-object v11, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 494
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->resetForwardingChangeState()V

    .line 495
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_6

    .line 496
    aget-object v6, v8, v7

    .line 500
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 501
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_2
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 495
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 489
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_3
    iget-object v8, v9, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_0

    .restart local v6       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v7       #i:I
    .restart local v8       #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v10       #result:Landroid/os/AsyncResult;
    .restart local v11       #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    move v1, v12

    .line 503
    goto :goto_2

    .line 518
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->onRevertDone()V

    .line 521
    :cond_6
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .parameter "currentProviderSetting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1348
    move-object v0, p1

    .line 1349
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;

    .line 1355
    .local v1, provider:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1356
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0c008c

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1359
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1361
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1362
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1375
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v2, v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1365
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c01d4

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1369
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1371
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1372
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1113
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1114
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1117
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1119
    .local v0, summary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1117
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0c01d2

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v6, 0x642

    const/4 v9, 0x0

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 752
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 754
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 757
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 761
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_3

    .line 824
    :cond_2
    :goto_0
    return-void

    .line 767
    :cond_3
    if-eqz v2, :cond_4

    .line 769
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 770
    invoke-direct {p0, v6}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V

    .line 771
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 776
    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 777
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 778
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 779
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 780
    aget-object v3, v0, v4

    .line 784
    :cond_5
    if-nez v3, :cond_a

    .line 789
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 790
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 791
    sget-object v5, Lcom/android/phone/MiuiVoicemailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 792
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 801
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 804
    const/4 v1, 0x1

    .line 805
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 806
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    .line 807
    const/4 v1, 0x0

    .line 811
    :cond_7
    if-eqz v1, :cond_2

    .line 813
    invoke-direct {p0, v6}, Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V

    .line 814
    iget-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    .line 815
    const-string v5, ""

    new-instance v6, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MiuiVoicemailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    .line 818
    iput-boolean v9, p0, Lcom/android/phone/MiuiVoicemailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 820
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 778
    .end local v1           #done:Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 795
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 796
    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 805
    .restart local v1       #done:Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 540
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 541
    const/4 v10, 0x0

    .line 545
    .local v10, failure:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 546
    .local v14, isVMProviderSettingsForced:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 548
    const/16 v17, 0x0

    .line 549
    .local v17, vmNum:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 551
    const/4 v10, 0x1

    .line 579
    :cond_0
    :goto_0
    if-eqz v10, :cond_7

    .line 581
    if-eqz v14, :cond_1

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    .line 633
    .end local v10           #failure:Z
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 553
    .restart local v10       #failure:Z
    .restart local v14       #isVMProviderSettingsForced:Z
    .restart local v17       #vmNum:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 555
    const/4 v10, 0x1

    goto :goto_0

    .line 557
    :cond_3
    const-string v2, "com.android.phone.Signout"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 559
    if-eqz v14, :cond_4

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 563
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v16

    .line 565
    .local v16, victim:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v13, i:Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const/high16 v2, 0x400

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/MiuiVoicemailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 572
    .end local v13           #i:Landroid/content/Intent;
    .end local v16           #victim:Ljava/lang/String;
    :cond_5
    const-string v2, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 573
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 575
    :cond_6
    const/4 v10, 0x1

    goto :goto_0

    .line 588
    :cond_7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 589
    const-string v2, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 593
    .local v11, fwdNum:Ljava/lang/String;
    const-string v2, "com.android.phone.ForwardingNumberTime"

    const/16 v3, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 597
    .local v12, fwdNumTime:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v11, v12}, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 602
    .end local v10           #failure:Z
    .end local v11           #fwdNum:Ljava/lang/String;
    .end local v12           #fwdNumTime:I
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_8
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 607
    const/4 v8, 0x0

    .line 608
    .local v8, cursor:Landroid/database/Cursor;
    const-string v15, ""

    .line 610
    .local v15, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiVoicemailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/MiuiVoicemailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 612
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_a

    .line 621
    :cond_9
    if-eqz v8, :cond_1

    .line 622
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 616
    :cond_a
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 621
    if-eqz v8, :cond_b

    .line 622
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_b
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 628
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v15}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 617
    :catch_0
    move-exception v9

    .line 618
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "VoicemailSetting"

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    if-eqz v8, :cond_1

    .line 622
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 621
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_c

    .line 622
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x5de

    .line 1217
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1218
    packed-switch p2, :pswitch_data_0

    .line 1246
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->finish()V

    .line 1249
    :cond_1
    :goto_1
    return-void

    .line 1224
    :pswitch_1
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1227
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1232
    :pswitch_2
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1235
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1237
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->finish()V

    goto :goto_1

    .line 1218
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 1283
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1286
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1288
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->addPreferencesFromResource(I)V

    .line 1291
    const-string v0, "button_voicemail"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1292
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1294
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1295
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0c016b

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1298
    :cond_0
    const-string v0, "button_voicemail_provider"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1299
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1301
    const-string v0, "button_voicemail_setting"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1302
    const-string v0, "button_voicemail_notification_vibrate_when_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    .line 1304
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1306
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->initVoiceMailProviders()V

    .line 1315
    :cond_1
    if-nez p1, :cond_2

    .line 1316
    invoke-virtual {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 1319
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1326
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 1329
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 1330
    return-void

    .line 1321
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1322
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x643

    const/16 v8, 0x641

    const/4 v7, 0x0

    const v6, 0x7f0c0082

    .line 1140
    const/16 v5, 0x5dc

    if-eq p1, v5, :cond_0

    const/16 v5, 0x578

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5dd

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5de

    if-eq p1, v5, :cond_0

    const/16 v5, 0x640

    if-ne p1, v5, :cond_1

    .line 1144
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1147
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c007a

    .line 1148
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1179
    const v3, 0x7f0c007f

    .line 1182
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1186
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiVoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1187
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1188
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1189
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1193
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1209
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v1

    .line 1150
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0c0087

    .line 1151
    .restart local v3       #msgId:I
    const v4, 0x7f0c0052

    .line 1153
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1158
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0c008b

    .line 1159
    .restart local v3       #msgId:I
    const v4, 0x7f0c0052

    .line 1161
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1164
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0c0088

    .line 1166
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1169
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0c0089

    .line 1171
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1174
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0c008a

    .line 1175
    .restart local v3       #msgId:I
    const v5, 0x7f0c01cd

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1176
    const v5, 0x7f0c01ce

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1196
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x642

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1198
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1199
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1200
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1201
    if-ne p1, v8, :cond_3

    const v5, 0x7f0c007c

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiVoicemailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0c007d

    goto :goto_2

    :cond_4
    const v5, 0x7f0c007b

    goto :goto_2

    .line 1209
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1148
    nop

    :sswitch_data_0
    .sparse-switch
        0x578 -> :sswitch_1
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_3
        0x5de -> :sswitch_4
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 419
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 423
    move-object v0, p1

    .line 425
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 454
    :cond_0
    :goto_0
    return-object v1

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiVoicemailSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1587
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1588
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1589
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 1590
    const/4 v0, 0x1

    .line 1592
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForeground:Z

    .line 336
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 372
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v1, p2

    .line 374
    check-cast v1, Ljava/lang/String;

    .line 377
    .local v1, newProviderKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v1           #newProviderKey:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return v5

    .line 381
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v1       #newProviderKey:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 383
    iput-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 385
    invoke-direct {p0, v1}, Lcom/android/phone/MiuiVoicemailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;

    move-result-object v2

    .line 394
    .local v2, newProviderSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    if-nez v2, :cond_2

    .line 397
    iput-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMProviderSettingsForced:Z

    .line 398
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiVoicemailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 402
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/MiuiVoicemailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 403
    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiVoicemailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .line 405
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v1           #newProviderKey:Ljava/lang/String;
    .end local v2           #newProviderSettings:Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 353
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v1, :cond_0

    .line 360
    :goto_0
    return v0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiVoicemailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1133
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1134
    iput p1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mCurrentDialogId:I

    .line 1135
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1334
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 1335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mForeground:Z

    .line 1336
    return-void
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/android/phone/MiuiVoicemailSetting;->updateVoiceNumberField()V

    .line 528
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 529
    iget v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiVoicemailSetting;->showVMDialog(I)V

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mVMOrFwdSetError:I

    .line 532
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiVoicemailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiVoicemailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MiuiVoicemailSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 898
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 461
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 463
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
