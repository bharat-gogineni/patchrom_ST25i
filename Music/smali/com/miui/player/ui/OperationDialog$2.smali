.class Lcom/miui/player/ui/OperationDialog$2;
.super Ljava/lang/Object;
.source "OperationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 89
    iput-object p1, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 96
    .local v0, confirm:Z
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v4, v4, Lcom/miui/player/ui/OperationDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v4, v4, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v4, v1}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->isConfirmable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v4, v4, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v4, v1}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->execute(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 100
    const/4 v0, 0x1

    .line 104
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v4, v4, Lcom/miui/player/ui/OperationDialog;->mListener:Lcom/miui/player/ui/DialogCallback;

    if-eqz v4, :cond_3

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v2, result:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v4, v4, Lcom/miui/player/ui/OperationDialog;->mCallbackIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 110
    const-string v4, "callback"

    iget-object v5, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v5, v5, Lcom/miui/player/ui/OperationDialog;->mCallbackIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    :cond_2
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget-object v4, v4, Lcom/miui/player/ui/OperationDialog;->mListener:Lcom/miui/player/ui/DialogCallback;

    iget-object v5, p0, Lcom/miui/player/ui/OperationDialog$2;->this$0:Lcom/miui/player/ui/OperationDialog;

    iget v5, v5, Lcom/miui/player/ui/OperationDialog;->mRequestCode:I

    invoke-interface {v4, v5, v0, v2}, Lcom/miui/player/ui/DialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 114
    .end local v2           #result:Landroid/content/Intent;
    :cond_3
    return-void
.end method
