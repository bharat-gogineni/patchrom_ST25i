.class Lcom/android/mms/ui/SlideEditorActivity$11;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 11
    .parameter "part"
    .parameter "append"

    .prologue
    const/4 v9, 0x0

    const v10, 0x7f0a004e

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 718
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 719
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v10, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 750
    :goto_0
    return-void

    .line 726
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 727
    .local v2, messageId:J
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 728
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v5, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 729
    .local v4, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 731
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v7, 0x7f0a006a

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$900(Lcom/android/mms/ui/SlideEditorActivity;I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 732
    .end local v2           #messageId:J
    .end local v4           #newUri:Landroid/net/Uri;
    .end local v5           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v1

    .line 733
    .local v1, e:Lcom/google/android/mms/MmsException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v7, "add picture failed"

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 734
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v10, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 737
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    .line 738
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0a004a

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0a004b

    iget-object v10, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v1

    .line 742
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0a004f

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0a0050

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v1

    .line 746
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0a004c

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$11;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v10, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$700(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
