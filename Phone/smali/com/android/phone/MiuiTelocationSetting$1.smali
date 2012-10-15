.class Lcom/android/phone/MiuiTelocationSetting$1;
.super Ljava/lang/Object;
.source "MiuiTelocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiTelocationSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiTelocationSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiTelocationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/MiuiTelocationSetting$1;->this$0:Lcom/android/phone/MiuiTelocationSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting$1;->this$0:Lcom/android/phone/MiuiTelocationSetting;

    iget-object v1, p0, Lcom/android/phone/MiuiTelocationSetting$1;->this$0:Lcom/android/phone/MiuiTelocationSetting;

    #getter for: Lcom/android/phone/MiuiTelocationSetting;->mTextCountryCode:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/MiuiTelocationSetting;->access$000(Lcom/android/phone/MiuiTelocationSetting;)Landroid/preference/EditTextPreference;

    move-result-object v1

    #calls: Lcom/android/phone/MiuiTelocationSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiTelocationSetting;->access$100(Lcom/android/phone/MiuiTelocationSetting;Landroid/preference/Preference;)V

    .line 88
    return-void
.end method
