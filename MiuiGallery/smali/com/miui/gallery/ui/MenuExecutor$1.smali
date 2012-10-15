.class Lcom/miui/gallery/ui/MenuExecutor$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/MenuExecutor;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/MenuExecutor;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/ui/MenuExecutor$1;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 102
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor$1;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #calls: Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V
    invoke-static {v1}, Lcom/miui/gallery/ui/MenuExecutor;->access$000(Lcom/miui/gallery/ui/MenuExecutor;)V

    .line 105
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    .line 107
    .local v0, listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 109
    .end local v0           #listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor$1;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #getter for: Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;
    invoke-static {v1}, Lcom/miui/gallery/ui/MenuExecutor;->access$100(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor$1;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #getter for: Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/gallery/ui/MenuExecutor;->access$200(Lcom/miui/gallery/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor$1;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #getter for: Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/gallery/ui/MenuExecutor;->access$200(Lcom/miui/gallery/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 114
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    .line 116
    .restart local v0       #listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 121
    .end local v0           #listener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor$1;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #getter for: Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v1}, Lcom/miui/gallery/ui/MenuExecutor;->access$300(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
