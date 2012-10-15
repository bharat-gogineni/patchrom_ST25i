.class public Lcom/miui/home/launcher/DropableGridView;
.super Landroid/widget/GridView;
.source "DropableGridView.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field private mLastHit:Landroid/view/View;

.field private mLastPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mStayConfirm:Ljava/lang/Runnable;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v1, p0, Lcom/miui/home/launcher/DropableGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mTmpRect:Landroid/graphics/Rect;

    .line 19
    iput-object v1, p0, Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;

    .line 20
    iput-object v1, p0, Lcom/miui/home/launcher/DropableGridView;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 90
    new-instance v0, Lcom/miui/home/launcher/DropableGridView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DropableGridView$1;-><init>(Lcom/miui/home/launcher/DropableGridView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mStayConfirm:Ljava/lang/Runnable;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DropableGridView;->setFocusable(Z)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DropableGridView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DropableGridView;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DropableGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/DropableGridView;->makePositionSnapShot()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DropableGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object v0
.end method

.method private makePositionSnapShot()V
    .locals 5

    .prologue
    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DropableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 62
    iget-object v4, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1           #r:Landroid/graphics/Rect;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 5
    .parameter "dragObject"

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 33
    :cond_0
    return-void
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 52
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "dragObject"

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;

    .line 120
    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 121
    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 122
    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DropableGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 6
    .parameter "dragObject"

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, hitView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/DropableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/miui/home/launcher/DropableGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 106
    iget-object v3, p0, Lcom/miui/home/launcher/DropableGridView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v5, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    move-object v0, v2

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;

    if-eq v0, v3, :cond_2

    .line 111
    iput-object v0, p0, Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/DropableGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v3, p0, Lcom/miui/home/launcher/DropableGridView;->mStayConfirm:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/home/launcher/DropableGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_2
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 69
    iget-object v5, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropableGridView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 71
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/DropableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 75
    .local v2, info:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v5, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    iget-object v5, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 77
    .local v3, rect:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 78
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v0, v5, v8, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 80
    .local v0, a:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v2           #info:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v4           #v:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/home/launcher/DropableGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 88
    .end local v1           #i:I
    :cond_3
    return-void
.end method
