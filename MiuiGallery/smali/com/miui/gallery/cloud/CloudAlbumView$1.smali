.class Lcom/miui/gallery/cloud/CloudAlbumView$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "CloudAlbumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/CloudAlbumView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/CloudAlbumView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/CloudAlbumView;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudAlbumView$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumView;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumView;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumView$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumView;

    #getter for: Lcom/miui/gallery/cloud/CloudAlbumView;->mLastStart:I
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudAlbumView;->access$000(Lcom/miui/gallery/cloud/CloudAlbumView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumView;

    #getter for: Lcom/miui/gallery/cloud/CloudAlbumView;->mLastEnd:I
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudAlbumView;->access$100(Lcom/miui/gallery/cloud/CloudAlbumView;)I

    move-result v2

    #calls: Lcom/miui/gallery/cloud/CloudAlbumView;->pushDownloadFileName(II)V
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/CloudAlbumView;->access$200(Lcom/miui/gallery/cloud/CloudAlbumView;II)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
