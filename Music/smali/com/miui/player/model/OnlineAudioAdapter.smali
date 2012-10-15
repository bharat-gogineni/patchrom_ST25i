.class public Lcom/miui/player/model/OnlineAudioAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineAudioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusArr:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, batchSelection:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 41
    return-void
.end method

.method private getDownloadStatus(Ljava/util/List;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 190
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v1, 0x0

    .line 159
    .local v1, alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v15, "mp3"

    invoke-static {v15}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 160
    .local v6, dir:Ljava/io/File;
    if-eqz v6, :cond_2

    .line 161
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 162
    .local v5, childs:[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 163
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v15, v5

    invoke-direct {v1, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 164
    .restart local v1       #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v4, v5

    .local v4, arr$:[Ljava/io/File;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v12, :cond_2

    aget-object v7, v4, v9

    .line 165
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 169
    .end local v4           #arr$:[Ljava/io/File;
    .end local v5           #childs:[Ljava/io/File;
    .end local v7           #f:Ljava/io/File;
    .end local v9           #i$:I
    .end local v12           #len$:I
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 170
    .local v13, size:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    array-length v15, v15

    if-eq v15, v13, :cond_4

    .line 171
    :cond_3
    new-array v15, v13, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    .line 173
    :cond_4
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v13, :cond_0

    .line 174
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 175
    .local v11, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    invoke-virtual {v11}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v15}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v10}, Lcom/miui/player/network/DownloadInfoManager;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    const/16 v16, 0x1

    aput v16, v15, v8

    .line 173
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v11}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, tr:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, ar:Ljava/lang/String;
    const-string v15, "mp3"

    invoke-static {v14, v3, v15}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, appointName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 184
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    const/16 v16, 0x2

    aput v16, v15, v8

    goto :goto_2

    .line 186
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    const/16 v16, 0x0

    aput v16, v15, v8

    goto :goto_2
.end method


# virtual methods
.method public getAudioList()Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineAudioAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/player/plugin/onlinemusic2/Audio;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    invoke-virtual {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Audio;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineAudioAdapter;->getItem(I)Lcom/miui/player/plugin/onlinemusic2/Audio;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    move-object/from16 v10, p2

    .line 73
    .local v10, view:Landroid/view/View;
    if-nez v10, :cond_0

    .line 74
    iget-object v11, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03003f

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 77
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;

    .line 78
    .local v9, vh:Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;
    if-nez v9, :cond_1

    .line 79
    new-instance v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;

    .end local v9           #vh:Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;
    invoke-direct {v9, p0, v10}, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;-><init>(Lcom/miui/player/model/OnlineAudioAdapter;Landroid/view/View;)V

    .line 80
    .restart local v9       #vh:Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;
    invoke-virtual {v10, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineAudioAdapter;->getItem(I)Lcom/miui/player/plugin/onlinemusic2/Audio;

    move-result-object v4

    .line 84
    .local v4, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    iget-object v11, v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->trackNameText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v11, v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->artistNameText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, isPlayingItem:Z
    const/4 v1, 0x0

    .line 89
    .local v1, isBuffering:Z
    const/4 v2, 0x0

    .line 92
    .local v2, isPlaying:Z
    :try_start_0
    sget-object v6, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 94
    .local v6, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v6, :cond_2

    .line 95
    invoke-virtual {v4}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 96
    invoke-interface {v6}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 97
    invoke-interface {v6}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    .end local v6           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :cond_2
    :goto_0
    iget-object v5, v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 103
    .local v5, iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_6

    .line 104
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    if-nez v2, :cond_3

    if-eqz v1, :cond_5

    .line 107
    :cond_3
    const v11, 0x7f020057

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :goto_1
    iget-object v11, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v11}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v4}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 117
    iget-object v11, v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :goto_2
    iget-object v11, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mStatusArr:[I

    aget v7, v11, p1

    .line 123
    .local v7, status:I
    iget-object v8, v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    .line 124
    .local v8, text:Landroid/widget/TextView;
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v11, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v11, v10, p1}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 126
    const/4 v11, 0x2

    if-ne v7, v11, :cond_8

    .line 127
    const v11, 0x7f090075

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_4
    :goto_3
    return-object v10

    .line 109
    .end local v7           #status:I
    .end local v8           #text:Landroid/widget/TextView;
    :cond_5
    const v11, 0x7f020055

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 113
    :cond_6
    const/4 v11, 0x4

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 119
    :cond_7
    iget-object v11, v9, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 129
    .restart local v7       #status:I
    .restart local v8       #text:Landroid/widget/TextView;
    :cond_8
    const/4 v11, 0x1

    if-ne v7, v11, :cond_4

    .line 130
    const v11, 0x7f090076

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 99
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v7           #status:I
    .end local v8           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAudioList(Lcom/miui/player/plugin/onlinemusic2/AudioList;)V
    .locals 1
    .parameter "audioList"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .line 45
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/player/model/OnlineAudioAdapter;->getDownloadStatus(Ljava/util/List;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineAudioAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public updateDownloadStatus()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/player/model/OnlineAudioAdapter;->getDownloadStatus(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineAudioAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
