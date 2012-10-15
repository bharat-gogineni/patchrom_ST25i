.class Lcom/miui/gallery/bigscreen/DeviceBarControl$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "DeviceBarControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/bigscreen/DeviceBarControl;-><init>(Lcom/miui/gallery/app/GalleryActivity;Landroid/view/View;Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;


# direct methods
.method constructor <init>(Lcom/miui/gallery/bigscreen/DeviceBarControl;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x2

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 93
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 55
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->switch2Local(I)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->toggleActive()V

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$200(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->SEND_ANI_INTERVAL:I
    invoke-static {v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$100(Lcom/miui/gallery/bigscreen/DeviceBarControl;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->setControlActive(Z)V

    goto :goto_0

    .line 75
    :pswitch_3
    const-string v1, "grab_device_bar_con"

    const-string v2, "show toast"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->switch2Local(I)V

    .line 78
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    #getter for: Lcom/miui/gallery/bigscreen/DeviceBarControl;->mListener:Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;
    invoke-static {v1}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$000(Lcom/miui/gallery/bigscreen/DeviceBarControl;)Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;

    move-result-object v1

    const-string v2, "timeout"

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_4
    const-string v1, "grab_device_bar_con"

    const-string v2, "do switch TV"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->access$300()Lcom/miui/gallery/bigscreen/ConnectControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/ConnectControl;->release()I

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, newSerName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarControl$1;->this$0:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->switch2TV(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
