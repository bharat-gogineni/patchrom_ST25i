.class Lcom/android/settings/MiuiMasterClear$2;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->showFinalConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 221
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    #getter for: Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$000(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    #getter for: Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$000(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    #calls: Lcom/android/settings/MiuiMasterClear;->createFactoryResetDialog()V
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$100(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$2;->this$0:Lcom/android/settings/MiuiMasterClear;

    #calls: Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$200(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0
.end method
