.class public Lcom/android/mms/ui/FestivalSmsListAdapter;
.super Landroid/widget/CursorAdapter;
.source "FestivalSmsListAdapter.java"


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "categoryName"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 25
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mCategoryName:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method private internalRequery()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_MESSAGES:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "body"

    aput-object v3, v2, v4

    const-string v3, "category_name=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mCategoryName:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    if-eqz v6, :cond_0

    .line 56
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    .end local v7           #i:I
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FestivalSmsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 61
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 148
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, body:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 105
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemMessage(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 92
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getCount()I

    move-result v0

    .line 155
    .local v0, count:I
    if-ne v1, v0, :cond_1

    .line 156
    const/4 v1, 0x4

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    if-nez p1, :cond_2

    .line 158
    const/4 v1, 0x2

    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_3

    .line 160
    const/4 v1, 0x3

    goto :goto_0

    .line 161
    :cond_3
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x5

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 109
    iget-object v8, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040014

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 110
    .local v6, view:Landroid/view/View;
    const v8, 0x7f100043

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, bodyView:Landroid/view/View;
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemViewType(I)I

    move-result v7

    .line 115
    .local v7, viewType:I
    packed-switch v7, :pswitch_data_0

    .line 126
    const v0, 0x6020185

    .line 129
    .local v0, backgroundResId:I
    :goto_0
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 132
    .local v3, left:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 133
    .local v5, top:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 134
    .local v4, right:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 135
    .local v2, bottom:I
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    .line 136
    const v8, 0x7f020052

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    :goto_1
    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 143
    return-object v6

    .line 117
    .end local v0           #backgroundResId:I
    .end local v2           #bottom:I
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    :pswitch_0
    const v0, 0x6020181

    .line 118
    .restart local v0       #backgroundResId:I
    goto :goto_0

    .line 120
    .end local v0           #backgroundResId:I
    :pswitch_1
    const v0, 0x6020189

    .line 121
    .restart local v0       #backgroundResId:I
    goto :goto_0

    .line 123
    .end local v0           #backgroundResId:I
    :pswitch_2
    const v0, 0x602018d

    .line 124
    .restart local v0       #backgroundResId:I
    goto :goto_0

    .line 138
    .restart local v2       #bottom:I
    .restart local v3       #left:I
    .restart local v4       #right:I
    .restart local v5       #top:I
    :cond_0
    const v8, 0x7f020056

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requery()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->internalRequery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0130

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 68
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/FestivalSmsProvider;->URI_RESET_DATABASE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 70
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->internalRequery()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    .line 72
    .local v1, e2:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FestivalSmsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public shuffle()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method
