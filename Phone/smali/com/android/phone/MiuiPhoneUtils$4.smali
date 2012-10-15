.class final Lcom/android/phone/MiuiPhoneUtils$4;
.super Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPhoneUtils;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commandInterfaceCFAction:I

.field final synthetic val$commandInterfaceCFReason:I

.field final synthetic val$dialingNumber:Ljava/lang/String;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$timerSeconds:I


# direct methods
.method constructor <init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;IILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p2, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$phone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$commandInterfaceCFReason:I

    iput p4, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$commandInterfaceCFAction:I

    iput-object p5, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$dialingNumber:Ljava/lang/String;

    iput p6, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$timerSeconds:I

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public retry()V
    .locals 6

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$commandInterfaceCFReason:I

    iget v2, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$commandInterfaceCFAction:I

    iget-object v3, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$dialingNumber:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/MiuiPhoneUtils$4;->val$timerSeconds:I

    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;->obtainMessage(Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 691
    return-void
.end method
