.class final Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;
.super Ljava/lang/Thread;
.source "MiuiEditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 553
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 554
    #calls: Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->access$800()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1$1;-><init>(Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;)V

    invoke-virtual {v1}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1$1;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 561
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 562
    return-void
.end method
