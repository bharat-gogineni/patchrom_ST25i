.class public Lcom/miui/player/model/TrackPickerForPlaylistAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "TrackPickerForPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;,
        Lcom/miui/player/model/TrackPickerForPlaylistAdapter$TrackElementConverter;
    }
.end annotation


# static fields
.field public static final TRACK_PICKER_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

.field private mArtistIdx:I

.field private mAudioIdIdx:I

.field private mMaxSelectableCount:I

.field private mPlaylistId:J

.field private final mPreviousAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->TRACK_PICKER_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/TrackPickerForPlaylist;IJLandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;)V
    .locals 8
    .parameter "context"
    .parameter "activity"
    .parameter "layout"
    .parameter "playlistId"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"

    .prologue
    .line 67
    const-string v7, "title"

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    .line 68
    iput-object p2, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    .line 69
    iput-wide p4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    .line 70
    invoke-direct {p0, p6}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 71
    return-void
.end method

.method public static createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;

    new-instance v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$TrackElementConverter;

    invoke-direct {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$TrackElementConverter;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;-><init>(Lcom/miui/player/model/SectionCursor$ElementConverter;I)V

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mTitleIdx:I

    .line 76
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mArtistIdx:I

    .line 77
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mAudioIdIdx:I

    .line 79
    :cond_0
    return-void
.end method

.method private updatePrevAudioList()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, audioIdList:[J
    iget-wide v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    iget-wide v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    invoke-static {v3, v4, v5}, Lcom/miui/player/provider/PlaylistHelper;->getLocalTrackListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 184
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    .line 185
    .local v2, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v0, :cond_2

    .line 186
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 187
    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    iget-wide v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 181
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v0

    goto :goto_0

    .line 190
    .restart local v2       #list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;

    .line 99
    .local v2, vh:Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->trackName:Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mTitleIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->artistName:Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mArtistIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mAudioIdIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 103
    .local v0, audioId:J
    iget-object v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 105
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 108
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    invoke-virtual {v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 116
    const/4 p1, 0x0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/TrackPickerForPlaylist;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->updatePrevAudioList()V

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mMaxSelectableCount:I

    .line 129
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    return-void
.end method

.method public clearSelectAudioList()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 151
    return-void
.end method

.method public getMaxSelectableCount()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mMaxSelectableCount:I

    return v0
.end method

.method public getSelectAudioList()[J
    .locals 9

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 198
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 199
    sget-object v2, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 214
    :goto_0
    return-object v2

    .line 202
    :cond_0
    iget-object v6, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 203
    .local v6, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v2, v8, [J

    .line 204
    .local v2, audioList:[J
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 206
    .local v7, position:I
    const/4 v4, 0x0

    .line 207
    .local v4, index:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 208
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 209
    .local v0, audioId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 210
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput-wide v0, v2, v4

    move v4, v5

    .line 207
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 213
    .end local v0           #audioId:J
    :cond_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public getSelectedSize()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public isSelectAll()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mMaxSelectableCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;-><init>()V

    .line 86
    .local v1, vh:Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;
    const v2, 0x7f0c004a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->trackName:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0c004b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->artistName:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0c00b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 89
    iget-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method public selectAll()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 159
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 173
    :goto_0
    return v6

    .line 163
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 164
    .local v3, position:I
    iget-object v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    .line 165
    .local v4, prevList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 166
    .local v5, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 167
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 168
    .local v0, audioId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 172
    .end local v0           #audioId:J
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 173
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public toggle(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, state:Z
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 139
    .local v0, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 141
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v1, 0x1

    goto :goto_0
.end method
