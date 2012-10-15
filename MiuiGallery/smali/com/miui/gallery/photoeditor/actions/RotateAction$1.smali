.class Lcom/miui/gallery/photoeditor/actions/RotateAction$1;
.super Ljava/lang/Object;
.source "RotateAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/RotateView$OnRotateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/RotateAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field photoView:Lcom/miui/gallery/photoeditor/PhotoView;

.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/RotateAction;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$000(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Lcom/miui/gallery/photoeditor/actions/RotateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/actions/RotateView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    return-void
.end method

.method private transformPhotoView(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$400(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$400(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;-><init>(Lcom/miui/gallery/photoeditor/actions/RotateAction$1;F)V

    #setter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$402(Lcom/miui/gallery/photoeditor/actions/RotateAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$400(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onAngleChanged(FZ)V
    .locals 2
    .parameter "degrees"
    .parameter "fromUser"

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #setter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F
    invoke-static {v0, p1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$102(Lcom/miui/gallery/photoeditor/actions/RotateAction;F)F

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    const/4 v1, 0x0

    #calls: Lcom/miui/gallery/photoeditor/actions/RotateAction;->updateRotateFilter(Z)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$200(Lcom/miui/gallery/photoeditor/actions/RotateAction;Z)V

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->transformPhotoView(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #calls: Lcom/miui/gallery/photoeditor/actions/RotateAction;->roundRotateDegrees()V
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$300(Lcom/miui/gallery/photoeditor/actions/RotateAction;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    const/4 v1, 0x0

    #calls: Lcom/miui/gallery/photoeditor/actions/RotateAction;->updateRotateFilter(Z)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$200(Lcom/miui/gallery/photoeditor/actions/RotateAction;Z)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$100(Lcom/miui/gallery/photoeditor/actions/RotateAction;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->transformPhotoView(F)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$000(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Lcom/miui/gallery/photoeditor/actions/RotateView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RotateAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->access$100(Lcom/miui/gallery/photoeditor/actions/RotateAction;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 74
    return-void
.end method
