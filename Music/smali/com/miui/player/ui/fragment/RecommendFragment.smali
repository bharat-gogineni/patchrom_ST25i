.class public Lcom/miui/player/ui/fragment/RecommendFragment;
.super Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/miui/player/ui/controller/SearchBarController$SearchListener;


# instance fields
.field private mContentWrap:Landroid/view/View;

.field private mSearchBar:Lcom/miui/player/ui/controller/SearchBarController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public doSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "searchInput"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.BROWSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/preview_track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "audio_list_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v1, "audio_list_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "audio_list_description"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public hideSuggestion()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/fragment/RecommendFragment;->mSearchBar:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController;->hide()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/player/model/MetaAdapter;->setup()V

    .line 26
    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/miui/player/model/MetaAdapter;->quit()V

    .line 50
    invoke-super {p0}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->onDestroyView()V

    .line 51
    return-void
.end method

.method public onSuggestionVisibleChanged(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/miui/player/ui/fragment/RecommendFragment;->mContentWrap:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "icicle"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    const v3, 0x7f0c0093

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/fragment/RecommendFragment;->mContentWrap:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/RecommendFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 34
    .local v0, fm:Landroid/app/FragmentManager;
    const v3, 0x7f0c0096

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    .line 37
    .local v2, ssf:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 38
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 39
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    new-instance v3, Lcom/miui/player/ui/controller/SearchBarController;

    const v4, 0x7f0c0092

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, p0, v5}, Lcom/miui/player/ui/controller/SearchBarController;-><init>(Landroid/view/View;Lcom/miui/player/ui/fragment/SuggestionSearchFragment;Lcom/miui/player/ui/controller/SearchBarController$SearchListener;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/player/ui/fragment/RecommendFragment;->mSearchBar:Lcom/miui/player/ui/controller/SearchBarController;

    .line 45
    return-void
.end method
