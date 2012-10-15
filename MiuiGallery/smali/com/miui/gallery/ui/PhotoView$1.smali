.class Lcom/miui/gallery/ui/PhotoView$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoView;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #calls: Lcom/miui/gallery/ui/PhotoView;->onTransitionComplete()V
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$000(Lcom/miui/gallery/ui/PhotoView;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$100(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->access$202(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$300(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/ProgressSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProgressSpinner;->startAnimation()V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView;->access$102(Lcom/miui/gallery/ui/PhotoView;I)I

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinnerThumbnail:Lcom/miui/gallery/ui/ProgressSpinner;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/ProgressSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProgressSpinner;->startAnimation()V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView;->access$502(Lcom/miui/gallery/ui/PhotoView;Z)Z

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$1;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
