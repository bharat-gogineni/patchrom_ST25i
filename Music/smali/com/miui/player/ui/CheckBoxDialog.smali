.class public Lcom/miui/player/ui/CheckBoxDialog;
.super Ljava/lang/Object;
.source "CheckBoxDialog.java"


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

.field final mData:Landroid/content/Intent;

.field final mListener:Lcom/miui/player/ui/DialogCallback;

.field final mRequestCode:I

.field mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)V
    .locals 1
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/miui/player/ui/CheckBoxDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/CheckBoxDialog$1;-><init>(Lcom/miui/player/ui/CheckBoxDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/CheckBoxDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 30
    iput-object p1, p0, Lcom/miui/player/ui/CheckBoxDialog;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/miui/player/ui/CheckBoxDialog;->mListener:Lcom/miui/player/ui/DialogCallback;

    .line 32
    iput p3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mRequestCode:I

    .line 33
    iput-object p4, p0, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    .line 34
    return-void
.end method


# virtual methods
.method public show()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 37
    iget-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 38
    .local v2, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030014

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, entryView:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/player/ui/CheckBoxDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f090001

    iget-object v6, p0, Lcom/miui/player/ui/CheckBoxDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x7f09

    iget-object v6, p0, Lcom/miui/player/ui/CheckBoxDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 47
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 48
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 50
    const v3, 0x7f0c004c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 51
    iget-object v5, p0, Lcom/miui/player/ui/CheckBoxDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    const-string v6, "check_visible"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 52
    iget-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    const-string v6, "check_status"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    iget-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    const-string v5, "msg"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog;->mSaveButton:Landroid/widget/Button;

    .line 56
    return-void

    .line 51
    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method
