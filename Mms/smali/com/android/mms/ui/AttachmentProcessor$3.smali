.class Lcom/android/mms/ui/AttachmentProcessor$3;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentProcessor;->loadSmileyGridView(Lcom/android/mms/ui/StaticGridView;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;

.field final synthetic val$smileyString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$3;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iput-object p2, p0, Lcom/android/mms/ui/AttachmentProcessor$3;->val$smileyString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor$3;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    move-result-object v1

    .line 420
    .local v1, focus:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 421
    .local v0, cursorPos:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentProcessor$3;->val$smileyString:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 422
    return-void
.end method
