.class public abstract Lcom/miui/player/ui/fragment/ListTabFragment;
.super Lcom/miui/player/ui/fragment/AsyncTabFragment;
.source "ListTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<TE;>;>",
        "Lcom/miui/player/ui/fragment/AsyncTabFragment",
        "<TE;TD;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/miui/player/ui/fragment/ListTabFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/fragment/ListTabFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, this:Lcom/miui/player/ui/fragment/ListTabFragment;,"Lcom/miui/player/ui/fragment/ListTabFragment<TE;TD;>;"
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLoadFailedId()I
.end method

.method protected abstract getLoadInProcessId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 60
    .local p0, this:Lcom/miui/player/ui/fragment/ListTabFragment;,"Lcom/miui/player/ui/fragment/ListTabFragment<TE;TD;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/ListTabFragment;->launch(Z)V

    .line 61
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/player/plugin/onlinemusic2/MetaList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/miui/player/ui/fragment/ListTabFragment;,"Lcom/miui/player/ui/fragment/ListTabFragment<TE;TD;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p2, data:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"TD;"
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->onLoadFinished(Landroid/content/Loader;Lcom/miui/player/plugin/onlinemusic2/MetaList;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    if-nez p2, :cond_1

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadFailed()V

    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mListView:Landroid/widget/AbsListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadSuccess()V

    .line 50
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    .local p0, this:Lcom/miui/player/ui/fragment/ListTabFragment;,"Lcom/miui/player/ui/fragment/ListTabFragment<TE;TD;>;"
    check-cast p2, Lcom/miui/player/plugin/onlinemusic2/MetaList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/fragment/ListTabFragment;->onLoadFinished(Landroid/content/Loader;Lcom/miui/player/plugin/onlinemusic2/MetaList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "icicle"

    .prologue
    .line 24
    .local p0, this:Lcom/miui/player/ui/fragment/ListTabFragment;,"Lcom/miui/player/ui/fragment/ListTabFragment<TE;TD;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v1, 0x7f0c0047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    .line 27
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ListTabFragment;->getLoadInProcessId()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ListTabFragment;->getLoadFailedId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadingHintTextId(II)V

    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->hasContent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mListView:Landroid/widget/AbsListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadInProcess()V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ListTabFragment;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadSuccess()V

    goto :goto_0
.end method
