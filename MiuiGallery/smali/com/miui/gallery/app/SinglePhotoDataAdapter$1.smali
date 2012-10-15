.class Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/SinglePhotoDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SinglePhotoDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z
    invoke-static {v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$000(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;

    #calls: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$100(Lcom/miui/gallery/app/SinglePhotoDataAdapter;Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V

    .line 86
    :goto_1
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/util/Future;

    #calls: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/miui/gallery/util/Future;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$200(Lcom/miui/gallery/app/SinglePhotoDataAdapter;Lcom/miui/gallery/util/Future;)V

    goto :goto_1
.end method
