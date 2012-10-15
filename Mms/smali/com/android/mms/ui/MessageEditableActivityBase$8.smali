.class Lcom/android/mms/ui/MessageEditableActivityBase$8;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendIntent(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$numberToImport:I

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iput p2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$showProgress:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 547
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$numberToImport:I

    if-ge v0, v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 549
    .local v1, uri:Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$mimeType:Ljava/lang/String;

    check-cast v1, Landroid/net/Uri;

    .end local v1           #uri:Landroid/os/Parcelable;
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 554
    return-void
.end method
