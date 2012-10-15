.class Lcom/android/phone/MiuiInCallTouchUi$Handler;
.super Landroid/os/Handler;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private mParentHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/MiuiInCallTouchUi;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiInCallTouchUi;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "parentHandler"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi$Handler;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/android/phone/MiuiInCallTouchUi$Handler;->mParentHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$Handler;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$Handler;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$Handler;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
