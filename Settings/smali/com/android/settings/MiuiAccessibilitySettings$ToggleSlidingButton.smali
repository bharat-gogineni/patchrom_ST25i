.class public Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;
.super Lmiui/widget/SlidingButton;
.source "MiuiAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSlidingButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 550
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;->mOnBeforeListener:Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;->mOnBeforeListener:Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-super {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 566
    invoke-super {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 567
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton;->mOnBeforeListener:Lcom/android/settings/MiuiAccessibilitySettings$ToggleSlidingButton$OnBeforeCheckedChangeListener;

    .line 554
    return-void
.end method
