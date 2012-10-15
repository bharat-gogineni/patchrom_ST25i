.class Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;
.super Ljava/lang/Object;
.source "MiuiAccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSlidingButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;Z)Z
    .locals 4
    .parameter "toggleSlidingButton"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 785
    if-eqz p2, :cond_1

    .line 786
    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->access$800(Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    invoke-virtual {p1, v1}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;->setCheckedInternal(Z)V

    .line 788
    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 789
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->showDialog(I)V

    .line 802
    :goto_0
    return v0

    .line 792
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->access$900(Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 802
    goto :goto_0

    .line 794
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->access$1000(Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 795
    invoke-virtual {p1, v0}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;->setCheckedInternal(Z)V

    .line 796
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 797
    iget-object v1, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;

    #getter for: Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->access$900(Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/MiuiAccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method
