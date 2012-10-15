.class public Lcom/miui/player/model/ChannelListAdapter;
.super Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/ChannelListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Channel;",
        "Lcom/miui/player/plugin/onlinemusic2/ChannelList;",
        ">;"
    }
.end annotation


# static fields
.field private static sChannelListCache:Lcom/miui/player/plugin/onlinemusic2/ChannelList;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/model/ChannelListAdapter;->sChannelListCache:Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/ChannelListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    sget-object v0, Lcom/miui/player/model/ChannelListAdapter;->sChannelListCache:Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/miui/player/model/ChannelListAdapter;->sChannelListCache:Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    invoke-virtual {p0, v0}, Lcom/miui/player/model/ChannelListAdapter;->updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;)Z

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 49
    move-object v4, p2

    .line 50
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 51
    iget-object v5, p0, Lcom/miui/player/model/ChannelListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030012

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 52
    new-instance v5, Lcom/miui/player/model/ChannelListAdapter$ViewHolder;

    invoke-direct {v5, v4}, Lcom/miui/player/model/ChannelListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v5, p0, Lcom/miui/player/model/ChannelListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    invoke-virtual {v5, p1}, Lcom/miui/player/plugin/onlinemusic2/ChannelList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Channel;

    .line 56
    .local v0, channel:Lcom/miui/player/plugin/onlinemusic2/Channel;
    iget-object v5, v0, Lcom/miui/player/plugin/onlinemusic2/Channel;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;

    iget-object v2, v5, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mTitle:Ljava/lang/String;

    .line 57
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/model/ChannelListAdapter$ViewHolder;

    .line 58
    .local v3, vh:Lcom/miui/player/model/ChannelListAdapter$ViewHolder;
    iget-object v5, v3, Lcom/miui/player/model/ChannelListAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, v3, Lcom/miui/player/model/ChannelListAdapter$ViewHolder;->mImageViewIndicator:Landroid/widget/ImageView;

    .line 61
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    const v5, 0x7f020057

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :goto_0
    return-object v4

    .line 65
    :cond_1
    const v5, 0x7f020055

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDataChanged()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/player/model/ChannelListAdapter;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/player/model/ChannelListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    sput-object v0, Lcom/miui/player/model/ChannelListAdapter;->sChannelListCache:Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    .line 35
    :cond_0
    return-void
.end method
