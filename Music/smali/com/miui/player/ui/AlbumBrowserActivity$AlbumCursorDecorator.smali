.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumCursorDecorator;
.super Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumCursorDecorator"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor$CursorConverter;Z)V
    .locals 1
    .parameter "converter"
    .parameter "hasHeader"

    .prologue
    .line 299
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 300
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decorate(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 304
    iget v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumCursorDecorator;->mHeaderCount:I

    if-lez v2, :cond_0

    .line 305
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->makeSpecialCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 306
    .local v1, header:Landroid/database/Cursor;
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p1
    .local v0, cursor:Landroid/database/Cursor;
    move-object p1, v0

    .line 308
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #header:Landroid/database/Cursor;
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->decorate(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method
