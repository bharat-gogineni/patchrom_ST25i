.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Landroid/app/Fragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;


# instance fields
.field private mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

.field private mEnabledSubmit:Z

.field private mNetworkId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 45
    .local v6, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 48
    .local v7, bundle:Landroid/os/Bundle;
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 49
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v3, v6, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 50
    .local v3, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v0, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 51
    const v0, 0x7f0b065d

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v9, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, title:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v6, v8, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 53
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiConfigController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 59
    const v0, 0x7f0b01c4

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 67
    .local v2, id:I
    packed-switch v2, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 69
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0b01c4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b065a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 82
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 83
    .local v0, alertDialog:Landroid/app/Dialog;
    new-instance v3, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    const/4 v3, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSubmitStateChange(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    .line 97
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    if-eqz v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/MiuiWifiConfigController;->chosenNetworkSetupMethod()I

    move-result v2

    .line 99
    .local v2, type:I
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 100
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v4}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getWpsConfig()Landroid/net/wifi/WpsInfo;

    move-result-object v3

    .line 101
    .local v3, wpsInfo:Landroid/net/wifi/WpsInfo;
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 102
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v1, intent:Landroid/content/Intent;
    if-nez v2, :cond_2

    .line 104
    const-string v4, "config"

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v5}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 115
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #type:I
    .end local v3           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :cond_1
    :goto_1
    return-void

    .line 106
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #type:I
    .restart local v3       #wpsInfo:Landroid/net/wifi/WpsInfo;
    :cond_2
    const-string v4, "iswps"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v4, "config"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 113
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #type:I
    .end local v3           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method
