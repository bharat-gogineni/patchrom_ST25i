.class public abstract Lcom/miui/player/ui/fragment/MetaGridFragment;
.super Lcom/miui/player/ui/fragment/ListTabFragment;
.source "MetaGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;,
        Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<TE;>;>",
        "Lcom/miui/player/ui/fragment/ListTabFragment",
        "<TE;TD;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, this:Lcom/miui/player/ui/fragment/MetaGridFragment;,"Lcom/miui/player/ui/fragment/MetaGridFragment<TE;TD;>;"
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/ListTabFragment;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/miui/player/model/MetaAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/player/model/MetaAdapter",
            "<TE;TD;>;"
        }
    .end annotation
.end method

.method protected initializeList(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 35
    .local p0, this:Lcom/miui/player/ui/fragment/MetaGridFragment;,"Lcom/miui/player/ui/fragment/MetaGridFragment<TE;TD;>;"
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/MetaGridFragment;->mListView:Landroid/widget/AbsListView;

    .line 36
    iget-object v0, p0, Lcom/miui/player/ui/fragment/MetaGridFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment;->createAdapter()Lcom/miui/player/model/MetaAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/MetaGridFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 30
    .local p0, this:Lcom/miui/player/ui/fragment/MetaGridFragment;,"Lcom/miui/player/ui/fragment/MetaGridFragment<TE;TD;>;"
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
