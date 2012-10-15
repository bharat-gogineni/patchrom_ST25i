.class Lcom/miui/player/ui/OperationDialog$1;
.super Ljava/lang/Object;
.source "OperationDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OperationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OperationDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OperationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/player/ui/OperationDialog$1;->this$0:Lcom/miui/player/ui/OperationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 86
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 74
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$1;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v1, v1, Lcom/miui/player/ui/OperationDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, current:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$1;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v1, v1, Lcom/miui/player/ui/OperationDialog;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$1;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v2, v2, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v2, v0}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->getConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$1;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v1, v1, Lcom/miui/player/ui/OperationDialog;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$1;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v2, v2, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v2, v0}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->isConfirmable(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    return-void
.end method
