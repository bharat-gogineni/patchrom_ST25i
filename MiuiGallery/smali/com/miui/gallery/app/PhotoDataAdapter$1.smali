.class Lcom/miui/gallery/app/PhotoDataAdapter$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/Path;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onLoadingFinished()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
