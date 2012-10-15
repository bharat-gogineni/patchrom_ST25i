.class Lcom/android/phone/MiuiEditFdnContactScreen$1;
.super Ljava/lang/Object;
.source "MiuiEditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 301
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0029

    new-instance v2, Lcom/android/phone/MiuiEditFdnContactScreen$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiEditFdnContactScreen$1$1;-><init>(Lcom/android/phone/MiuiEditFdnContactScreen$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #getter for: Lcom/android/phone/MiuiEditFdnContactScreen;->mAddContact:Z
    invoke-static {v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$100(Lcom/android/phone/MiuiEditFdnContactScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Insert:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    :goto_1
    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->performActions(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V
    invoke-static {v1, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$000(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Update:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    goto :goto_1

    .line 316
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->finish()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x7f070076
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
