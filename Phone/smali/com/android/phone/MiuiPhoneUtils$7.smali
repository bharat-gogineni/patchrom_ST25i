.class final Lcom/android/phone/MiuiPhoneUtils$7;
.super Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPhoneUtils;->getOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 714
    iput-object p2, p0, Lcom/android/phone/MiuiPhoneUtils$7;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public retry()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneUtils$7;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;->obtainMessage(Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 718
    return-void
.end method
