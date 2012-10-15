.class public abstract Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;
.super Lcom/miui/gallery/app/AbstractGalleryActivity;
.source "AbstractGalleryActivityWithBar.java"


# instance fields
.field private mActionBar:Lcom/miui/gallery/app/GalleryActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->mActionBar:Lcom/miui/gallery/app/GalleryActionBar;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 44
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->requestFeatures()V

    .line 18
    new-instance v0, Lcom/miui/gallery/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/GalleryActionBar;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->mActionBar:Lcom/miui/gallery/app/GalleryActionBar;

    .line 19
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 32
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 36
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected abstract requestFeatures()V
.end method
