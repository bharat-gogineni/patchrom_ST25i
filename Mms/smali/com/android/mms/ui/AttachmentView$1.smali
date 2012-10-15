.class Lcom/android/mms/ui/AttachmentView$1;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentView;->setPanelResid(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentView$1;->this$0:Lcom/android/mms/ui/AttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$1;->this$0:Lcom/android/mms/ui/AttachmentView;

    #getter for: Lcom/android/mms/ui/AttachmentView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentView;->access$000(Lcom/android/mms/ui/AttachmentView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$1;->this$0:Lcom/android/mms/ui/AttachmentView;

    #getter for: Lcom/android/mms/ui/AttachmentView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentView;->access$000(Lcom/android/mms/ui/AttachmentView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/AttachmentView$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AttachmentView$1$1;-><init>(Lcom/android/mms/ui/AttachmentView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
