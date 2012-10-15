.class public Lcom/miui/home/launcher/HotSeatButton;
.super Lcom/miui/home/launcher/OnLongClickWrapper;
.source "HotSeatButton.java"


# instance fields
.field private mIcon:Lcom/miui/home/launcher/ItemIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/OnLongClickWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    .line 12
    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/home/launcher/ItemIcon;Lcom/miui/home/launcher/DragController;)V
    .locals 1
    .parameter "icon"
    .parameter "dragController"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/HotSeatButton;->addView(Landroid/view/View;I)V

    .line 22
    instance-of v0, p1, Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    .end local p1
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 25
    :cond_0
    return-void
.end method

.method public getIcon()Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    return-object v0
.end method

.method public preventPressState()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public unbind(Lcom/miui/home/launcher/DragController;)V
    .locals 1
    .parameter "dragController"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    instance-of v0, v0, Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    check-cast v0, Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    check-cast v0, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeatButton;->removeAllViews()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeatButton;->mIcon:Lcom/miui/home/launcher/ItemIcon;

    .line 33
    return-void
.end method
