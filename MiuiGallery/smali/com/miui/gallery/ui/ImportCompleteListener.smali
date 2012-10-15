.class public Lcom/miui/gallery/ui/ImportCompleteListener;
.super Ljava/lang/Object;
.source "ImportCompleteListener.java"

# interfaces
.implements Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;


# instance fields
.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 0
    .parameter "galleryActivity"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/miui/gallery/ui/ImportCompleteListener;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 34
    return-void
.end method

.method private goToImportedAlbum()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/miui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/ImportCompleteListener;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onProgressComplete(I)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    const v0, 0x7f0d009e

    .line 40
    .local v0, message:I
    invoke-direct {p0}, Lcom/miui/gallery/ui/ImportCompleteListener;->goToImportedAlbum()V

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/ImportCompleteListener;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 45
    return-void

    .line 42
    .end local v0           #message:I
    :cond_0
    const v0, 0x7f0d009f

    .restart local v0       #message:I
    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 48
    return-void
.end method
