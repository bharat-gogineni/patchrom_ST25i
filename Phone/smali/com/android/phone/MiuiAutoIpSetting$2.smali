.class Lcom/android/phone/MiuiAutoIpSetting$2;
.super Ljava/lang/Object;
.source "MiuiAutoIpSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiAutoIpSetting;->alertToInputCurrentAreaCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiAutoIpSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiAutoIpSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/MiuiAutoIpSetting$2;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting$2;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    iget-object v1, p0, Lcom/android/phone/MiuiAutoIpSetting$2;->this$0:Lcom/android/phone/MiuiAutoIpSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/MiuiAutoIpSetting;->access$200(Lcom/android/phone/MiuiAutoIpSetting;)Landroid/preference/EditTextPreference;

    move-result-object v1

    #calls: Lcom/android/phone/MiuiAutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiAutoIpSetting;->access$300(Lcom/android/phone/MiuiAutoIpSetting;Landroid/preference/Preference;)V

    .line 197
    return-void
.end method
