.class Lcom/android/mms/ui/AttachmentProcessor$2;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentTypeScreens(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;

.field final synthetic val$listIndex:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$2;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iput p2, p0, Lcom/android/mms/ui/AttachmentProcessor$2;->val$listIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$2;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iget v1, p0, Lcom/android/mms/ui/AttachmentProcessor$2;->val$listIndex:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    .line 314
    return-void
.end method
