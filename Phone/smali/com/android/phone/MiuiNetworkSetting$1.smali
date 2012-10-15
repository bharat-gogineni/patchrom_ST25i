.class Lcom/android/phone/MiuiNetworkSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiNetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiNetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiNetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/phone/MiuiNetworkSetting$1;->this$0:Lcom/android/phone/MiuiNetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 353
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting$1;->this$0:Lcom/android/phone/MiuiNetworkSetting;

    iget-object v2, v2, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 356
    .local v0, ss:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 357
    .local v1, state:I
    if-nez v1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/phone/MiuiNetworkSetting$1;->this$0:Lcom/android/phone/MiuiNetworkSetting;

    iget-object v2, v2, Lcom/android/phone/MiuiNetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/MiuiNetworkSetting$1;->this$0:Lcom/android/phone/MiuiNetworkSetting;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/MiuiNetworkSetting;->getAutoSelectionSummary(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 362
    .end local v0           #ss:Landroid/telephony/ServiceState;
    .end local v1           #state:I
    :cond_0
    return-void
.end method
