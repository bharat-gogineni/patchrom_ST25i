.class Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;
.super Ljava/lang/Object;
.source "StraightenAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/RotateView$OnRotateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/StraightenAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/StraightenAction;

.field final synthetic val$filter:Lcom/miui/gallery/photoeditor/filters/StraightenFilter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/StraightenAction;Lcom/miui/gallery/photoeditor/filters/StraightenFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/StraightenAction;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/StraightenFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAngleChanged(FZ)V
    .locals 3
    .parameter "degrees"
    .parameter "fromUser"

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/StraightenFilter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/filters/StraightenFilter;->setAngle(F)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/StraightenAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/StraightenFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
