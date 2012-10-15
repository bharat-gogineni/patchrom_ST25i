.class public Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BookmarkPhraseExpandableListAdapter.java"


# instance fields
.field private mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/android/mms/ui/PhraseListAdapter;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    .line 27
    new-instance v0, Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/PhraseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/BookmarkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/PhraseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 94
    :goto_0
    return-wide v0

    .line 91
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/BookmarkListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 94
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildType(II)I
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 128
    if-nez p1, :cond_2

    .line 129
    if-eqz p4, :cond_1

    instance-of v1, p4, Lcom/android/mms/ui/PhraseListItem;

    if-eqz v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/mms/ui/PhraseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v1, p2, v0, p5}, Lcom/android/mms/ui/PhraseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 135
    if-eqz p4, :cond_3

    instance-of v1, p4, Lcom/android/mms/ui/MessageListItem;

    if-eqz v1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/mms/ui/BookmarkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v1, p2, v0, p5}, Lcom/android/mms/ui/BookmarkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/PhraseListAdapter;->getCount()I

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 106
    if-nez p3, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040004

    invoke-virtual {v2, v3, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, v:Landroid/view/View;
    :goto_0
    const v2, 0x7f10000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, title:Landroid/widget/TextView;
    if-nez p1, :cond_2

    .line 115
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0157

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/PhraseListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    :goto_1
    return-object v1

    .line 109
    .end local v0           #title:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    move-object v1, p3

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .line 117
    .restart local v0       #title:Landroid/widget/TextView;
    :cond_2
    if-ne p1, v4, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0152

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/BookmarkListAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/PhraseListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public load(Z)V
    .locals 1
    .parameter "isPickerMode"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;->load(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkListAdapter;->load()V

    .line 35
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/PhraseListAdapter;->notifyDataSetInvalidated()V

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 154
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 167
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 172
    return-void
.end method
