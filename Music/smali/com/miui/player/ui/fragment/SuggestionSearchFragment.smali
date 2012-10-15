.class public Lcom/miui/player/ui/fragment/SuggestionSearchFragment;
.super Lcom/miui/player/ui/fragment/AsyncTabFragment;
.source "SuggestionSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;,
        Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/AsyncTabFragment",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private volatile mSearchKey:Ljava/lang/String;

.field private mSuggestionClick:Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mSearchKey:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method protected initializeList(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 32
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mListView:Landroid/widget/AbsListView;

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    new-instance v0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    .line 35
    return-void
.end method

.method protected bridge synthetic loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;

    move-result-object v0

    return-object v0
.end method

.method protected loadInBackground()Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v1, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mSearchKey:Ljava/lang/String;

    .line 40
    .local v1, searchKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v2

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/miui/player/network/OnlineMusicProxy;->queryAudioSuggestion(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 27
    const v0, 0x7f03003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mSuggestionClick:Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/miui/player/ui/UIHelper;->getListViewHeaderCount(Landroid/widget/AdapterView;)I

    move-result v0

    if-lt p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    invoke-static {p1}, Lcom/miui/player/ui/UIHelper;->getListViewFooterCount(Landroid/widget/AdapterView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mSuggestionClick:Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;

    iget-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;->onSuggestionClick(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setOnSuggestionClickListener(Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mSuggestionClick:Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;

    .line 101
    return-void
.end method

.method public updateSearchKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    iput-object p1, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mSearchKey:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 51
    .local v0, lm:Landroid/app/LoaderManager;
    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v2, v4}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;)Z

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {v0, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    .line 56
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;>;"
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0
.end method
