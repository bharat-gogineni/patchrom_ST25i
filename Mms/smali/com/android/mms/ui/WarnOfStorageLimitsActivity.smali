.class public Lcom/android/mms/ui/WarnOfStorageLimitsActivity;
.super Landroid/app/Activity;
.source "WarnOfStorageLimitsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->finish()V

    .line 91
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->finish()V

    .line 99
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->finish()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const v1, 0x1030073

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->setTheme(I)V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 62
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 66
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0a010e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 67
    const v1, 0x7f0a010f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 68
    const v1, 0x7f0a0110

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 69
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->setupAlert()V

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 111
    return-void
.end method
