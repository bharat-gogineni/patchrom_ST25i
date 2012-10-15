.class Lcom/miui/gallery/photoeditor/actions/FlipAction$1;
.super Ljava/lang/Object;
.source "FlipAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/FlipView$OnFlipChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/FlipAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field photoView:Lcom/miui/gallery/photoeditor/PhotoView;

.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/FlipAction;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$000(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Lcom/miui/gallery/photoeditor/actions/FlipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/actions/FlipView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    return-void
.end method

.method private transformPhotoView(FF)V
    .locals 2
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$500(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$500(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;-><init>(Lcom/miui/gallery/photoeditor/actions/FlipAction$1;FF)V

    #setter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$502(Lcom/miui/gallery/photoeditor/actions/FlipAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$500(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onAngleChanged(FFZ)V
    .locals 2
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"
    .parameter "fromUser"

    .prologue
    .line 58
    if-eqz p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #setter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F
    invoke-static {v0, p1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$102(Lcom/miui/gallery/photoeditor/actions/FlipAction;F)F

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #setter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F
    invoke-static {v0, p2}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$202(Lcom/miui/gallery/photoeditor/actions/FlipAction;F)F

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    const/4 v1, 0x0

    #calls: Lcom/miui/gallery/photoeditor/actions/FlipAction;->updateFlipFilter(Z)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$300(Lcom/miui/gallery/photoeditor/actions/FlipAction;Z)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->transformPhotoView(FF)V

    .line 64
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #calls: Lcom/miui/gallery/photoeditor/actions/FlipAction;->roundFlipDegrees()V
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$400(Lcom/miui/gallery/photoeditor/actions/FlipAction;)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    const/4 v1, 0x0

    #calls: Lcom/miui/gallery/photoeditor/actions/FlipAction;->updateFlipFilter(Z)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$300(Lcom/miui/gallery/photoeditor/actions/FlipAction;Z)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$100(Lcom/miui/gallery/photoeditor/actions/FlipAction;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$200(Lcom/miui/gallery/photoeditor/actions/FlipAction;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->transformPhotoView(FF)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$000(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Lcom/miui/gallery/photoeditor/actions/FlipView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$100(Lcom/miui/gallery/photoeditor/actions/FlipAction;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/FlipAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F
    invoke-static {v2}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->access$200(Lcom/miui/gallery/photoeditor/actions/FlipAction;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/FlipView;->setFlippedAngles(FF)V

    .line 77
    return-void
.end method
