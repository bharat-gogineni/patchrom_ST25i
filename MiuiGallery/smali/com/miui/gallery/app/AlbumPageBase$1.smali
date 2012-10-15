.class Lcom/miui/gallery/app/AlbumPageBase$1;
.super Lcom/miui/gallery/ui/GLView;
.source "AlbumPageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 93
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$000(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 100
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$100(Lcom/miui/gallery/app/AlbumPageBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$200(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/DetailsHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v2, p2, v1, p4, p5}, Lcom/miui/gallery/ui/DetailsHelper;->layout(IIII)V

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    .line 108
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$400(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/AlbumViewBase;

    move-result-object v1

    iget v2, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->titleViewHeight:I

    invoke-virtual {v1, p2, v2, p4, p5}, Lcom/miui/gallery/ui/AlbumViewBase;->layout(IIII)V

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mInselectionMode:Z
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$500(Lcom/miui/gallery/app/AlbumPageBase;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    iget-boolean v1, v1, Lcom/miui/gallery/app/AlbumPageBase;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumPageBase;->access$400(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/AlbumViewBase;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/app/AlbumPageBase;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->mMatrix:[F

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mUserDistance:F
    invoke-static {v4}, Lcom/miui/gallery/app/AlbumPageBase;->access$600(Lcom/miui/gallery/app/AlbumPageBase;)F

    move-result v4

    neg-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    iget v2, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->titleViewHeight:I

    invoke-virtual {v1, v5, v2}, Lcom/miui/gallery/ui/PositionRepository;->setOffset(II)V

    .line 122
    return-void

    .line 103
    .end local v0           #config:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$400(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/AlbumViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumPageBase;->access$300(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/GridDrawer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    goto :goto_0
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 126
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 128
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 129
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 130
    return-void
.end method
