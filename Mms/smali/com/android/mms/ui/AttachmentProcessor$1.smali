.class Lcom/android/mms/ui/AttachmentProcessor$1;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentProcessor;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$1;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iput p2, p0, Lcom/android/mms/ui/AttachmentProcessor$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$1;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iget v1, p0, Lcom/android/mms/ui/AttachmentProcessor$1;->val$index:I

    #calls: Lcom/android/mms/ui/AttachmentProcessor;->selectSmileyTab(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->access$000(Lcom/android/mms/ui/AttachmentProcessor;I)V

    .line 118
    return-void
.end method
