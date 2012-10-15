.class Lcom/android/phone/MiuiAutoIpSetting$1;
.super Ljava/lang/Object;
.source "MiuiAutoIpSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiAutoIpSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiAutoIpSetting;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiAutoIpSetting;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    iput-object p2, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    invoke-virtual {v0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_areacode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MiuiAutoIpSetting;->access$000(Lcom/android/phone/MiuiAutoIpSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MiuiAutoIpSetting;->access$100(Lcom/android/phone/MiuiAutoIpSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_autoip"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/phone/MiuiAutoIpSetting;->access$200(Lcom/android/phone/MiuiAutoIpSetting;)Landroid/preference/EditTextPreference;

    move-result-object v0

    const v1, 0x7f0c02f4

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 116
    :cond_0
    return-void
.end method
