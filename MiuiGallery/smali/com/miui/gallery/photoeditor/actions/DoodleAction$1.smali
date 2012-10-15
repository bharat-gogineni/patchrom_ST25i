.class Lcom/miui/gallery/photoeditor/actions/DoodleAction$1;
.super Ljava/lang/Object;
.source "DoodleAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(IZ)V
    .locals 1
    .parameter "color"
    .parameter "fromUser"

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->access$000(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/actions/DoodleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/actions/DoodleView;->setColor(I)V

    .line 51
    :cond_0
    return-void
.end method
