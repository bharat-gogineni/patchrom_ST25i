.class Lcom/android/mms/ui/AttachmentView$3$1;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentView$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/AttachmentView$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentView$3;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentView$3$1;->this$1:Lcom/android/mms/ui/AttachmentView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$3$1;->this$1:Lcom/android/mms/ui/AttachmentView$3;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentView$3;->this$0:Lcom/android/mms/ui/AttachmentView;

    #getter for: Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentView;->access$100(Lcom/android/mms/ui/AttachmentView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$3$1;->this$1:Lcom/android/mms/ui/AttachmentView$3;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentView$3;->this$0:Lcom/android/mms/ui/AttachmentView;

    #getter for: Lcom/android/mms/ui/AttachmentView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentView;->access$100(Lcom/android/mms/ui/AttachmentView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$3$1;->this$1:Lcom/android/mms/ui/AttachmentView$3;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentView$3;->this$0:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentView;->showPopup()V

    .line 282
    :cond_0
    return-void
.end method
