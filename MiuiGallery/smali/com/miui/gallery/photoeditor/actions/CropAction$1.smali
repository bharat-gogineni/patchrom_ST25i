.class Lcom/miui/gallery/photoeditor/actions/CropAction$1;
.super Ljava/lang/Object;
.source "CropAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/CropView$OnCropChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/CropAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/CropAction;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/CropAction;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/CropAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropChanged(Landroid/graphics/RectF;Z)V
    .locals 3
    .parameter "cropBounds"
    .parameter "fromUser"

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/CropAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/CropAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/CropAction;->access$000(Lcom/miui/gallery/photoeditor/actions/CropAction;)Lcom/miui/gallery/photoeditor/filters/CropFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/filters/CropFilter;->setCropBounds(Landroid/graphics/RectF;)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/CropAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/CropAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/CropAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/CropAction;->access$000(Lcom/miui/gallery/photoeditor/actions/CropAction;)Lcom/miui/gallery/photoeditor/filters/CropFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/CropAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 52
    :cond_0
    return-void
.end method
