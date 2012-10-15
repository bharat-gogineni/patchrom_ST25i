.class public Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAccessControlFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mConfirmPurpose:I

.field private mEmergencyCall:Landroid/widget/Button;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 97
    return-void
.end method

.method private addHomeSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 191
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const-string v2, "[icon]"

    .line 193
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "[icon]"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 195
    .local v3, patternSize:I
    const/4 v4, 0x0

    .line 196
    .local v4, start:I
    const-string v5, "[icon]"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x6020120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int v6, v4, v3

    const/16 v7, 0x11

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 203
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private handleConfirmPurpose()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    if-ne v0, v3, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v3}, Lmiui/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 135
    :cond_3
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected accessLockPattern(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->handleConfirmPurpose()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;)V

    .line 228
    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Lmiui/security/MiuiLockPatternUtils;->checkAccessControl(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected getDefaultUnlockString()I
    .locals 1

    .prologue
    .line 208
    const v0, 0x7f0b061c

    return v0
.end method

.method protected getInStealthMode()Z
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ac_visiblepattern"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getTactileFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ac_unlock_tactile_feedback"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 103
    return-void
.end method

.method protected onCreateNoSaveState()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mLockPatternUtils:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->savedAccessControlExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/net/FirewallManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->handleConfirmPurpose()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 152
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;-><init>(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const v9, 0x7f0b061d

    const v8, 0x7f0b061c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    if-eqz p1, :cond_2

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->parseIntent(Landroid/content/Intent;)V

    .line 158
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    .line 159
    const-string v4, "confirm_purpose"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, noBack:Z
    iget-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 162
    const/4 v2, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 164
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 166
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_0
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 172
    .local v1, name:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v9, v5}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 182
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v1           #name:Ljava/lang/CharSequence;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 183
    const v4, 0x7f0b061e

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->addHomeSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/ConfirmAccessControl;

    #setter for: Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z
    invoke-static {v4, v2}, Lcom/android/settings/ConfirmAccessControl;->access$002(Lcom/android/settings/ConfirmAccessControl;Z)Z

    .line 188
    .end local v2           #noBack:Z
    :cond_2
    return-void

    .line 177
    .restart local v2       #noBack:Z
    :cond_3
    iget v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 178
    const v4, 0x60c0171

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v9, v5}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mHeaderText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 167
    .end local v1           #name:Ljava/lang/String;
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
