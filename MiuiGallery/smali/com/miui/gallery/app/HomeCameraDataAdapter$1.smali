.class Lcom/miui/gallery/app/HomeCameraDataAdapter$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "HomeCameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/LoadingListener;->onLoadingFinished()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
