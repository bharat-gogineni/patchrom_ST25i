.class public Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FestivalSmsCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$1;,
        Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBannerImage:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mFestivalCategoryPosition:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    .line 33
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method private internalRequery()V
    .locals 19

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_CATEGORIES:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sms_count"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    .line 48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_FESTIVAL_INFO:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "banner"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "begin"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "end"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "category_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 59
    .local v14, festivalInfoCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 68
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 72
    .local v8, begin:J
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 73
    .local v12, end:J
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, categoryUrl:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 78
    .local v7, bannerBlob:[B
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 82
    .local v17, time:J
    cmp-long v1, v17, v8

    if-ltz v1, :cond_1

    cmp-long v1, v17, v12

    if-gtz v1, :cond_1

    .line 85
    if-eqz v10, :cond_1

    .line 89
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 91
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    .line 97
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 101
    new-instance v16, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    .local v16, stream:Ljava/io/ByteArrayInputStream;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v1, 0xa0

    iput v1, v15, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, v15, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "banner"

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0, v3, v15}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mBannerImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 75
    .end local v7           #bannerBlob:[B
    .end local v8           #begin:J
    .end local v10           #categoryUrl:Ljava/lang/String;
    .end local v12           #end:J
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #stream:Ljava/io/ByteArrayInputStream;
    .end local v17           #time:J
    :catch_0
    move-exception v11

    .line 78
    .local v11, e:Ljava/lang/Exception;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private moveCursorToPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 181
    :cond_1
    if-nez p1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 183
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    if-gt p1, v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetInvalidated()V

    .line 201
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .parameter "position"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->moveCursorToPosition(I)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 154
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 130
    .local v0, listItemView:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_1

    instance-of v3, p2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 131
    check-cast v0, Landroid/widget/LinearLayout;

    .line 132
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;

    .line 143
    .local v1, vh:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->moveCursorToPosition(I)V

    .line 144
    iget-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->smsCountView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a012a

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->categoryBodyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mFestivalCategoryPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-nez p1, :cond_2

    .line 149
    iget-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->bannerView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mBannerImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->bannerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 134
    .end local v1           #vh:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040011

    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #listItemView:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    .restart local v0       #listItemView:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$1;)V

    .line 137
    .restart local v1       #vh:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->categoryBodyView:Landroid/widget/TextView;

    .line 138
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->smsCountView:Landroid/widget/TextView;

    .line 139
    const v2, 0x7f10003b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->bannerView:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 152
    :cond_2
    iget-object v2, v1, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter$ViewHolder;->bannerView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public requery()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->internalRequery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0130

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/FestivalSmsProvider;->URI_RESET_DATABASE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 114
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->internalRequery()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .local v1, e2:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iput-object v5, p0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method
