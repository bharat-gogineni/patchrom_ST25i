.class public Lcom/miui/home/launcher/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public cancelled:Z

.field public dragComplete:Z

.field public dragInfo:Lcom/miui/home/launcher/ItemInfo;

.field public dragSource:Lcom/miui/home/launcher/DragSource;

.field public dragView:Lcom/miui/home/launcher/DragView;

.field public outline:Landroid/graphics/Bitmap;

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    .line 30
    iput v0, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    .line 36
    iput v0, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    .line 42
    iput-boolean v2, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragComplete:Z

    .line 45
    iput-object v1, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    .line 48
    iput-object v1, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 51
    iput-object v1, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    .line 54
    iput-object v1, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 57
    iput-boolean v2, p0, Lcom/miui/home/launcher/DropTarget$DragObject;->cancelled:Z

    .line 62
    return-void
.end method
