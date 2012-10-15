.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 1562
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->access$1300(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V

    .line 1563
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1557
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x6

    #calls: Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->access$1200(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V

    .line 1553
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 1554
    return-void
.end method
