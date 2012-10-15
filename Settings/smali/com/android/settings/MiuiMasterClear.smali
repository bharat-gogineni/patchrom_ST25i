.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiMasterClear$UninstallTask;
    }
.end annotation


# instance fields
.field private mEraseApplication:Landroid/preference/CheckBoxPreference;

.field private mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

.field private mFactoryResetDialog:Landroid/app/Dialog;

.field private mIsClearAll:Z

.field private mMsgText:Landroid/widget/TextView;

.field private mWhitePkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->createFactoryResetDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MiuiMasterClear;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mWhitePkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createFactoryResetDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 238
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x10300f1

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 240
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x603002e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 241
    .local v3, view:Landroid/view/View;
    const v4, 0x60b0021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mMsgText:Landroid/widget/TextView;

    .line 242
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mMsgText:Landroid/widget/TextView;

    const v5, 0x7f0b0698

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 243
    const v4, 0x60b0022

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    .local v1, animationView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 246
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 247
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 248
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 249
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x6020034

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 250
    iget-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 252
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 253
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 254
    new-instance v4, Lcom/android/settings/MiuiMasterClear$UninstallTask;

    invoke-direct {v4, p0}, Lcom/android/settings/MiuiMasterClear$UninstallTask;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/settings/MiuiMasterClear$UninstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method

.method private doFactoryReset()V
    .locals 4

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->mIsClearAll:Z

    if-eqz v1, :cond_2

    .line 259
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initWhitePkgSet()V
    .locals 10

    .prologue
    .line 135
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/settings/MiuiMasterClear;->mWhitePkgSet:Ljava/util/HashSet;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 137
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/media/preset_apps"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v7, presetAppDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    new-instance v8, Lcom/android/settings/MiuiMasterClear$1;

    invoke-direct {v8, p0}, Lcom/android/settings/MiuiMasterClear$1;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 145
    .local v2, flist:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 146
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 147
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 148
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 149
    iget-object v8, p0, Lcom/android/settings/MiuiMasterClear;->mWhitePkgSet:Ljava/util/HashSet;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #flist:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 269
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
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

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b0310

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0311

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lmiui/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0b0697

    .line 214
    .local v0, messageId:I
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b030d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0693

    new-instance v3, Lcom/android/settings/MiuiMasterClear$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiMasterClear$2;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void

    .line 206
    .end local v0           #messageId:I
    :cond_0
    const v0, 0x7f0b0695

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b0696

    .restart local v0       #messageId:I
    :goto_1
    goto :goto_0

    .end local v0           #messageId:I
    :cond_2
    const v0, 0x7f0b0694

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showFinalConfirmation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiMasterClear;->setHasOptionsMenu(Z)V

    .line 105
    const v2, 0x7f05002c

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiMasterClear;->addPreferencesFromResource(I)V

    .line 106
    const-string v2, "erase_application"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v2, "erase_external_storage"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v2, "erase_optional"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiMasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 110
    .local v1, optionalCategory:Landroid/preference/PreferenceCategory;
    sget-boolean v2, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iput-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    .line 117
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 118
    .local v0, isExtStorageEmulated:Z
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->isExtStorageEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iput-object v4, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroid/preference/CheckBoxPreference;

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "clear_all"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/MiuiMasterClear;->mIsClearAll:Z

    .line 125
    iget-boolean v2, p0, Lcom/android/settings/MiuiMasterClear;->mIsClearAll:Z

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 127
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->createFactoryResetDialog()V

    .line 132
    :cond_2
    :goto_1
    return-void

    .line 114
    .end local v0           #isExtStorageEmulated:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->initWhitePkgSet()V

    goto :goto_0

    .line 129
    .restart local v0       #isExtStorageEmulated:Z
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 166
    const/4 v1, 0x1

    const v2, 0x7f0b030d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 167
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 173
    .local v0, itemId:I
    if-ne v0, v1, :cond_1

    .line 179
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/settings/MiuiMasterClear;->runKeyguardConfirmation(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showFinalConfirmation()V

    .line 184
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 160
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040042

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, header:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 162
    return-void
.end method
