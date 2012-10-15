.class public Lcom/miui/player/ui/TrackPickerForPlaylist;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "TrackPickerForPlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field private mCommitAdd:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mPlaylistId:J

.field private mSelectAll:Landroid/widget/TextView;

.field private mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/TrackPickerForPlaylist;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    return-object v0
.end method

.method public getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 170
    const-string v1, "title != \'\'"

    invoke-static {p0, v1}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, where:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->TRACK_PICKER_COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    invoke-static {}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;

    move-result-object v6

    .line 174
    .local v6, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v7, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;

    const/4 v1, 0x0

    invoke-direct {v7, v6, v1}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 176
    .local v7, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v1, v7, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v1
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 8
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 187
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    if-nez v5, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_3

    move v0, v3

    .line 192
    .local v0, first:Z
    :goto_1
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v5, p2}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 193
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 198
    if-eqz v0, :cond_2

    .line 199
    sget-object v5, Lcom/miui/player/ui/TrackPickerForPlaylist;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v6, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    .line 201
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v5}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getCount()I

    move-result v1

    .line 202
    .local v1, q:I
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->updateBottomView()V

    goto :goto_0

    .end local v0           #first:Z
    .end local v1           #q:I
    .end local v2           #text:Ljava/lang/String;
    :cond_3
    move v0, v4

    .line 191
    goto :goto_1
.end method

.method public needBindToService()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->isSelectAll()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->selectAll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->updateBottomView()V

    .line 104
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_1
    :goto_1
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->clearSelectAudioList()V

    .line 100
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "playlist_id"

    iget-wide v2, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mPlaylistId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const-string v1, "track_ids"

    iget-object v2, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getSelectAudioList()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 109
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->finish()V

    goto :goto_1
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mPlaylistId:J

    .line 45
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getListView()Landroid/widget/AbsListView;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 48
    .local v11, lv:Landroid/widget/ListView;
    iput-object v11, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mListView:Landroid/widget/ListView;

    .line 49
    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 51
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lmiui/widget/AlphabetFastIndexer;

    .line 52
    .local v9, fi:Lmiui/widget/AlphabetFastIndexer;
    invoke-virtual {v9, v11}, Lmiui/widget/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lmiui/widget/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    new-instance v0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030043

    iget-wide v4, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mPlaylistId:J

    const/4 v6, 0x0

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "title"

    aput-object v8, v7, v2

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const v12, 0x1020014

    aput v12, v8, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/TrackPickerForPlaylist;IJLandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    const v0, 0x6030020

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 68
    .local v10, commitView:Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const v0, 0x60b002f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    const v1, 0x7f0900d1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x60b002c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x60b002b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v0, 0x60b002e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    sget-object v0, Lcom/miui/player/ui/TrackPickerForPlaylist;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 119
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 125
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iput-object v2, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    .line 127
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 84
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0c00b3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 85
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1, p4, p5}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->toggle(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->updateBottomView()V

    .line 89
    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    .line 138
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBottomView()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v5}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getSelectedSize()I

    move-result v0

    .line 146
    .local v0, count:I
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v5}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getMaxSelectableCount()I

    move-result v2

    .line 147
    .local v2, maxSeletable:I
    const v5, 0x7f0900d1

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, formatCount:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    if-lez v2, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    if-ne v0, v2, :cond_2

    .line 153
    iget-object v3, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v5, 0x7f090004

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :goto_1
    iget-object v3, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v3}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->isSelectAll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    if-nez v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    :cond_0
    return-void

    :cond_1
    move v3, v4

    .line 149
    goto :goto_0

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v5, 0x7f090003

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
