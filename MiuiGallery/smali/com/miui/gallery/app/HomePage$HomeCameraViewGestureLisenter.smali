.class Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;
.super Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;
.source "HomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeCameraViewGestureLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    .line 361
    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;
    invoke-static {p1}, Lcom/miui/gallery/app/HomePage;->access$500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeCameraView;

    move-result-object v0

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {p1}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/AbstractHomeSlotView;Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 362
    return-void
.end method


# virtual methods
.method public getTargetMediaObject(I)Lcom/miui/gallery/data/MediaObject;
    .locals 1
    .parameter "index"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->getMediaItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public tapOnShowAll(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1300(Lcom/miui/gallery/app/HomePage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->startAlbumPage(Lcom/miui/gallery/data/MediaSet;I)V

    goto :goto_0
.end method

.method public tapOnTargetMediaObject(Lcom/miui/gallery/data/MediaObject;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1300(Lcom/miui/gallery/app/HomePage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 370
    :cond_0
    check-cast p1, Lcom/miui/gallery/data/MediaItem;

    .line 371
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetContent:Z
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1100(Lcom/miui/gallery/app/HomePage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1}, Lcom/miui/gallery/app/HomePage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->isImage()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->processGetContent(Landroid/app/Activity;Landroid/os/Bundle;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 381
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1}, Lcom/miui/gallery/app/HomePage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 382
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 383
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->savePositions(I[I)V
    invoke-static {v2, p2, v1}, Lcom/miui/gallery/app/HomePage;->access$1000(Lcom/miui/gallery/app/HomePage;I[I)V

    .line 384
    const-string v1, "index-hint"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const-string v1, "media-set-path"

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$1600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "media-item-path"

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v1, v1, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
