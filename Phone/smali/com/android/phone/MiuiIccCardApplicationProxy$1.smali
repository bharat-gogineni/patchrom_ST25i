.class final Lcom/android/phone/MiuiIccCardApplicationProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiIccCardApplicationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiIccCardApplicationProxy;->registerIccStatusChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$handler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$event:I

    iput-object p3, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$event:I

    iget-object v2, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    return-void
.end method
