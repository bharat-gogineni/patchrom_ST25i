.class Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/miui/gallery/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;-><init>(Lcom/miui/gallery/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 659
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1800(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/EdgeView;->onRelease()V

    .line 664
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1700(Lcom/miui/gallery/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->access$1702(Lcom/miui/gallery/ui/PhotoView;Z)Z

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView;->access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->up()V

    goto :goto_0
.end method
