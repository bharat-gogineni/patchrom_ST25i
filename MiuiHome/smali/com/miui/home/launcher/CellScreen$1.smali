.class Lcom/miui/home/launcher/CellScreen$1;
.super Ljava/lang/Object;
.source "CellScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 175
    .local v0, vp:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen$1;->this$0:Lcom/miui/home/launcher/CellScreen;

    #getter for: Lcom/miui/home/launcher/CellScreen;->mInEditing:Z
    invoke-static {v1}, Lcom/miui/home/launcher/CellScreen;->access$000(Lcom/miui/home/launcher/CellScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    check-cast v0, Lcom/miui/home/launcher/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onEditModeEnterComplate()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v0       #vp:Landroid/view/ViewParent;
    :cond_1
    check-cast v0, Lcom/miui/home/launcher/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onEditModeExitComplate()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 185
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 171
    return-void
.end method
