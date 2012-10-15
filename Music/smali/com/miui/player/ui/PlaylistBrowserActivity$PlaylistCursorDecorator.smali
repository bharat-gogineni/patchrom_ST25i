.class Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;
.super Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistCursorDecorator"
.end annotation


# instance fields
.field private final mFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

.field private final mHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor$CursorConverter;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)V
    .locals 1
    .parameter "converter"
    .parameter "headers"
    .parameter "footers"

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 539
    iput-object p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .line 540
    iput-object p3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    .line 541
    return-void
.end method

.method private static mergedCursor(Landroid/database/Cursor;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)Landroid/database/Cursor;
    .locals 9
    .parameter "c"
    .parameter "headers"
    .parameter "footers"

    .prologue
    .line 555
    if-nez p0, :cond_0

    .line 556
    const/4 p0, 0x0

    .line 572
    .end local p0
    :goto_0
    return-object p0

    .line 558
    .restart local p0
    :cond_0
    instance-of v6, p0, Landroid/database/MergeCursor;

    if-eqz v6, :cond_1

    .line 560
    const-string v6, "PlaylistBrowserActivity"

    const-string v7, "Already wrapped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :cond_1
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 564
    .local v2, headerCursor:Landroid/database/MatrixCursor;
    move-object v0, p1

    .local v0, arr$:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 565
    .local v4, item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    invoke-virtual {v4}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->toRecord()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 568
    .end local v4           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 569
    .local v1, footerCursor:Landroid/database/MatrixCursor;
    move-object v0, p2

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 570
    .restart local v4       #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    invoke-virtual {v4}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->toRecord()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 572
    .end local v4           #item:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
    :cond_3
    new-instance v6, Landroid/database/MergeCursor;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v6

    goto :goto_0
.end method


# virtual methods
.method public decorate(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->decorate(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    .line 547
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mHeaders:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mFooters:[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;

    invoke-static {p1, v0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistCursorDecorator;->mergedCursor(Landroid/database/Cursor;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;[Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;)Landroid/database/Cursor;

    move-result-object p1

    .line 551
    :cond_0
    return-object p1
.end method
