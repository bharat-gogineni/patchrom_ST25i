.class Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$1;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "AlbumSetSlidingWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$1;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    #calls: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->onLoadBitmapDone()V
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->access$000(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;)V

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
