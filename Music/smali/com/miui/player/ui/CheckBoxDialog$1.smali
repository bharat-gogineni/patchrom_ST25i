.class Lcom/miui/player/ui/CheckBoxDialog$1;
.super Ljava/lang/Object;
.source "CheckBoxDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/CheckBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/CheckBoxDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/CheckBoxDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, confirm:Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    iget-object v1, v1, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    const-string v2, "check_status"

    iget-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    iget-object v3, v3, Lcom/miui/player/ui/CheckBoxDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const/4 v0, 0x1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    iget-object v1, v1, Lcom/miui/player/ui/CheckBoxDialog;->mListener:Lcom/miui/player/ui/DialogCallback;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    iget-object v1, v1, Lcom/miui/player/ui/CheckBoxDialog;->mListener:Lcom/miui/player/ui/DialogCallback;

    iget-object v2, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    iget v2, v2, Lcom/miui/player/ui/CheckBoxDialog;->mRequestCode:I

    iget-object v3, p0, Lcom/miui/player/ui/CheckBoxDialog$1;->this$0:Lcom/miui/player/ui/CheckBoxDialog;

    iget-object v3, v3, Lcom/miui/player/ui/CheckBoxDialog;->mData:Landroid/content/Intent;

    invoke-interface {v1, v2, v0, v3}, Lcom/miui/player/ui/DialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 72
    :cond_1
    return-void
.end method
