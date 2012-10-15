.class Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;
.super Landroid/os/Handler;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 81
    :cond_0
    return-void

    .line 73
    :pswitch_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v2}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->access$000(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    const/4 v3, 0x1

    #setter for: Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v2, v3}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->access$002(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;Z)Z

    .line 75
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->childViews:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->access$100(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 76
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->access$200(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
