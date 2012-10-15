.class Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowClickListener"
.end annotation


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 0
    .parameter
    .parameter "accessPoint"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/16 v6, 0xc8

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 191
    return-void
.end method
