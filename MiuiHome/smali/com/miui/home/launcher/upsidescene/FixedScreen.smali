.class public Lcom/miui/home/launcher/upsidescene/FixedScreen;
.super Landroid/widget/FrameLayout;
.source "FixedScreen.java"


# instance fields
.field private mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public exitEditMode()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 60
    check-cast v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->exitEditMode()V

    .line 57
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public gotoEditMode()V
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 49
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 51
    check-cast v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->gotoEditMode()V

    .line 48
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public notifyGadgets(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->notifyGadgets(I)V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 30
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    .line 31
    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 1
    .parameter "sceneScreen"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 35
    return-void
.end method

.method public setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V
    .locals 1
    .parameter "screenData"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FixedScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    .line 41
    :cond_0
    return-void
.end method
