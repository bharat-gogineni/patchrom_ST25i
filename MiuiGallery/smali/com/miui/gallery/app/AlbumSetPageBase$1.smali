.class Lcom/miui/gallery/app/AlbumSetPageBase$1;
.super Lcom/miui/gallery/ui/GLView;
.source "AlbumSetPageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->mMatrix:[F

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

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$000(Lcom/miui/gallery/app/AlbumSetPageBase;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v0, v7, v7, v2, v3}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mEyePosition:Lcom/miui/gallery/app/EyePosition;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$100(Lcom/miui/gallery/app/AlbumSetPageBase;)Lcom/miui/gallery/app/EyePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->resetPosition()V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    move-result-object v1

    .line 86
    .local v1, config:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetPageBase;->getTitleViewHeight(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;)I

    move-result v6

    .line 87
    .local v6, titleViewHeight:I
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0, p2, v6, p4, p5}, Lcom/miui/gallery/ui/AlbumSetViewBase;->layout(IIII)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-boolean v0, v0, Lcom/miui/gallery/app/AlbumSetPageBase;->mInselectionMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-boolean v0, v0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetAlbum:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mGetContent:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$200(Lcom/miui/gallery/app/AlbumSetPageBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-object v2, v2, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/app/AlbumSetPageBase;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/app/AlbumSetPageBase;->onRootPaneLayout(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;IIII)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/miui/gallery/ui/PositionRepository;->setOffset(II)V

    .line 98
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 102
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mX:F
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$300(Lcom/miui/gallery/app/AlbumSetPageBase;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mY:F
    invoke-static {v3}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$400(Lcom/miui/gallery/app/AlbumSetPageBase;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mZ:F
    invoke-static {v3}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$500(Lcom/miui/gallery/app/AlbumSetPageBase;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 106
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 107
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 108
    return-void
.end method
