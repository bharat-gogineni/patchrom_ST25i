.class Lcom/android/mms/ui/AttachmentView$3;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentView;
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
    .line 272
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentView$3;->this$0:Lcom/android/mms/ui/AttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$3;->this$0:Lcom/android/mms/ui/AttachmentView;

    #getter for: Lcom/android/mms/ui/AttachmentView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentView;->access$000(Lcom/android/mms/ui/AttachmentView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/AttachmentView$3$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AttachmentView$3$1;-><init>(Lcom/android/mms/ui/AttachmentView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method
