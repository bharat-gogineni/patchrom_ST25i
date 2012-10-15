.class Lcom/android/mms/ui/MessageEditableActivityBase$16;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->onAttachmentError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iput p2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    iget v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->val$error:I

    const v2, 0x7f0a00e2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    .line 854
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onMessageSent()V

    .line 855
    return-void
.end method
