.class Lcom/miui/gallery/photoeditor/actions/SharpenAction$1;
.super Ljava/lang/Object;
.source "SharpenAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/SharpenAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/SharpenAction;

.field final synthetic val$filter:Lcom/miui/gallery/photoeditor/filters/SharpenFilter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/SharpenAction;Lcom/miui/gallery/photoeditor/filters/SharpenFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/SharpenAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/SharpenAction;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/SharpenAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/SharpenFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(FZ)V
    .locals 3
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/SharpenAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/SharpenFilter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/filters/SharpenFilter;->setScale(F)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/SharpenAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/SharpenAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/SharpenAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/SharpenFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/SharpenAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method
