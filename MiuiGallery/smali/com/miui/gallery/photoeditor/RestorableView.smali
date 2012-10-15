.class public abstract Lcom/miui/gallery/photoeditor/RestorableView;
.super Landroid/widget/FrameLayout;
.source "RestorableView.java"


# instance fields
.field private final changedViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final clickRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView;->clickRunnables:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView;->inflater:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method

.method private recreateChildView()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/RestorableView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/RestorableView;->removeAllViews()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/RestorableView;->childLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract childLayoutId()I
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/miui/gallery/photoeditor/RestorableView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 68
    .local v4, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/RestorableView;->recreateChildView()V

    .line 71
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/RestorableView;->clickRunnables:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v5}, Lcom/miui/gallery/photoeditor/RestorableView;->setClickRunnable(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 74
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    .local v3, id:I
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, changed:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/miui/gallery/photoeditor/RestorableView;->setViewEnabled(IZ)V

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/miui/gallery/photoeditor/RestorableView;->setViewSelected(IZ)V

    goto :goto_1

    .line 79
    .end local v0           #changed:Landroid/view/View;
    .end local v3           #id:I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/RestorableView;->recreateChildView()V

    .line 60
    return-void
.end method

.method public setClickRunnable(ILjava/lang/Runnable;)V
    .locals 2
    .parameter "id"
    .parameter "r"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/photoeditor/RestorableView$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/photoeditor/RestorableView$1;-><init>(Lcom/miui/gallery/photoeditor/RestorableView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView;->clickRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setViewEnabled(IZ)V
    .locals 3
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    if-eqz p2, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    return-void

    .line 97
    :cond_0
    const v1, 0x3ef0a3d7

    goto :goto_0
.end method

.method public setViewSelected(IZ)V
    .locals 2
    .parameter "id"
    .parameter "selected"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method
