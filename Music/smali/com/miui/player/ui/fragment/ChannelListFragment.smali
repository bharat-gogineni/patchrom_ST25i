.class public Lcom/miui/player/ui/fragment/ChannelListFragment;
.super Lcom/miui/player/ui/fragment/ListTabFragment;
.source "ChannelListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/ListTabFragment",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Channel;",
        "Lcom/miui/player/plugin/onlinemusic2/ChannelList;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/miui/player/ui/fragment/ChannelListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/fragment/ChannelListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/ListTabFragment;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method protected getLoadFailedId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f090081

    return v0
.end method

.method protected getLoadInProcessId()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f090080

    return v0
.end method

.method protected initializeList(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 39
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mListView:Landroid/widget/AbsListView;

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    new-instance v0, Lcom/miui/player/model/ChannelListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/player/model/ChannelListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    .line 42
    return-void
.end method

.method protected loadInBackground()Lcom/miui/player/plugin/onlinemusic2/ChannelList;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 47
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/player/network/OnlineMusicProxy;->requestChannelList(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/ChannelList;

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
    .line 28
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 34
    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 63
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v2, p3}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Channel;

    .line 68
    .local v0, channel:Lcom/miui/player/plugin/onlinemusic2/Channel;
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getChannelName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Channel;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->togglePause()V

    .line 70
    iget-object v2, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v2}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 72
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 74
    new-instance v2, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/fragment/ChannelListFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;-><init>(Landroid/app/Activity;Lcom/miui/player/plugin/onlinemusic2/Channel;Landroid/app/ProgressDialog;Landroid/widget/BaseAdapter;)V

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->request(Lmiui/cache/RequestManager$Request;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const v2, 0x7f090088

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/fragment/ChannelListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 77
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
