.class Lcom/miui/gallery/app/StorageExplorerPageBase$1;
.super Lcom/miui/gallery/ui/GLView;
.source "StorageExplorerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final USER_DISTANCE_METER:F

.field private final mMatrix:[F

.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/StorageExplorerPageBase;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->this$0:Lcom/miui/gallery/app/StorageExplorerPageBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->mMatrix:[F

    .line 85
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->USER_DISTANCE_METER:F

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

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->this$0:Lcom/miui/gallery/app/StorageExplorerPageBase;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->access$000(Lcom/miui/gallery/app/StorageExplorerPageBase;)Lcom/miui/gallery/ui/StaticBackground;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/miui/gallery/ui/StaticBackground;->layout(IIII)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->mMatrix:[F

    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->USER_DISTANCE_METER:F

    neg-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 93
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 97
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPageBase$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 99
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 100
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 101
    return-void
.end method
