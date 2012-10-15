.class Lcom/android/phone/MiuiCallFeaturesSetting$1;
.super Ljava/lang/Object;
.source "MiuiCallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiCallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/MiuiCallFeaturesSetting$1;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting$1;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    #getter for: Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->access$000(Lcom/android/phone/MiuiCallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    return-void
.end method
