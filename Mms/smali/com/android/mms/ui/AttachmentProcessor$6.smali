.class Lcom/android/mms/ui/AttachmentProcessor$6;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$6;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 10
    .parameter "part"
    .parameter "append"

    .prologue
    const v9, 0x7f0a00e2

    const/4 v7, 0x1

    .line 833
    if-nez p1, :cond_0

    .line 834
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentProcessor$6;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v9}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    .line 856
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentProcessor$6;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v6}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 841
    .local v3, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentProcessor$6;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v6}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    .line 842
    .local v5, workingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v2

    .line 843
    .local v2, messageUri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 844
    const/4 v4, -0x1

    .line 855
    .local v4, result:I
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentProcessor$6;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v6, v4, v9}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    goto :goto_0

    .line 847
    .end local v4           #result:I
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v3, p1, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v0

    .line 848
    .local v0, dataUri:Landroid/net/Uri;
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v4

    .line 849
    .restart local v4       #result:I
    const-string v6, "AttachmentProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 850
    .end local v0           #dataUri:Landroid/net/Uri;
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 851
    .local v1, e:Lcom/google/android/mms/MmsException;
    const/4 v4, -0x1

    .restart local v4       #result:I
    goto :goto_1
.end method
