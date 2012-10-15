.class public Lcom/android/phone/sip/MiuiSipEditor;
.super Lcom/android/phone/sip/SipEditor;
.source "MiuiSipEditor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/android/phone/sip/SipEditor;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 12
    return-void
.end method
