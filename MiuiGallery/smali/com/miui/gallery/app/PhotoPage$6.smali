.class Lcom/miui/gallery/app/PhotoPage$6;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/DataManager;->delete(Lcom/miui/gallery/data/Path;Landroid/app/Activity;)V

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$6;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->notifyDirty()V

    .line 447
    :cond_0
    return-void
.end method
