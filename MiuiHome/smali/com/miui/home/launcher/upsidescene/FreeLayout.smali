.class public Lcom/miui/home/launcher/upsidescene/FreeLayout;
.super Landroid/view/ViewGroup;
.source "FreeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mScreenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private isChildVisibleNow(Landroid/view/View;)Z
    .locals 5
    .parameter "child"

    .prologue
    .line 180
    sget-object v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 181
    sget-object v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 91
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 92
    .local v1, childWidthSpec:I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 93
    .local v0, childHeightSpec:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 99
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 100
    return-void
.end method


# virtual methods
.method public getScreenData()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    return-object v0
.end method

.method public notifyGadgets(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 121
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, child:Landroid/view/View;
    instance-of v6, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v6, :cond_1

    move-object v5, v1

    .line 123
    check-cast v5, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 124
    .local v5, spView:Lcom/miui/home/launcher/upsidescene/SpriteView;
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v4

    .line 125
    .local v4, sp:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    instance-of v6, v4, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    if-eqz v6, :cond_1

    move-object v0, v4

    .line 126
    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .line 127
    .local v0, cell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 129
    :cond_0
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .line 130
    .local v2, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    packed-switch p1, :pswitch_data_0

    .line 120
    .end local v0           #cell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v4           #sp:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .end local v5           #spView:Lcom/miui/home/launcher/upsidescene/SpriteView;
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 132
    .restart local v0       #cell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    .restart local v2       #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .restart local v4       #sp:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .restart local v5       #spView:Lcom/miui/home/launcher/upsidescene/SpriteView;
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->isChildVisibleNow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 140
    :pswitch_2
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 144
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->isChildVisibleNow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 150
    :pswitch_4
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 154
    :pswitch_5
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 158
    :pswitch_6
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 162
    :pswitch_7
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 166
    :pswitch_8
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 170
    :pswitch_9
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 177
    .end local v0           #cell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v4           #sp:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .end local v5           #spView:Lcom/miui/home/launcher/upsidescene/SpriteView;
    :cond_3
    return-void

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v3

    .line 105
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 106
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;

    .line 110
    .local v5, lp:Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;
    iget v1, v5, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->left:I

    .line 111
    .local v1, childLeft:I
    iget v2, v5, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->top:I

    .line 113
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 105
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #lp:Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 72
    .local v4, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 74
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 75
    .local v1, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 77
    .local v2, heightSpecSize:I
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 78
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    invoke-virtual {v6}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getWidth()I

    move-result v5

    .line 79
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    invoke-virtual {v6}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getHeight()I

    move-result v2

    .line 82
    :cond_1
    invoke-virtual {p0, v5, v2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setMeasuredDimension(II)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    .line 85
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 86
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->measureChild(Landroid/view/View;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter "sceneScreen"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 45
    return-void
.end method

.method public setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V
    .locals 6
    .parameter "screenData"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->removeAllViews()V

    .line 52
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getSprites()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    .line 53
    .local v2, sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    new-instance v3, Lcom/miui/home/launcher/upsidescene/SpriteView;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/upsidescene/SpriteView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v3, spriteView:Lcom/miui/home/launcher/upsidescene/SpriteView;
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 55
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setSpriteData(Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;)V

    .line 56
    new-instance v1, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;

    invoke-direct {v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;-><init>()V

    .line 57
    .local v1, lp:Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getTop()I

    move-result v4

    iput v4, v1, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->top:I

    .line 58
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getLeft()I

    move-result v4

    iput v4, v1, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->left:I

    .line 59
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getRight()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->width:I

    .line 60
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getBottom()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->height:I

    .line 61
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 63
    .end local v1           #lp:Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;
    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .end local v3           #spriteView:Lcom/miui/home/launcher/upsidescene/SpriteView;
    :cond_0
    return-void
.end method
