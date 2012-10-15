.class Lcom/android/phone/MiuiEditPinDialog$2$1;
.super Ljava/lang/Object;
.source "MiuiEditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiEditPinDialog$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiEditPinDialog$2;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditPinDialog$2;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog$2$1;->this$1:Lcom/android/phone/MiuiEditPinDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog$2$1;->this$1:Lcom/android/phone/MiuiEditPinDialog$2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    return-void
.end method
