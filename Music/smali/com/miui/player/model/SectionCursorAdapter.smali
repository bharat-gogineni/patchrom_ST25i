.class public Lcom/miui/player/model/SectionCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SectionCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final mFastScroller:Lmiui/widget/AlphabetFastIndexer;

.field private mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

.field private final mTitleCol:Ljava/lang/String;

.field private mTitleIdx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"
    .parameter "titleCol"

    .prologue
    .line 20
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleIdx:I

    .line 21
    iput-object p6, p0, Lcom/miui/player/model/SectionCursorAdapter;->mFastScroller:Lmiui/widget/AlphabetFastIndexer;

    .line 22
    iput-object p7, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleCol:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 27
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    if-nez v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mFastScroller:Lmiui/widget/AlphabetFastIndexer;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleIdx:I

    if-lez v2, :cond_0

    .line 32
    iget v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleIdx:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, keyword:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mFastScroller:Lmiui/widget/AlphabetFastIndexer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/AlphabetFastIndexer;->drawThumb(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 45
    instance-of v2, p1, Lcom/miui/player/model/SectionCursor;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/miui/player/model/SectionCursor;

    .line 47
    .local v0, c:Lcom/miui/player/model/SectionCursor;
    invoke-virtual {v0}, Lcom/miui/player/model/SectionCursor;->getSectionInfo()Lcom/miui/player/model/SectionCursor$SectionInfo;

    move-result-object v1

    .line 48
    .local v1, info:Lcom/miui/player/model/SectionCursor$SectionInfo;
    new-instance v2, Lcom/miui/player/model/AlphabetSectionIndexer;

    iget-object v3, v1, Lcom/miui/player/model/SectionCursor$SectionInfo;->mTitles:[Ljava/lang/String;

    iget-object v4, v1, Lcom/miui/player/model/SectionCursor$SectionInfo;->mCounts:[Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/miui/player/model/AlphabetSectionIndexer;-><init>([Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    .line 49
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleCol:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleIdx:I

    .line 54
    .end local v0           #c:Lcom/miui/player/model/SectionCursor;
    .end local v1           #info:Lcom/miui/player/model/SectionCursor$SectionInfo;
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    .line 52
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleIdx:I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/AlphabetSectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/AlphabetSectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/model/AlphabetSectionIndexer;

    invoke-virtual {v0}, Lcom/miui/player/model/AlphabetSectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
