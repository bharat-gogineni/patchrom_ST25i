.class public interface abstract Lcom/miui/home/launcher/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DropTarget$DragObject;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
.end method

.method public abstract getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
.end method
