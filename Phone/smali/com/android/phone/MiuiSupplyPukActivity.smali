.class public Lcom/android/phone/MiuiSupplyPukActivity;
.super Landroid/app/Activity;
.source "MiuiSupplyPukActivity.java"

# interfaces
.implements Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;


# instance fields
.field mDialog:Lcom/android/phone/MiuiEditPinDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDialogClose(Lcom/android/phone/MiuiEditPinDialog;Z)V
    .locals 4
    .parameter "dialog"
    .parameter "cancel"

    .prologue
    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/MiuiSupplyPukActivity;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    .line 41
    if-nez p2, :cond_0

    .line 42
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 43
    .local v0, app:Lcom/android/phone/PhoneApp;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x7f0c0045

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 47
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 48
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 59
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiSupplyPukActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/phone/MiuiSupplyPukActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 19
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 32
    iget-object v0, p0, Lcom/android/phone/MiuiSupplyPukActivity;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiSupplyPukActivity;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss()V

    .line 35
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog;

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/phone/MiuiEditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiEditPinDialog$Mode;Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSupplyPukActivity;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiSupplyPukActivity;->mDialog:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    .line 27
    return-void
.end method
