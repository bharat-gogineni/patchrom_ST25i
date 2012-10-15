.class public Lcom/miui/player/ui/fragment/BillListFragment;
.super Lcom/miui/player/ui/fragment/ListTabFragment;
.source "BillListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/player/model/BillListAdapter$BillDetailRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;,
        Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/ListTabFragment",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Bill;",
        "Lcom/miui/player/plugin/onlinemusic2/BillList;",
        ">;",
        "Lcom/miui/player/model/BillListAdapter$BillDetailRequester;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field protected static final ID_DETAIL_LOADER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/ListTabFragment;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method protected getLoadFailedId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f090083

    return v0
.end method

.method protected getLoadInProcessId()I
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f090082

    return v0
.end method

.method protected initializeList(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 44
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/BillListFragment;->mListView:Landroid/widget/AbsListView;

    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/fragment/BillListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    new-instance v0, Lcom/miui/player/model/BillListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/player/model/BillListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/model/BillListAdapter$BillDetailRequester;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/BillListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    .line 47
    return-void
.end method

.method protected loadInBackground()Lcom/miui/player/plugin/onlinemusic2/BillList;
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 119
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/player/network/OnlineMusicProxy;->requestBillList(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/BillList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/BillList;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 39
    const v0, 0x7f030010

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 135
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/fragment/BillListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/fragment/BillListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v2, p3}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Bill;

    .line 140
    .local v0, bill:Lcom/miui/player/plugin/onlinemusic2/Bill;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/preview_track"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "audio_list_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v2, "audio_list_key"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Bill;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "audio_list_description"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Bill;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/fragment/BillListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public request([Ljava/lang/String;ILcom/miui/player/model/BillListAdapter$BillResponser;)V
    .locals 6
    .parameter "ids"
    .parameter "size"
    .parameter "br"

    .prologue
    const/4 v5, 0x2

    .line 51
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 52
    .local v0, lm:Landroid/app/LoaderManager;
    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 53
    const/4 v2, 0x0

    new-instance v3, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;-><init>(Landroid/content/Context;[Ljava/lang/String;ILcom/miui/player/model/BillListAdapter$BillResponser;)V

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    .line 55
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;>;"
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 58
    :cond_0
    return-void
.end method
