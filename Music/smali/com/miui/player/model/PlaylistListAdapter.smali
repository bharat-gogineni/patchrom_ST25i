.class public Lcom/miui/player/model/PlaylistListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "PlaylistListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/PlaylistListAdapter$PlaylistElementConverter;
    }
.end annotation


# static fields
.field public static final PLAYLIST_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

.field private final mContentColor:I

.field private mIdIdx:I

.field private final mOperationColor:I

.field private final mResources:Landroid/content/res/Resources;

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/PlaylistListAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;)V
    .locals 8
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"

    .prologue
    .line 49
    const-string v7, "name"

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    .line 51
    invoke-virtual {p2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mResources:Landroid/content/res/Resources;

    .line 52
    invoke-direct {p0, p4}, Lcom/miui/player/model/PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mContentColor:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mOperationColor:I

    .line 56
    return-void
.end method

.method public static createCursorConverter()Lcom/miui/player/model/SectionCursor$CursorConverter;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;

    new-instance v1, Lcom/miui/player/model/PlaylistListAdapter$PlaylistElementConverter;

    invoke-direct {v1}, Lcom/miui/player/model/PlaylistListAdapter$PlaylistElementConverter;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;-><init>(Lcom/miui/player/model/SectionCursor$ElementConverter;I)V

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mTitleIdx:I

    .line 61
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mIdIdx:I

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x0

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 68
    iget v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 70
    .local v1, id:J
    const v7, 0x7f0c0069

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 71
    .local v3, iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v7, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->findPresetItem(J)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    move-result-object v6

    .line 72
    .local v6, playlist:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    if-eqz v6, :cond_0

    .line 73
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget v7, v6, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mIconResId:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    :goto_0
    const v7, 0x7f0c007d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 80
    .local v4, nameText:Landroid/widget/TextView;
    const v7, 0x7f0c0091

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 82
    .local v5, numText:Landroid/widget/TextView;
    iget v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-wide/16 v7, -0x4

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 84
    iget v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mContentColor:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    long-to-int v8, v1

    invoke-virtual {v7, v8}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPresetRecordCount(I)I

    move-result v0

    .line 87
    .local v0, count:I
    iget-object v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mResources:Landroid/content/res/Resources;

    const/high16 v8, 0x7f0a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v0, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v0           #count:I
    :goto_1
    return-void

    .line 76
    .end local v4           #nameText:Landroid/widget/TextView;
    .end local v5           #numText:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 89
    .restart local v4       #nameText:Landroid/widget/TextView;
    .restart local v5       #numText:Landroid/widget/TextView;
    :cond_1
    iget v7, p0, Lcom/miui/player/model/PlaylistListAdapter;->mOperationColor:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 p1, 0x0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/PlaylistListAdapter;->mActivity:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/player/model/PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 104
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 105
    return-void
.end method
