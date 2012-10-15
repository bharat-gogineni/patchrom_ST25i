.class Lcom/android/phone/MiuiSmscAddressSettingActivity$1;
.super Landroid/os/Handler;
.source "MiuiSmscAddressSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSmscAddressSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c037c

    const v5, 0x7f0c0029

    const v4, 0x1010355

    .line 56
    iget-object v2, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->isShowing:Z
    invoke-static {v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$000(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$100(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$100(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 65
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->removeMessages(I)V

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 97
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 98
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c031c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 105
    .local v1, dlg:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$3;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$3;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 67
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c031d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 72
    .restart local v1       #dlg:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$1;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 81
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c037b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 86
    .restart local v1       #dlg:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$2;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 92
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 113
    .end local v1           #dlg:Landroid/app/AlertDialog;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    iget-object v4, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/android/phone/MiuiSmscAddressSettingActivity;->smscToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$300(Lcom/android/phone/MiuiSmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$202(Lcom/android/phone/MiuiSmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$400(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$200(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const/16 v2, 0x3ec

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->removeMessages(I)V

    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 120
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 121
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c037a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 128
    .restart local v1       #dlg:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$4;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$4;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 136
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->finish()V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
