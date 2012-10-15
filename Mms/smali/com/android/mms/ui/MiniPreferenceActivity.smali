.class public Lcom/android/mms/ui/MiniPreferenceActivity;
.super Landroid/app/Activity;
.source "MiniPreferenceActivity.java"


# static fields
.field public static DISABLE_NOTIFICATIONS_INTENT:Ljava/lang/String;


# instance fields
.field private mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.android.mms.intent.action.MESSAGING_APP_NOTIFICATIONS"

    sput-object v0, Lcom/android/mms/ui/MiniPreferenceActivity;->DISABLE_NOTIFICATIONS_INTENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/mms/ui/MiniPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MiniPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MiniPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity;->mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 32
    .local v2, notificationsEnabled:Z
    if-nez v2, :cond_0

    .line 33
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MiniPreferenceActivity;->setResult(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/mms/ui/MiniPreferenceActivity;->finish()V

    .line 37
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/mms/ui/MiniPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0077

    iget-object v5, p0, Lcom/android/mms/ui/MiniPreferenceActivity;->mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0078

    iget-object v5, p0, Lcom/android/mms/ui/MiniPreferenceActivity;->mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 45
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/mms/ui/MiniPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MiniPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MiniPreferenceActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    return-void
.end method
