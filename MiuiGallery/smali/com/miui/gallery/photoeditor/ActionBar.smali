.class public Lcom/miui/gallery/photoeditor/ActionBar;
.super Lcom/miui/gallery/photoeditor/RestorableView;
.source "ActionBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private showSaveOrShare()V
    .locals 5

    .prologue
    const v4, 0x7f0b0080

    .line 57
    const v3, 0x7f0b007d

    invoke-virtual {p0, v3}, Lcom/miui/gallery/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/miui/gallery/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 59
    .local v1, showShare:Z
    :goto_0
    const v3, 0x7f0b007f

    invoke-virtual {p0, v3}, Lcom/miui/gallery/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    .line 60
    .local v2, switcher:Landroid/widget/ViewSwitcher;
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 61
    .local v0, next:I
    if-eqz v1, :cond_0

    const v3, 0x7f0b0081

    if-eq v0, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-ne v0, v4, :cond_2

    .line 63
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 65
    :cond_2
    return-void

    .line 57
    .end local v0           #next:I
    .end local v1           #showShare:Z
    .end local v2           #switcher:Landroid/widget/ViewSwitcher;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSave()Z
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected childLayoutId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f04001f

    return v0
.end method

.method public clickBack()V
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 81
    return-void
.end method

.method public clickSave()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 85
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/miui/gallery/photoeditor/RestorableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/ActionBar;->showSaveOrShare()V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-super {p0}, Lcom/miui/gallery/photoeditor/RestorableView;->onFinishInflate()V

    .line 43
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/photoeditor/ActionBar;->updateButtons(ZZ)V

    .line 44
    return-void
.end method

.method public updateButtons(ZZ)V
    .locals 1
    .parameter "canUndo"
    .parameter "canRedo"

    .prologue
    .line 68
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 69
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 70
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/ActionBar;->showSaveOrShare()V

    .line 72
    return-void
.end method

.method public updateSave(Z)V
    .locals 1
    .parameter "canSave"

    .prologue
    .line 75
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 76
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/ActionBar;->showSaveOrShare()V

    .line 77
    return-void
.end method
