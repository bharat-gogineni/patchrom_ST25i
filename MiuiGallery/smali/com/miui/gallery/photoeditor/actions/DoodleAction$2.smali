.class Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;
.super Ljava/lang/Object;
.source "DoodleAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/DoodleView$OnDoodleChangeListener;


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
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoodleFinished(Lcom/miui/gallery/photoeditor/actions/Doodle;)V
    .locals 3
    .parameter "doodle"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->access$100(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->addDoodle(Lcom/miui/gallery/photoeditor/actions/Doodle;)V

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->access$100(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 69
    return-void
.end method

.method public onDoodleInPhotoBounds()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->access$100(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;->setDoodledInPhotoBounds()V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/DoodleAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->access$100(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 63
    return-void
.end method
