.class Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/photoeditor/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToolbarIdleHandler"
.end annotation


# instance fields
.field private final childViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final fadeIn:Landroid/view/animation/Animation;

.field private final fadeOut:Landroid/view/animation/Animation;

.field private idle:Z

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->childViews:Ljava/util/List;

    .line 67
    new-instance v0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler$1;-><init>(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    .line 84
    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->fadeIn:Landroid/view/animation/Animation;

    .line 85
    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->childViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public killIdle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-boolean v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    .line 92
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->childViews:Ljava/util/List;

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

    .line 93
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 96
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b008b

    if-eq v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->childViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->childViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method
