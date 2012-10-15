.class public Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;
.super Landroid/preference/DialogPreference;
.source "AccessibilityEnableScriptInjectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;
    }
.end annotation


# instance fields
.field private mInjectionAllowed:Z

.field private mSendClickAccessibilityEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .local v0, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010355

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 47
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setDialogIcon(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    .line 49
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 76
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 78
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    .line 84
    return-void
.end method

.method private setSystemSetting(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_script_injection"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0455

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0456

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isInjectionAllowed()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 67
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, summaryView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->isInjectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 91
    invoke-direct {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 114
    if-eqz p1, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_1
    check-cast p1, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    .line 138
    invoke-virtual {p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 139
    #getter for: Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->access$000(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 123
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 126
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 127
    .local v0, myState:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;
    iget-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    #setter for: Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {v0, v2}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->access$002(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;Z)Z

    move-object v1, v0

    .line 128
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 109
    return-void

    .line 106
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setInjectionAllowed(Z)V
    .locals 1
    .parameter "injectionAllowed"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->persistBoolean(Z)Z

    .line 55
    invoke-direct {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    .line 57
    :cond_0
    return-void
.end method
