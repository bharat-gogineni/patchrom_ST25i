.class Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;
.super Ljava/lang/Object;
.source "RedEyeAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/RedEyeAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/RedEyeAction;

.field final synthetic val$filter:Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/RedEyeAction;Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RedEyeAction;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTap(Landroid/graphics/PointF;)V
    .locals 3
    .parameter "point"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;->addRedEyePosition(Landroid/graphics/PointF;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/RedEyeAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/RedEyeAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 47
    return-void
.end method
