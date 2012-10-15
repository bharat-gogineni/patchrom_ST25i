.class Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;
.super Ljava/lang/Object;
.source "ChannelListFragment.java"

# interfaces
.implements Lmiui/cache/RequestManager$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/ChannelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioListRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/cache/RequestManager$Request",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannel:Lcom/miui/player/plugin/onlinemusic2/Channel;

.field private final mContext:Landroid/content/Context;

.field private final mDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/plugin/onlinemusic2/Channel;Landroid/app/ProgressDialog;Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "activity"
    .parameter "channel"
    .parameter "dialog"
    .parameter "adapter"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mChannel:Lcom/miui/player/plugin/onlinemusic2/Channel;

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mDialogRef:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mAdapterRef:Ljava/lang/ref/WeakReference;

    .line 93
    return-void
.end method


# virtual methods
.method public computAsync()Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mChannel:Lcom/miui/player/plugin/onlinemusic2/Channel;

    iget-object v1, v1, Lcom/miui/player/plugin/onlinemusic2/Channel;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;

    iget-object v1, v1, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioListOfChannel(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic computAsync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->computAsync()Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mChannel:Lcom/miui/player/plugin/onlinemusic2/Channel;

    iget-object v1, v1, Lcom/miui/player/plugin/onlinemusic2/Channel;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;

    iget-object v1, v1, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->getUrlForChannel(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoveKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->getRemoveKey()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveKey()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public needCache()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onCompleted(Lcom/miui/player/plugin/onlinemusic2/AudioList;Z)V
    .locals 9
    .parameter "value"
    .parameter "finalValue"

    .prologue
    const/4 v3, 0x0

    .line 124
    if-nez p2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ProgressDialog;

    .line 129
    .local v8, dialog:Landroid/app/ProgressDialog;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :cond_2
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mChannel:Lcom/miui/player/plugin/onlinemusic2/Channel;

    iget-object v4, v4, Lcom/miui/player/plugin/onlinemusic2/Channel;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;

    iget-object v6, v4, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mTitle:Ljava/lang/String;

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    .line 143
    .local v7, adapter:Landroid/widget/BaseAdapter;
    if-eqz v7, :cond_0

    .line 144
    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 147
    .end local v7           #adapter:Landroid/widget/BaseAdapter;
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->mContext:Landroid/content/Context;

    const v1, 0x7f090089

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    check-cast p1, Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/fragment/ChannelListFragment$AudioListRequest;->onCompleted(Lcom/miui/player/plugin/onlinemusic2/AudioList;Z)V

    return-void
.end method

.method public onRemoved()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
