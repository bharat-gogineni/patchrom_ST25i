.class public Lcom/android/phone/MiuiGsmUmtsCallForwardOptions;
.super Lcom/android/phone/GsmUmtsCallForwardOptions;
.source "MiuiGsmUmtsCallForwardOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 16
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 17
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
