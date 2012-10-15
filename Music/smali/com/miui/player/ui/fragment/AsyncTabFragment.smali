.class public abstract Lcom/miui/player/ui/fragment/AsyncTabFragment;
.super Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
.source "AsyncTabFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,
        Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<TE;>;>",
        "Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<TD;>;"
    }
.end annotation


# static fields
.field protected static final ID_LIST_LOADER:I = 0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter",
            "<TE;TD;>;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/AbsListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/miui/player/ui/fragment/AsyncTabFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    invoke-direct {p0}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;-><init>()V

    .line 108
    return-void
.end method


# virtual methods
.method protected getApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 88
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract initializeList(Landroid/view/View;)V
.end method

.method protected launch(Z)V
    .locals 4
    .parameter "reset"

    .prologue
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 40
    .local v0, lm:Landroid/app/LoaderManager;
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 43
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    .line 44
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 47
    :cond_1
    return-void
.end method

.method protected abstract loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 62
    new-instance v0, Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;-><init>(Lcom/miui/player/ui/fragment/AsyncTabFragment;)V

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iput-object v1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    .line 56
    invoke-super {p0}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->onDestroyView()V

    .line 57
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/player/plugin/onlinemusic2/MetaList;)V
    .locals 3
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
    .line 70
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p2, data:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"TD;"
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 72
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->notifyDataSetChanged()V

    .line 81
    .end local v0           #a:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    check-cast p2, Lcom/miui/player/plugin/onlinemusic2/MetaList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->onLoadFinished(Landroid/content/Loader;Lcom/miui/player/plugin/onlinemusic2/MetaList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "icicle"

    .prologue
    .line 31
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->initializeList(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->launch(Z)V

    .line 36
    return-void
.end method
