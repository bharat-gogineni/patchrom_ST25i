.class Lcom/miui/gallery/photoeditor/actions/TintAction$1;
.super Ljava/lang/Object;
.source "TintAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/TintAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/TintAction;

.field final synthetic val$filter:Lcom/miui/gallery/photoeditor/filters/TintFilter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/TintAction;Lcom/miui/gallery/photoeditor/filters/TintFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TintAction;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/TintAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/TintFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(IZ)V
    .locals 3
    .parameter "color"
    .parameter "fromUser"

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/TintAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/TintFilter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/filters/TintFilter;->setTint(I)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/TintAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/TintAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction$1;->val$filter:Lcom/miui/gallery/photoeditor/filters/TintFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/TintAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method
