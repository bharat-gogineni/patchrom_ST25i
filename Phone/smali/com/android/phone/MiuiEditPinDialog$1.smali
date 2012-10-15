.class Lcom/android/phone/MiuiEditPinDialog$1;
.super Ljava/lang/Object;
.source "MiuiEditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiEditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiEditPinDialog$Mode;Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditPinDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog$1;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog$1;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog;->access$000(Lcom/android/phone/MiuiEditPinDialog;)Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog$1;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog;->access$000(Lcom/android/phone/MiuiEditPinDialog;)Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$1;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/MiuiEditPinDialog;Z)V

    .line 92
    :cond_0
    return-void
.end method
