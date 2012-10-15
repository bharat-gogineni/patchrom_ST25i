.class Lcom/miui/gallery/app/PhotoPage$1;
.super Lcom/miui/gallery/ui/GLView;
.source "PhotoPage.java"


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
    .line 173
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$1;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$1;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/miui/gallery/ui/PhotoView;->layout(IIII)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$1;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/miui/gallery/ui/PositionRepository;->setOffset(II)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$1;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$000(Lcom/miui/gallery/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$1;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$100(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/ui/DetailsHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$1;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {v1, p2, v0, p4, p5}, Lcom/miui/gallery/ui/DetailsHelper;->layout(IIII)V

    .line 189
    :cond_0
    return-void
.end method

.method protected renderBackground(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 177
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->clearBuffer()V

    .line 178
    return-void
.end method
