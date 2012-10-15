.class public Lcom/miui/player/model/BillListAdapter;
.super Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;
.source "BillListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/BillListAdapter$PreviewHolder;,
        Lcom/miui/player/model/BillListAdapter$ViewHolder;,
        Lcom/miui/player/model/BillListAdapter$BillResponser;,
        Lcom/miui/player/model/BillListAdapter$BillDetailRequester;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Bill;",
        "Lcom/miui/player/plugin/onlinemusic2/BillList;",
        ">;"
    }
.end annotation


# static fields
.field static final PREVIEW_ID_ARR:[I

.field static sBillDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sBilllistCache:Lcom/miui/player/plugin/onlinemusic2/BillList;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mRequester:Lcom/miui/player/model/BillListAdapter$BillDetailRequester;

.field private final mResponser:Lcom/miui/player/model/BillListAdapter$BillResponser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/miui/player/model/BillListAdapter;->sBilllistCache:Lcom/miui/player/plugin/onlinemusic2/BillList;

    .line 23
    sput-object v0, Lcom/miui/player/model/BillListAdapter;->sBillDetailList:Ljava/util/List;

    .line 147
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    return-void

    :array_0
    .array-data 0x4
        0x43t 0x0t 0xct 0x7ft
        0x44t 0x0t 0xct 0x7ft
        0x45t 0x0t 0xct 0x7ft
        0x46t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/model/BillListAdapter$BillDetailRequester;)V
    .locals 1
    .parameter "context"
    .parameter "requester"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;-><init>()V

    .line 56
    new-instance v0, Lcom/miui/player/model/BillListAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/player/model/BillListAdapter$1;-><init>(Lcom/miui/player/model/BillListAdapter;)V

    iput-object v0, p0, Lcom/miui/player/model/BillListAdapter;->mResponser:Lcom/miui/player/model/BillListAdapter$BillResponser;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/BillListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/miui/player/model/BillListAdapter;->mRequester:Lcom/miui/player/model/BillListAdapter$BillDetailRequester;

    .line 40
    sget-object v0, Lcom/miui/player/model/BillListAdapter;->sBilllistCache:Lcom/miui/player/plugin/onlinemusic2/BillList;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/miui/player/model/BillListAdapter;->sBilllistCache:Lcom/miui/player/plugin/onlinemusic2/BillList;

    invoke-virtual {p0, v0}, Lcom/miui/player/model/BillListAdapter;->updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;)Z

    .line 43
    :cond_0
    return-void
.end method

.method static bindDetailList(Lcom/miui/player/plugin/onlinemusic2/BillList;Ljava/util/List;)V
    .locals 6
    .parameter "bl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlinemusic2/BillList;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, detailList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;"
    iget-object v5, p0, Lcom/miui/player/plugin/onlinemusic2/BillList;->mContent:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/Bill;

    .line 77
    .local v1, bill:Lcom/miui/player/plugin/onlinemusic2/Bill;
    iget-object v5, v1, Lcom/miui/player/plugin/onlinemusic2/Bill;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;

    iget-object v0, v5, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mId:Ljava/lang/String;

    .line 79
    .local v0, bid:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 80
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;

    iget-object v5, v5, Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;->mType:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;

    iput-object v5, v1, Lcom/miui/player/plugin/onlinemusic2/Bill;->mBillDetail:Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;

    .line 82
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iput-object v5, v1, Lcom/miui/player/plugin/onlinemusic2/Bill;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    goto :goto_0

    .line 86
    .end local v0           #bid:Ljava/lang/String;
    .end local v1           #bill:Lcom/miui/player/plugin/onlinemusic2/Bill;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;"
    :cond_2
    return-void
.end method

.method private getRequestIdList()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 46
    iget-object v6, p0, Lcom/miui/player/model/BillListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v6, Lcom/miui/player/plugin/onlinemusic2/BillList;

    iget-object v1, v6, Lcom/miui/player/plugin/onlinemusic2/BillList;->mContent:Ljava/util/List;

    .line 47
    .local v1, bl:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Bill;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 48
    .local v5, ids:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 49
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Bill;

    .line 50
    .local v0, bill:Lcom/miui/player/plugin/onlinemusic2/Bill;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    iget-object v6, v0, Lcom/miui/player/plugin/onlinemusic2/Bill;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;

    iget-object v6, v6, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mId:Ljava/lang/String;

    aput-object v6, v5, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 53
    .end local v0           #bill:Lcom/miui/player/plugin/onlinemusic2/Bill;
    :cond_0
    return-object v5
.end method

.method private setPreviewItem(ILandroid/view/View;Lcom/miui/player/model/BillListAdapter$PreviewHolder;Lcom/miui/player/plugin/onlinemusic2/Audio;)V
    .locals 3
    .parameter "num"
    .parameter "pi"
    .parameter "ph"
    .parameter "audio"

    .prologue
    .line 135
    iget-object v1, p3, Lcom/miui/player/model/BillListAdapter$PreviewHolder;->mTextViewNum:Landroid/widget/TextView;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p3, Lcom/miui/player/model/BillListAdapter$PreviewHolder;->mTextViewTrack:Landroid/widget/TextView;

    iget-object v2, p4, Lcom/miui/player/plugin/onlinemusic2/Audio;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;

    iget-object v2, v2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p4, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p4, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iget-object v0, v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistName:Ljava/lang/String;

    .line 144
    .local v0, artist:Ljava/lang/String;
    :goto_0
    iget-object v1, p3, Lcom/miui/player/model/BillListAdapter$PreviewHolder;->mTextViewArtist:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 141
    .end local v0           #artist:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #artist:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 105
    move-object v6, p2

    .line 106
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_0

    .line 107
    iget-object v7, p0, Lcom/miui/player/model/BillListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000f

    invoke-virtual {v7, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 108
    new-instance v7, Lcom/miui/player/model/BillListAdapter$ViewHolder;

    invoke-direct {v7, v6}, Lcom/miui/player/model/BillListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/player/model/BillListAdapter$ViewHolder;

    .line 112
    .local v5, vh:Lcom/miui/player/model/BillListAdapter$ViewHolder;
    iget-object v7, p0, Lcom/miui/player/model/BillListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v7, Lcom/miui/player/plugin/onlinemusic2/BillList;

    invoke-virtual {v7, p1}, Lcom/miui/player/plugin/onlinemusic2/BillList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/Bill;

    .line 113
    .local v1, bill:Lcom/miui/player/plugin/onlinemusic2/Bill;
    iget-object v7, v5, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/miui/player/plugin/onlinemusic2/Bill;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;

    iget-object v8, v8, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v7, v1, Lcom/miui/player/plugin/onlinemusic2/Bill;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/miui/player/plugin/onlinemusic2/Bill;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v0, v7, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    .line 116
    .local v0, al:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    :cond_1
    const/4 v2, 0x0

    .line 118
    .local v2, i:I
    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sget-object v8, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 120
    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 121
    iget-object v7, v5, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviews:[Landroid/view/View;

    aget-object v4, v7, v2

    .line 122
    .local v4, v:Landroid/view/View;
    iget-object v7, v5, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviewHolders:[Lcom/miui/player/model/BillListAdapter$PreviewHolder;

    aget-object v8, v7, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlinemusic2/Audio;

    invoke-direct {p0, v2, v4, v8, v7}, Lcom/miui/player/model/BillListAdapter;->setPreviewItem(ILandroid/view/View;Lcom/miui/player/model/BillListAdapter$PreviewHolder;Lcom/miui/player/plugin/onlinemusic2/Audio;)V

    .line 123
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v3           #len:I
    .end local v4           #v:Landroid/view/View;
    :cond_2
    :goto_1
    sget-object v7, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 128
    iget-object v7, v5, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviews:[Landroid/view/View;

    aget-object v7, v7, v2

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_3
    return-object v6
.end method

.method protected onDataChanged()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/miui/player/model/BillListAdapter;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/miui/player/model/BillListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/BillList;

    sput-object v1, Lcom/miui/player/model/BillListAdapter;->sBilllistCache:Lcom/miui/player/plugin/onlinemusic2/BillList;

    .line 92
    sget-object v1, Lcom/miui/player/model/BillListAdapter;->sBillDetailList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/miui/player/model/BillListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/BillList;

    sget-object v2, Lcom/miui/player/model/BillListAdapter;->sBillDetailList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/miui/player/model/BillListAdapter;->bindDetailList(Lcom/miui/player/plugin/onlinemusic2/BillList;Ljava/util/List;)V

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/model/BillListAdapter;->getRequestIdList()[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/miui/player/model/BillListAdapter;->mRequester:Lcom/miui/player/model/BillListAdapter$BillDetailRequester;

    sget-object v2, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/miui/player/model/BillListAdapter;->mResponser:Lcom/miui/player/model/BillListAdapter$BillResponser;

    invoke-interface {v1, v0, v2, v3}, Lcom/miui/player/model/BillListAdapter$BillDetailRequester;->request([Ljava/lang/String;ILcom/miui/player/model/BillListAdapter$BillResponser;)V

    .line 101
    .end local v0           #list:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method respose(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;"
    if-eqz p1, :cond_0

    .line 66
    sput-object p1, Lcom/miui/player/model/BillListAdapter;->sBillDetailList:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/miui/player/model/BillListAdapter;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/player/model/BillListAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/BillList;

    invoke-static {v0, p1}, Lcom/miui/player/model/BillListAdapter;->bindDetailList(Lcom/miui/player/plugin/onlinemusic2/BillList;Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lcom/miui/player/model/BillListAdapter;->notifyDataSetChanged()V

    .line 73
    :cond_0
    return-void
.end method
