.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 111
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 7
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 135
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0800b6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 137
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0800b7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 146
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 147
    .local v2, isExtStorageEmulated:Z
    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0800b5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, externalOption:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0800b2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, externalAlsoErased:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v5, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    .end local v0           #externalAlsoErased:Landroid/view/View;
    .end local v1           #externalOption:Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    .line 171
    return-void

    .restart local v0       #externalAlsoErased:Landroid/view/View;
    .restart local v1       #externalOption:Landroid/view/View;
    :cond_1
    move v3, v4

    .line 159
    goto :goto_0

    .line 161
    .end local v0           #externalAlsoErased:Landroid/view/View;
    .end local v1           #externalOption:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/MasterClear$2;

    invoke-direct {v4, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 174
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 24

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800b3

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 180
    .local v8, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800b4

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 181
    .local v11, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 185
    .local v12, context:Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 186
    .local v20, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 187
    .local v7, accounts:[Landroid/accounts/Account;
    array-length v5, v7

    .line 188
    .local v5, N:I
    if-nez v5, :cond_0

    .line 189
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v21, "layout_inflater"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 197
    .local v18, inflater:Landroid/view/LayoutInflater;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 198
    .local v14, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v14

    .line 200
    .local v4, M:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v5, :cond_6

    .line 201
    aget-object v6, v7, v16

    .line 202
    .local v6, account:Landroid/accounts/Account;
    const/4 v13, 0x0

    .line 203
    .local v13, desc:Landroid/accounts/AuthenticatorDescription;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v4, :cond_1

    .line 204
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v14, v19

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 205
    aget-object v13, v14, v19

    .line 209
    :cond_1
    if-nez v13, :cond_3

    .line 210
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No descriptor for account name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 203
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 214
    :cond_3
    const/16 v17, 0x0

    .line 216
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 217
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 218
    .local v9, authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 224
    .end local v9           #authContext:Landroid/content/Context;
    :cond_4
    :goto_4
    const v21, 0x7f04003e

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 226
    .local v10, child:Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    if-eqz v17, :cond_5

    .line 228
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_5
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 220
    .end local v10           #child:Landroid/widget/TextView;
    :catch_0
    move-exception v15

    .line 221
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No icon for account type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 233
    .end local v6           #account:Landroid/accounts/Account;
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #j:I
    :cond_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b0310

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0311

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 99
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 100
    const-class v0, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 101
    const v0, 0x7f0b0313

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 102
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 240
    const v0, 0x7f04003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 242
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method
