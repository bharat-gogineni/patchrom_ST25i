.class public Lcom/android/settings/ConfirmLockPattern;
.super Lmiui/preference/BasePreferenceActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_BASE_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$1;,
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 82
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f0b0351

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/ConfirmLockPattern;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
