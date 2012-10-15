.class Lcom/android/mms/ui/AttachmentProcessor$4;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iput p2, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f0a004e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 704
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v4}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 705
    .local v2, res:Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->val$mediaTypeStringId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, mediaType:Ljava/lang/String;
    iget v4, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->val$error:I

    packed-switch v4, :pswitch_data_0

    .line 726
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->val$error:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :pswitch_0
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v4}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 730
    :goto_0
    return-void

    .line 714
    .end local v1           #message:Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f0a004a

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, title:Ljava/lang/String;
    const v4, 0x7f0a004b

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 729
    .restart local v1       #message:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/AttachmentProcessor$4;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v4}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v4

    invoke-static {v4, v3, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f0a004c

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 719
    .restart local v3       #title:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 722
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f0a004f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 723
    .restart local v3       #title:Ljava/lang/String;
    const v4, 0x7f0a0050

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 724
    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 708
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
