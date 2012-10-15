.class Lcom/android/mms/transaction/TransactionService$6;
.super Ljava/lang/Object;
.source "TransactionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService;->enqueueSingleMessage(Lcom/android/mms/transaction/TransactionBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;

.field final synthetic val$transactionType:I


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$6;->this$0:Lcom/android/mms/transaction/TransactionService;

    iput p2, p0, Lcom/android/mms/transaction/TransactionService$6;->val$transactionType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 458
    iget v0, p0, Lcom/android/mms/transaction/TransactionService$6;->val$transactionType:I

    packed-switch v0, :pswitch_data_0

    .line 468
    :goto_0
    return-void

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$6;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f0a00e6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$6;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f0a00f0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
