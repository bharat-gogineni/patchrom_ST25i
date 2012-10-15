.class Lcom/miui/gallery/app/StorageExplorerPageBase;
.super Lcom/miui/gallery/app/ActivityState;
.source "StorageExplorerPage.java"


# instance fields
.field protected mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field private mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 83
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPageBase$1;-><init>(Lcom/miui/gallery/app/StorageExplorerPageBase;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/StorageExplorerPageBase;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const v2, 0x7f020082

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 108
    new-instance v0, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 112
    const v0, 0x7f0b0033

    const v1, 0x7f040014

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPageBase;->inflatePageView(II)V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 120
    return-void
.end method
