.class Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;
.super Ljava/lang/Object;
.source "SingleChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/SingleChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleChoiceDialogCheckedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/SingleChoiceDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/SingleChoiceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    iput p2, v0, Lcom/miui/player/ui/SingleChoiceDialog;->mWhich:I

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    iget-object v0, v0, Lcom/miui/player/ui/SingleChoiceDialog;->mCommond:Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    iget-object v0, v0, Lcom/miui/player/ui/SingleChoiceDialog;->mCommond:Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

    iget-object v1, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    iget-object v1, v1, Lcom/miui/player/ui/SingleChoiceDialog;->mItems:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    iget v2, v2, Lcom/miui/player/ui/SingleChoiceDialog;->mWhich:I

    invoke-interface {v0, v1, v2}, Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;->excute([Ljava/lang/CharSequence;I)V

    .line 42
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    return-void
.end method
