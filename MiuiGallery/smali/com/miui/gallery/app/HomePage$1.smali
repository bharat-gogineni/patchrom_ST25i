.class Lcom/miui/gallery/app/HomePage$1;
.super Lcom/miui/gallery/ui/GLView;
.source "HomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 118
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$1;->mMatrix:[F

    return-void
.end method

.method private layoutViewByPlaceHolder(Lcom/miui/gallery/ui/GLView;I)V
    .locals 10
    .parameter "glView"
    .parameter "placeHolderViewId"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 122
    iget-object v6, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v6, p2}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, placeHolderView:Landroid/view/View;
    new-array v3, v7, [I

    .line 124
    .local v3, rootLocation:[I
    new-array v2, v7, [I

    .line 126
    .local v2, placeHolderlocation:[I
    iget-object v6, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    const v7, 0x7f0b0003

    invoke-virtual {v6, v7}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, pageLayoutRoot:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 129
    aget v6, v2, v8

    aget v7, v3, v8

    sub-int v4, v6, v7

    .line 130
    .local v4, x:I
    aget v6, v2, v9

    aget v7, v3, v9

    sub-int v5, v6, v7

    .line 132
    .local v5, y:I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/miui/gallery/ui/GLView;->layout(IIII)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 140
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v2

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v7, v7, v3, v4}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 141
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$100(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/EyePosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/app/EyePosition;->resetPosition()V

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mShowDetails:Z
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$200(Lcom/miui/gallery/app/HomePage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$300(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/DetailsHelper;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v3, p2, v2, p4, p5}, Lcom/miui/gallery/ui/DetailsHelper;->layout(IIII)V

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    const v3, 0x7f0b0056

    invoke-virtual {v2, v3}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, layoutCameraView:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeCameraView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/gallery/ui/HomeCameraView;->layout(IIII)V

    .line 159
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeRecentAlbumView;

    move-result-object v2

    const v3, 0x7f0b005f

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/app/HomePage$1;->layoutViewByPlaceHolder(Lcom/miui/gallery/ui/GLView;I)V

    .line 161
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gallery/app/Config$HomePageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;

    move-result-object v0

    .line 163
    .local v0, config:Lcom/miui/gallery/app/Config$HomePageConfig;
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v2

    iget v3, v0, Lcom/miui/gallery/app/Config$HomePageConfig;->titleViewHeight:I

    invoke-virtual {v2, v7, v3}, Lcom/miui/gallery/ui/PositionRepository;->setOffset(II)V

    .line 165
    return-void

    .line 146
    .end local v0           #config:Lcom/miui/gallery/app/Config$HomePageConfig;
    .end local v1           #layoutCameraView:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeCameraView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;
    invoke-static {v3}, Lcom/miui/gallery/app/HomePage;->access$400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/GridDrawer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/HomeCameraView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 147
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeRecentAlbumView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;
    invoke-static {v3}, Lcom/miui/gallery/app/HomePage;->access$400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/GridDrawer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    goto :goto_0
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 169
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/miui/gallery/app/HomePage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mX:F
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$700(Lcom/miui/gallery/app/HomePage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/gallery/app/HomePage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mY:F
    invoke-static {v3}, Lcom/miui/gallery/app/HomePage;->access$800(Lcom/miui/gallery/app/HomePage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage$1;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mZ:F
    invoke-static {v3}, Lcom/miui/gallery/app/HomePage;->access$900(Lcom/miui/gallery/app/HomePage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 173
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 174
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 175
    return-void
.end method
