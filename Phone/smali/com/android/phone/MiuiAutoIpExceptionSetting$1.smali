.class Lcom/android/phone/MiuiAutoIpExceptionSetting$1;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "MiuiAutoIpExceptionSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiAutoIpExceptionSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiAutoIpExceptionSetting;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const v7, 0x7f0c0375

    .line 89
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$000(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 92
    .local v0, checkedIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 93
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    const v3, 0x7f0c0293

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;-><init>(Lcom/android/phone/MiuiAutoIpExceptionSetting$1;[J)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x60b0096
        :pswitch_0
    .end packed-switch
.end method
