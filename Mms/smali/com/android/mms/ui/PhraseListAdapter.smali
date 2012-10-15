.class public Lcom/android/mms/ui/PhraseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhraseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPickerMode:Z

.field private mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    .line 34
    iput-object p1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mContext:Landroid/content/Context;

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/PhraseListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addPhrase(Ljava/lang/String;)V
    .locals 1
    .parameter "phrase"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->addPhrase(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/PhraseListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public deletePhrase(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    if-nez v0, :cond_2

    .line 146
    if-eqz p1, :cond_0

    .line 149
    add-int/lit8 p1, p1, -0x1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->deletePhrase(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/PhraseListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v1, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->getCount()I

    move-result v0

    .line 51
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    if-nez v1, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    if-nez v1, :cond_2

    .line 65
    if-eqz p1, :cond_0

    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->getPhrase(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f1000b1

    const v7, 0x7f1000af

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 81
    iget-object v3, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    if-nez v3, :cond_4

    .line 86
    if-nez p1, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/mms/ui/PhraseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040039

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, newPhrase:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/PhraseListAdapter;->isFull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 97
    .end local v1           #newPhrase:Landroid/view/View;
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 102
    :cond_4
    if-nez p2, :cond_5

    .line 103
    new-instance v2, Lcom/android/mms/ui/PhraseListItem;

    iget-object v3, p0, Lcom/android/mms/ui/PhraseListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/mms/ui/PhraseListItem;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, v:Landroid/view/View;
    :goto_1
    instance-of v3, v2, Lcom/android/mms/ui/PhraseListItem;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 109
    check-cast v0, Lcom/android/mms/ui/PhraseListItem;

    .line 110
    .local v0, listViewItem:Lcom/android/mms/ui/PhraseListItem;
    iget-object v3, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->getPhrase(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/PhraseListItem;->bind(Ljava/lang/String;)V

    move-object v1, v2

    .line 111
    goto :goto_0

    .line 105
    .end local v0           #listViewItem:Lcom/android/mms/ui/PhraseListItem;
    .end local v2           #v:Landroid/view/View;
    :cond_5
    move-object v2, p2

    .restart local v2       #v:Landroid/view/View;
    goto :goto_1
.end method

.method public isFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->getCount()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNewPhraseItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-boolean v1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public load(Z)V
    .locals 1
    .parameter "isPickerMode"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    .line 40
    new-instance v0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;-><init>(Lcom/android/mms/ui/PhraseListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    .line 41
    invoke-virtual {p0}, Lcom/android/mms/ui/PhraseListAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public setPhrase(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "phrase"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mPickerMode:Z

    if-nez v0, :cond_2

    .line 122
    if-eqz p1, :cond_0

    .line 125
    add-int/lit8 p1, p1, -0x1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter;->mSmsPhraseData:Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->setPhrase(ILjava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/mms/ui/PhraseListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
