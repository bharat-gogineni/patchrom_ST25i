.class public Lcom/miui/home/launcher/FolderCling;
.super Landroid/widget/FrameLayout;
.source "FolderCling.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DropTarget;


# instance fields
.field private mCloseConfirm:Ljava/lang/Runnable;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mFolder:Lcom/miui/home/launcher/Folder;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOpened:Z

.field private mTmpPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mTmpPos:[I

    .line 57
    new-instance v0, Lcom/miui/home/launcher/FolderCling$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$1;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnFinishClose:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/miui/home/launcher/FolderCling$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$2;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    .line 24
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderCling;->setClipChildren(Z)V

    .line 25
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderCling;->setClipToPadding(Z)V

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/FolderCling;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderCling;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 2
    .parameter "dragObject"

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 47
    return-void
.end method

.method close(Z)V
    .locals 2
    .parameter "allowAnimation"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mOnFinishClose:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Folder;->onClose(ZLjava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    return v0
.end method

.method isOpened()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 77
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 3
    .parameter "dragObject"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/FolderCling;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "dragObject"

    .prologue
    .line 114
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 31
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Folder;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 32
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/FolderCling;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 136
    iget-boolean v6, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    if-eqz v6, :cond_0

    .line 137
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v6

    iget-object v1, v6, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    .line 138
    .local v1, icon:Landroid/view/View;
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mTmpPos:[I

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 139
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mTmpPos:[I

    const/4 v7, 0x1

    aget v3, v6, v7

    .line 140
    .local v3, iconTop:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v2, v3, v6

    .line 141
    .local v2, iconBottom:I
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v6

    sub-int v5, v3, v6

    .line 142
    .local v5, topSpan:I
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Folder;->getLastAtMostMeasureHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v0, v6, v2

    .line 144
    .local v0, bottomSpan:I
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getMeasuredHeight()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getBottom()I

    move-result v6

    sub-int v4, v3, v6

    .line 153
    .local v4, offset:I
    :goto_0
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getLastAtMostMeasureHeight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Folder;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 154
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Folder;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v9}, Lcom/miui/home/launcher/Folder;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v10}, Lcom/miui/home/launcher/Folder;->getBottom()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/miui/home/launcher/Folder;->layout(IIII)V

    .line 157
    .end local v0           #bottomSpan:I
    .end local v1           #icon:Landroid/view/View;
    .end local v2           #iconBottom:I
    .end local v3           #iconTop:I
    .end local v4           #offset:I
    .end local v5           #topSpan:I
    :cond_0
    return-void

    .line 146
    .restart local v0       #bottomSpan:I
    .restart local v1       #icon:Landroid/view/View;
    .restart local v2       #iconBottom:I
    .restart local v3       #iconTop:I
    .restart local v5       #topSpan:I
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getMeasuredHeight()I

    move-result v6

    if-lt v0, v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v6

    sub-int v4, v2, v6

    .restart local v4       #offset:I
    goto :goto_0

    .line 148
    .end local v4           #offset:I
    :cond_2
    if-ge v5, v0, :cond_0

    .line 151
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Folder;->getLastAtMostMeasureHeight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Folder;->getMeasuredHeight()I

    move-result v7

    sub-int v4, v6, v7

    .restart local v4       #offset:I
    goto :goto_0
.end method

.method open()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->onOpen(Z)V

    .line 53
    iput-boolean v1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    .line 55
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 1
    .parameter "dragController"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 43
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 38
    return-void
.end method
