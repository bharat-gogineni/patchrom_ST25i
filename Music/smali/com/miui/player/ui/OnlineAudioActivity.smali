.class public Lcom/miui/player/ui/OnlineAudioActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "OnlineAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;,
        Lcom/miui/player/ui/OnlineAudioActivity$OnRetryClickListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

.field private final mAdapterUpdateRunnable:Ljava/lang/Runnable;

.field private mDescription:Ljava/lang/String;

.field private final mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mKey:Ljava/lang/String;

.field protected mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

.field protected mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/menu/BaseMenuManager",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShuffleAll:Landroid/view/View;

.field protected mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mType:I

    .line 214
    new-instance v0, Lcom/miui/player/ui/OnlineAudioActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineAudioActivity$1;-><init>(Lcom/miui/player/ui/OnlineAudioActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v0, Lcom/miui/player/ui/OnlineAudioActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineAudioActivity$2;-><init>(Lcom/miui/player/ui/OnlineAudioActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    .line 286
    return-void
.end method

.method private static getQueryKey([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "keys"

    .prologue
    .line 377
    const-string v0, " "

    invoke-static {v0, p0}, Lcom/xiaomi/common/util/Strings;->concat(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;-><init>()V

    .line 207
    .local v0, ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineAudioAdapter;->getAudioList()Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .line 208
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 209
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mListView:Landroid/widget/AbsListView;

    .line 211
    return-object v0
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.miui.player.ONLINE_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const/4 v3, 0x5

    iput v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mType:I

    .line 63
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "search_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/ui/OnlineAudioActivity;->getQueryKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mKey:Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDescription:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    iget v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->finish()V

    .line 109
    :goto_1
    return-void

    .line 66
    :cond_2
    if-eqz p1, :cond_3

    move-object v1, p1

    .line 67
    .local v1, data:Landroid/os/Bundle;
    :goto_2
    if-eqz v1, :cond_0

    .line 68
    const-string v3, "audio_list_type"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mType:I

    .line 69
    const-string v3, "audio_list_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mKey:Ljava/lang/String;

    .line 70
    const-string v3, "audio_list_description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 66
    .end local v1           #data:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    .line 79
    :cond_4
    const v3, 0x7f030026

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/OnlineAudioActivity;->setContentView(I)V

    .line 81
    new-instance v3, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v4, 0x7f0c0047

    new-instance v5, Lcom/miui/player/ui/OnlineAudioActivity$OnRetryClickListener;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/OnlineAudioActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineAudioActivity;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;-><init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    .line 83
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v4, 0x7f090088

    const v5, 0x7f090089

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadingHintTextId(II)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 87
    .local v2, lv:Landroid/widget/ListView;
    const/4 v3, 0x1

    const v4, 0x7f0200a2

    const v5, 0x7f0900b2

    invoke-static {p0, v3, v4, v5}, Lcom/miui/player/ui/UIHelper;->makeSpecialView(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mShuffleAll:Landroid/view/View;

    .line 89
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mShuffleAll:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 91
    new-instance v3, Lcom/miui/player/ui/menu/OnlineAudioMenu;

    const v4, 0x7f0a0007

    invoke-direct {v3, p0, v4}, Lcom/miui/player/ui/menu/OnlineAudioMenu;-><init>(Lcom/miui/player/ui/OnlineAudioActivity;I)V

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 93
    new-instance v3, Lcom/miui/player/ui/controller/MultiChoiceController;

    iget-object v4, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-direct {v3, v2, v4}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;)V

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 94
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    const v4, 0x7f0c000f

    invoke-static {v4}, Lcom/miui/player/ui/UIHelper;->createBinderForList(I)Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/MultiChoiceController;->setItemViewBinder(Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;)V

    .line 95
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v3, p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->setOnModeChangedListener(Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;)V

    .line 97
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 99
    new-instance v3, Lcom/miui/player/model/OnlineAudioAdapter;

    iget-object v4, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-direct {v3, p0, v4}, Lcom/miui/player/model/OnlineAudioAdapter;-><init>(Landroid/app/Activity;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    .line 100
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    iget-object v4, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 101
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/OnlineAudioActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    new-instance v3, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 104
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 105
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryImage(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    iget-object v4, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->startAudioListLoadingAsync()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 125
    iput-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    .line 126
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineAudioActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
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
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineAudioAdapter;->getAudioList()Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v6

    .line 155
    .local v6, audioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;
    if-eqz v6, :cond_0

    .line 156
    invoke-static {p1}, Lcom/miui/player/ui/UIHelper;->getListViewHeaderCount(Landroid/widget/AdapterView;)I

    move-result v0

    sub-int/2addr p3, v0

    .line 157
    if-gez p3, :cond_1

    const/4 v5, 0x1

    .line 158
    .local v5, forceShuffle:Z
    :goto_0
    if-ltz p3, :cond_2

    move v3, p3

    .line 160
    .local v3, start:I
    :goto_1
    iget-object v1, v6, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V

    .line 163
    .end local v3           #start:I
    .end local v5           #forceShuffle:Z
    :cond_0
    return-void

    :cond_1
    move v5, v4

    .line 157
    goto :goto_0

    .restart local v5       #forceShuffle:Z
    :cond_2
    move v3, v4

    .line 158
    goto :goto_1
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 2
    .parameter "enabled"
    .parameter "lv"

    .prologue
    .line 254
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mShuffleAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mShuffleAll:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 259
    :cond_0
    return-void

    .line 257
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->finish()V

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v1, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineAudioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onPause()V

    .line 142
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 269
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 270
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestCompleted(Lcom/miui/player/plugin/onlinemusic2/AudioList;)V
    .locals 2
    .parameter "audioList"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/OnlineAudioAdapter;->updateAudioList(Lcom/miui/player/plugin/onlinemusic2/AudioList;)V

    .line 188
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->updateHeaderView()V

    .line 190
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineAudioAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadSuccess()V

    .line 192
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadFailed()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/OnlineAudioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineAudioAdapter;->updateDownloadStatus()V

    .line 136
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "audio_list_type"

    iget v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v0, "audio_list_key"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "audio_list_description"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected startAudioListLoadingAsync()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mLoadingBar:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadInProcess()V

    .line 200
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/model/OnlineAudioAdapter;->updateAudioList(Lcom/miui/player/plugin/onlinemusic2/AudioList;)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 202
    new-instance v0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;

    iget v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mType:I

    iget-object v2, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;-><init>(Lcom/miui/player/ui/OnlineAudioActivity;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/network/OnlineMusicProxy;->request(Lmiui/cache/RequestManager$Request;)Z

    .line 203
    return-void
.end method

.method protected updateHeaderView()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineAudioAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 178
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity;->mShuffleAll:Landroid/view/View;

    const v2, 0x7f0c0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 181
    return-void

    .line 177
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
